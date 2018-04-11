BEGIN
DECLARE v_vehicleseries_id INT;		-- 车系ID
DECLARE v_vehicleseries_name VARCHAR(50);	-- 车系name
DECLARE v_vehicleseries_count INT;		-- 车系产生的线索数
DECLARE v_allvehicleseries_count INT;		-- 所有车系产生的线索数
DECLARE v_vehicleseries_num VARCHAR(50);	-- 车系产生的线索数的占比
DECLARE v_fetch_ok BOOLEAN;
DECLARE v_begin_date VARCHAR(20); 	-- 开始时间
DECLARE v_end_date VARCHAR(20);	-- 结束时间
DECLARE v_vehicleseries CURSOR FOR 
	SELECT v.id,v.seriesname FROM t_vehicle_series v 
WHERE v.VALID = 1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_fetch_ok = TRUE; 	
 
SET v_begin_date = CONCAT(date_format(p_i_date,'%Y-%m-01'),' 00:00:00');-- 获取当前日期所在月的第一天
SET v_end_date = CONCAT(p_i_date,' 23:59:59');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#       重复执行时删除当天数据
DELETE FROM T_SC_VEHICLESERIES_LEADS WHERE THEDATE = date_format(p_i_date,'%Y-%m-01') and REPORTTYPE =2;    
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
OPEN v_vehicleseries;v_vehicleseries_loop:LOOP FETCH v_vehicleseries INTO v_vehicleseries_id,v_vehicleseries_name;
IF v_fetch_ok THEN 
LEAVE v_vehicleseries_loop;
ELSE    
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
SET v_vehicleseries_count = (SELECT COUNT(1) FROM t_origional_leads WHERE VEHICLESERIESID = v_vehicleseries_id and CDATE>=v_begin_date AND CDATE<=v_end_date);
SET v_allvehicleseries_count = (SELECT COUNT(1) FROM t_origional_leads WHERE CDATE>=v_begin_date AND CDATE<=v_end_date);
SET v_vehicleseries_num = CONCAT(ROUND(IFNULL(v_vehicleseries_count/v_allvehicleseries_count,0)*100,0),'%');
--  
INSERT INTO T_SC_VEHICLESERIES_LEADS (VERSON, THEDATE, VEHICLESERIESID,VEHICLESERIESNAME,VEHICLESERIESCOUNT,VEHICLESERIESNUM,ALLVEHICLESERIESCOUNT,REPORTTYPE,
CDATE,UDATE)
	VALUES (0, date_format(p_i_date,'%Y-%m-01'), v_vehicleseries_id,v_vehicleseries_name,v_vehicleseries_count,v_vehicleseries_num,v_allvehicleseries_count,2,CURDATE(),CURDATE()
);
SET v_fetch_ok = 0;
END IF;
END LOOP;
CLOSE v_vehicleseries;
# 结束
SET p_o_state = 1;
END