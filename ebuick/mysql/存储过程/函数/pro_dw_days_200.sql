BEGIN
DECLARE v_sql VARCHAR(4096);		-- sql
DECLARE v_insert_sql VARCHAR(4096);	-- sql
DECLARE v_fetch_ok BOOLEAN;
DECLARE v_begin_date VARCHAR(20);	-- 开始时间
DECLARE v_end_date VARCHAR(20);		-- 结束时间
DECLARE v_create_date VARCHAR(20);	-- 创建时间
DECLARE v_baseitem_id INT;		-- 基础项ID
DECLARE v_dealer_id INT;		-- 经销商ID
DECLARE v_dealer_code varchar(50);	-- 经销商code
DECLARE v_dealer CURSOR FOR SELECT id,dealercode FROM t_dealer WHERE isopen=1 AND istest=0;
DECLARE v_baseitem CURSOR FOR SELECT id,`sqls` FROM t_as_baseitem WHERE flag = 0;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_fetch_ok = TRUE; 
SET v_create_date = p_i_date;
SET v_begin_date = DATE_FORMAT(DATE(CONCAT(YEAR(v_create_date),'-',MONTH(v_create_date),'-','01')),'%Y-%m-%d 00:00:00');
SET v_end_date = DATE_FORMAT(v_create_date,'%Y-%m-%d 23:59:59');
-- {	经销商 start
OPEN v_dealer;v_dealer_loop:LOOP FETCH v_dealer INTO v_dealer_id,v_dealer_code; -- 打开游标(经销商)
IF v_fetch_ok THEN 
LEAVE v_dealer_loop;
ELSE
-- {    基础项 start
OPEN v_baseitem;v_baseitem_loop:LOOP FETCH v_baseitem INTO v_baseitem_id,v_sql;	-- 打开游标(基础项)
IF v_fetch_ok THEN 
LEAVE v_baseitem_loop;
ELSE
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
SET v_sql = REPLACE(v_sql,'@begindate',CONCAT('''',v_begin_date,''''));
SET v_sql = REPLACE(v_sql,'@enddate',CONCAT('''',v_end_date,''''));
SET v_sql = REPLACE(v_sql,'@thedate',CONCAT('''',p_i_date,''''));
SET v_sql = REPLACE(v_sql,'@dealerid', v_dealer_id);
SET v_sql = REPLACE(v_sql,'@dealercode', CONCAT('''',v_dealer_code,''''));
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
SET v_insert_sql = CONCAT('INSERT INTO t_as_basedata(ITEMID,VAL,DEALERID,VERSON,CDATE,UDATE) VALUES (',
 	v_baseitem_id,',IFNULL((',v_sql,'),0),',v_dealer_id,',0,''',v_create_date,''',''',v_create_date,''')');
SET @v_sql = v_insert_sql;
PREPARE stmt FROM @v_sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SET v_fetch_ok = 0;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
END IF;
END LOOP;
CLOSE v_baseitem;
-- } 基础项 end
SET v_fetch_ok = 0;
END IF;
END LOOP;
CLOSE v_dealer;
-- } 经销商 end
SET p_o_count = 0;
END