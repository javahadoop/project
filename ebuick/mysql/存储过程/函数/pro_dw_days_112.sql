BEGIN
DECLARE v_dealer_id INT;		-- 经销商ID
DECLARE v_dealer_code VARCHAR(32);	-- 经销商code
DECLARE v_dealer_name VARCHAR(256);	-- 经销商name
DECLARE v_dealer_regionalid INT;		-- 经销商大区
DECLARE v_dealer_regionalname VARCHAR(16);	-- 经销商大区名称
DECLARE v_dealer_macid INT;			-- 经销商mac
DECLARE v_dealer_macname VARCHAR(64);		-- 经销商mac名称
DECLARE v_dealer_regno INT;
DECLARE v_dealer_macno INT;
DECLARE v_fetch_ok BOOLEAN;
DECLARE v_begin_date VARCHAR(20); 	-- 开始时间
DECLARE v_end_date VARCHAR(20);	-- 结束时间
DECLARE v_last_begin_date VARCHAR(20);	-- 昨天时间
DECLARE v_last_end_date VARCHAR(20);	-- 昨天结束时间
DECLARE v_today3_date VARCHAR(20);	-- 当日3点
DECLARE v_autohome_dealerid INT;	-- 汽车之家经销商ID
# declare v_bitauto_send_count int;	-- 核对下发量
DECLARE v_bitauto_check_count INT;	-- 核对接收量
DECLARE v_bitauto_receive_count INT;  -- 当日接收量
DECLARE v_bitauto_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_bitauto_extra_count_b INT;	-- 额外接收量计算值b
DECLARE v_bitauto_chaning_count INT;	-- 当日接收网络线索清洗去重量
# declare v_bitauto400_send_count int;	-- 核对下发量
DECLARE v_bitauto400_check_count INT;	-- 核对接收量
DECLARE v_bitauto400_receive_count INT;  -- 当日接收量
DECLARE v_bitauto400_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_bitauto400_extra_count_b INT;	-- 额外接收量计算值b

# declare v_pcauto_send_count int;	-- 核对下发量
DECLARE v_pcauto_check_count INT;	-- 核对接收量
DECLARE v_pcauto_receive_count INT;  -- 当日接收量
DECLARE v_pcauto_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_pcauto_extra_count_b INT;	-- 额外接收量计算值b
DECLARE v_pcauto_chaning_count INT;	-- 当日接收网络线索清洗去重量
# declare v_pcauto400_send_count int;	-- 核对下发量
DECLARE v_pcauto400_check_count INT;	-- 核对接收量
DECLARE v_pcauto400_receive_count INT;  -- 当日接收量
DECLARE v_pcauto400_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_pcauto400_extra_count_b INT;	-- 额外接收量计算值b

# declare v_xcar_send_count int;	-- 核对下发量
DECLARE v_xcar_check_count INT;	-- 核对接收量
DECLARE v_xcar_receive_count INT;  -- 当日接收量
DECLARE v_xcar_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_xcar_extra_count_b INT;	-- 额外接收量计算值b
DECLARE v_xcar_chaning_count INT;	-- 当日接收网络线索清洗去重量
# declare v_xcar400_send_count int;	-- 核对下发量
DECLARE v_xcar400_check_count INT;	-- 核对接收量
DECLARE v_xcar400_receive_count INT;  -- 当日接收量
DECLARE v_xcar400_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_xcar400_extra_count_b INT;	-- 额外接收量计算值b

# DECLARE v_autohome_send_count INT;	-- 核对下发量
DECLARE v_autohome_check_count INT; -- 核对接收量
DECLARE v_autohome_receive_count INT;  -- 当日接收量
DECLARE v_autohome_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_autohome_extra_count_b INT;	-- 额外接收量计算值b
DECLARE v_autohome_chaning_count INT;     -- 当日接收网络线索清洗去重量
DECLARE v_public_check_count INT; -- 核对接收量
DECLARE v_public_receive_count INT;  -- 当日接收量
DECLARE v_public_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_public_extra_count_b INT;	-- 额外接收量计算值b    
# DECLARE v_autohome400_send_count INT;	-- 核对下发量
DECLARE v_autohome400_check_count INT; -- 核对接收量
DECLARE v_autohome400_receive_count INT;  -- 当日接收量
DECLARE v_autohome400_extra_count_a INT;	-- 额外接收量计算值a 
DECLARE v_autohome400_extra_count_b INT;	-- 额外接收量计算值b
DECLARE v_all_chaning_count INT;	-- 网络线索清洗量
DECLARE v_doss_send_count INT ;	-- 网路线索下发量
DECLARE v_doss_receive_count INT ;	-- 网路线索接收量
DECLARE v_doss_autohome_receive_count INT;
DECLARE v_doss_bitauto_receive_count INT;
DECLARE v_doss_pcauto_receive_count INT;
DECLARE v_doss_xcar_receive_count INT;
DECLARE v_dealer CURSOR FOR 
	SELECT d.REGIONALID,r.REGIONALNAME,0 AS MACID,'' AS MACNAME,d.ID,d.DEALERCODE,d.DEALERNAME,r.SEQNO REGNO,0 MACNO FROM t_dealer d,t_regional r 
		WHERE d.REGIONALID = r.ID AND d.ISTEST=0 AND d.ISOPEN = 1 AND d.VALID = 1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_fetch_ok = TRUE; 	
     
SET v_begin_date = CONCAT(p_i_date,' 00:00:00');
SET v_end_date = CONCAT(p_i_date,' 23:59:59');
SET v_last_begin_date = DATE_ADD(v_begin_date,INTERVAL -1 DAY);
SET v_last_end_date = DATE_ADD(v_end_date,INTERVAL -1 DAY);
SET v_today3_date = CONCAT(p_i_date,' 03:00:00');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#       重复执行时删除当天数据
DELETE FROM t_sc_mediacheck_dealer WHERE THEDATE = p_i_date;    
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
OPEN v_dealer;v_dealer_loop:LOOP FETCH v_dealer INTO v_dealer_regionalid,v_dealer_regionalname,v_dealer_macid,v_dealer_macname,
			v_dealer_id,v_dealer_code,v_dealer_name,v_dealer_regno,v_dealer_macno;
IF v_fetch_ok THEN 
LEAVE v_dealer_loop;
ELSE    
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
SET v_autohome_dealerid = (SELECT AUTOHOME_DEALERID FROM t_autohome_dealer_dictionary WHERE DEALERCODE = v_dealer_code);
#1.	网络线索核对下发量：由车易通接口提供，无需自行统计，表示车易通当日推送来多少当日生成的询价、试驾网络线索	
#2.	网络线索核对接收量：统计媒体留资时间大于等于该日0:00，小于次日0:00的，车易通询价、试驾原始网络线索总量
SET v_bitauto_check_count = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_autohome_check_count = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND AUTOHOME_DEALERID = v_autohome_dealerid );
SET v_pcauto_check_count = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_xcar_check_count = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_public_check_count = 0; 
-- (SELECT COUNT(1) FROM t_autohome_public_leads WHERE CREATETIME>=v_begin_date AND CREATETIME<=v_end_date);
SET v_bitauto400_check_count = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_pcauto400_check_count = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_xcar400_check_count = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_autohome400_check_count = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
#3.	网络线索当日接收量：统计MyChevy接收时间大于等于该日0:00，小于次日0:00的，车易通询价、试驾原始网络线索总量
SET v_bitauto_receive_count = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE<>2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_pcauto_receive_count = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE<>2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_xcar_receive_count = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE<>2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_autohome_receive_count = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE<>2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
SET v_public_receive_count = 0;
-- (SELECT COUNT(1) FROM t_autohome_public_leads WHERE CDATE>=v_begin_date AND CDATE<=v_end_date);
SET v_bitauto400_receive_count = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE=2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_pcauto400_receive_count = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE=2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_xcar400_receive_count = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE=2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND DEALERCODE = v_dealer_code);
SET v_autohome400_receive_count = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE=2 AND CDATE>=v_begin_date AND CDATE<=v_end_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
#4.	网络线索当日额外接收量：
#a)	统计MyChevy接收时间大于等于该日0:00，小于该日3:00的；且媒体留资时间为前日的车易通询价、试驾原始网络线索量，计为a
#b)	统计MyChevy接收时间大于等于该日0:00，小于次日0:00的；且媒体留资时间为该日的车易通询价、试驾原始网络线索量，计为b
#c)	第3项-(a+b)
SET v_bitauto_extra_count_a = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_bitauto_extra_count_b = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_pcauto_extra_count_a = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_pcauto_extra_count_b = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_xcar_extra_count_a = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_xcar_extra_count_b = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_autohome_extra_count_a = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
SET v_autohome_extra_count_b = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE<>2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
SET v_public_extra_count_a = 0; 
-- (SELECT COUNT(1) FROM t_autohome_public_leads WHERE CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date);
SET v_public_extra_count_b = 0;
-- (SELECT COUNT(1) FROM t_autohome_public_leads WHERE CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date);
SET v_bitauto400_extra_count_a = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_bitauto400_extra_count_b = (SELECT COUNT(1) FROM t_bitauto_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_pcauto400_extra_count_a = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_pcauto400_extra_count_b = (SELECT COUNT(1) FROM t_pcauto_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_xcar400_extra_count_a = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_xcar400_extra_count_b = (SELECT COUNT(1) FROM t_xcar_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND DEALERCODE = v_dealer_code);
SET v_autohome400_extra_count_a = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_last_begin_date AND CREATETIME<=v_last_end_date AND CDATE<=v_today3_date AND CDATE >= v_begin_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
SET v_autohome400_extra_count_b = (SELECT COUNT(1) FROM t_autohome_leads WHERE LEADSTYPE=2 AND CREATETIME>=v_begin_date AND CREATETIME<=v_end_date AND CDATE<=v_end_date AND CDATE >= v_begin_date AND AUTOHOME_DEALERID = v_autohome_dealerid);
#5.	当日接收网络线索清洗去重量：统计当天第3项所对应生成的“已下发线索”中，“转化线索”字段是“生成新线索”的数量，计为m。并用第3项-m
SET v_autohome_chaning_count = (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_autohome_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 AND AUTOHOME_DEALERID = v_autohome_dealerid) AND SOURCEMEDIAID = 1 AND CONVERTINTENT = 0);
SET v_bitauto_chaning_count = (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_bitauto_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 AND DEALERCODE = v_dealer_code) AND SOURCEMEDIAID = 5 AND CONVERTINTENT = 0);
SET v_pcauto_chaning_count = (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_pcauto_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 AND DEALERCODE = v_dealer_code) AND SOURCEMEDIAID = 8 AND CONVERTINTENT = 0);
SET v_xcar_chaning_count = (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_xcar_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 AND DEALERCODE = v_dealer_code) AND SOURCEMEDIAID = 9 AND CONVERTINTENT = 0);
#1.	网络线索下发量：统计向DOSS的发送时间大于等于该日0:00，小于次日0:00的本系统意向信息总量
#2.	网络线索接收量：统计本系统从DOSS收集到了多少上述意向信息的接收成功反馈信息
SET v_doss_send_count = (SELECT COUNT(1) FROM t_origional_intent WHERE CDATE >= v_begin_date AND CDATE <= v_end_date AND DEALERCODE = v_dealer_code);
SET v_doss_receive_count = (SELECT COUNT(1) FROM t_doss_queue_log WHERE CDATE >=v_begin_date AND CDATE <=v_end_date AND STATUS = 1 AND DEALERCODE = v_dealer_code);
SET v_doss_autohome_receive_count = 0;
-- (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_autohome_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 ) AND SOURCEMEDIAID = 1 AND CONVERTINTENT = 0 AND RECEIVESTATUS IN (1,3));
SET v_doss_bitauto_receive_count = 0;
-- (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_bitauto_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 ) AND SOURCEMEDIAID = 5 AND CONVERTINTENT = 0 AND RECEIVESTATUS IN (1,3));
SET v_doss_pcauto_receive_count = 0;
-- (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_pcauto_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 ) AND SOURCEMEDIAID = 8 AND CONVERTINTENT = 0 AND RECEIVESTATUS IN (1,3));
SET v_doss_xcar_receive_count = 0;
-- (SELECT COUNT(1) AS c FROM t_origional_leads WHERE MEDIALEADSID IN (SELECT ID FROM t_xcar_leads WHERE CREATETIME >= v_begin_date AND CREATETIME <= v_end_date AND LEADSTYPE <> 2 ) AND SOURCEMEDIAID = 9 AND CONVERTINTENT = 0 AND RECEIVESTATUS IN (1,3)); 
--  
INSERT INTO t_sc_mediacheck_dealer (VERSON, THEDATE, REGIONALID, REGIONALNAME, MACID, MACNAME, DEALERID, DEALERCODE, DEALERNAME, REGNO, MACNO,
	BITAUTOSENDCOUNT, BITAUTOCHECKCOUNT, BITAUTORECEIVECOUNT, BITAUTOCHEANINGCOUNT, BITAUTOEXTRACOUNT, 
	BITAUTO400SENDCOUNT, BITAUTO400CHECKCOUNT, BITAUTO400RECEIVECOUNT,BITAUTO400EXTRACOUNT,
	AUTOHOMESENDCOUNT, AUTOHOMECHECKCOUNT, AUTOHOMERECEIVECOUNT, AUTOHOMECHEANINGCOUNT, AUTOHOMEEXTRACOUNT, 
	AUTOHOMEPUBLICSENDCOUNT, AUTOHOMEPUBLICCHECKCOUNT, AUTOHOMEPUBLICRECEIVECOUNT,	AUTOHOMEPUBLICEXTRACOUNT, 
	AUTOHOME400SENDCOUNT, AUTOHOME400CHECKCOUNT, AUTOHOME400RECEIVECOUNT, AUTOHOME400EXTRACOUNT, 
	TWEBSENDCOUNT, TWEBCHECKCOUNT, TWEBRECEIVECOUNT, TWEBCHEANINGCOUNT, TWEBEXTRACOUNT, 
	ALLSENDCOUNT, ALLCHECKCOUNT, ALLRECEIVECOUNT, ALLCHEANINGCOUNT, ALLEXTRACOUNT, 
	DOSSBITAUTOSENDCOUNT, DOSSBITAUTORECEIVECOUNT, DOSSAUTOHOMESENDCOUNT, DOSSAUTOHOMERECEIVECOUNT,	
	DOSSTWEBSENDCOUNT, DOSSTWEBRECEIVECOUNT, DOSSSENDCOUNT, DOSSRECEIVECOUNT, DOSSNOSENDCOUNT, CDATE, UDATE ,
	PCAUTOSENDCOUNT, PCAUTOCHECKCOUNT, PCAUTORECEIVECOUNT, PCAUTOCHEANINGCOUNT, PCAUTOEXTRACOUNT, 
	PCAUTO400SENDCOUNT, PCAUTO400CHECKCOUNT, PCAUTO400RECEIVECOUNT,PCAUTO400EXTRACOUNT,
	XCARSENDCOUNT, XCARCHECKCOUNT, XCARRECEIVECOUNT, XCARCHEANINGCOUNT, XCAREXTRACOUNT, 
	XCAR400SENDCOUNT, XCAR400CHECKCOUNT, XCAR400RECEIVECOUNT,XCAR400EXTRACOUNT,ALLMEDIASENDCOUNT,ALLOTHERSENDCOUNT)
	VALUES (0, p_i_date, 
	v_dealer_regionalid, v_dealer_regionalname, v_dealer_macid, v_dealer_macname, v_dealer_id, v_dealer_code, v_dealer_name, v_dealer_regno, v_dealer_macno, 
	v_bitauto_check_count, v_bitauto_check_count, v_bitauto_receive_count, v_bitauto_receive_count - v_bitauto_chaning_count, v_bitauto_receive_count-v_bitauto_extra_count_a-v_bitauto_extra_count_b,
	v_bitauto400_check_count, v_bitauto400_check_count, v_bitauto400_receive_count, v_bitauto400_receive_count-v_bitauto400_extra_count_a-v_bitauto400_extra_count_b,
	v_autohome_check_count, v_autohome_check_count, v_autohome_receive_count, v_autohome_receive_count - v_autohome_chaning_count, v_autohome_receive_count-v_autohome_extra_count_a-v_autohome_extra_count_b,
	v_public_check_count, v_public_check_count, v_public_receive_count, v_public_receive_count-v_public_extra_count_a-v_public_extra_count_b,
	v_autohome400_check_count, v_autohome400_check_count, v_autohome400_receive_count, v_autohome400_receive_count-v_autohome400_extra_count_a-v_autohome400_extra_count_b,
	0,0,0,0,0,
	v_bitauto_check_count + v_autohome_check_count + v_pcauto_check_count + v_xcar_check_count, v_bitauto_check_count + v_autohome_check_count + v_pcauto_check_count + v_xcar_check_count, v_bitauto_receive_count + v_autohome_receive_count + v_pcauto_receive_count + v_xcar_receive_count,
		(v_autohome_receive_count - v_autohome_chaning_count + v_bitauto_receive_count - v_bitauto_chaning_count + v_pcauto_receive_count - v_pcauto_chaning_count + v_xcar_receive_count - v_xcar_chaning_count),
	(v_bitauto_receive_count-v_bitauto_extra_count_a-v_bitauto_extra_count_b + v_autohome_receive_count-v_autohome_extra_count_a-v_autohome_extra_count_b +v_pcauto_receive_count-v_pcauto_extra_count_a-v_pcauto_extra_count_b + v_xcar_receive_count-v_xcar_extra_count_a-v_xcar_extra_count_b),
	v_bitauto_chaning_count,v_bitauto_chaning_count,v_autohome_chaning_count,v_autohome_chaning_count,
	0,0,v_doss_send_count,v_doss_send_count,(v_doss_send_count - v_doss_send_count),CURDATE(),CURDATE(),
	v_pcauto_check_count, v_pcauto_check_count, v_pcauto_receive_count, v_pcauto_receive_count - v_pcauto_chaning_count, v_pcauto_receive_count-v_pcauto_extra_count_a-v_pcauto_extra_count_b,
	v_pcauto400_check_count, v_pcauto400_check_count, v_pcauto400_receive_count, v_pcauto400_receive_count-v_pcauto400_extra_count_a-v_pcauto400_extra_count_b,
	v_xcar_check_count, v_xcar_check_count, v_xcar_receive_count, v_xcar_receive_count - v_xcar_chaning_count, v_xcar_receive_count-v_xcar_extra_count_a-v_xcar_extra_count_b,
	v_xcar400_check_count, v_xcar400_check_count, v_xcar400_receive_count, v_xcar400_receive_count-v_xcar400_extra_count_a-v_xcar400_extra_count_b,
	(v_bitauto_receive_count + v_autohome_receive_count +v_pcauto_receive_count + v_xcar_receive_count)-(v_autohome_receive_count - v_autohome_chaning_count + v_bitauto_receive_count - v_bitauto_chaning_count+v_pcauto_receive_count - v_pcauto_chaning_count+v_xcar_receive_count - v_xcar_chaning_count),
	v_doss_send_count-((v_bitauto_receive_count + v_autohome_receive_count +v_pcauto_receive_count + v_xcar_receive_count)-(v_autohome_receive_count - v_autohome_chaning_count + v_bitauto_receive_count - v_bitauto_chaning_count+v_pcauto_receive_count - v_pcauto_chaning_count+v_xcar_receive_count - v_xcar_chaning_count))
);
	
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
SET v_fetch_ok = 0;
END IF;
END LOOP;
CLOSE v_dealer;
# 结束
SET p_o_state = 1;
END