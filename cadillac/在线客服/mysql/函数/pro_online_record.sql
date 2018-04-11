BEGIN
DECLARE v_dealer_code VARCHAR(30);  -- 经销商代码
DECLARE v_dealer_onlinetime LONG;
DECLARE v_curr_date_long LONG; -- 当前日期LONG值
DECLARE v_pre_date_long LONG; -- 前一天日期LONG值
DECLARE v_no_dealer BOOLEAN DEFAULT TRUE;
DECLARE v_pre_date VARCHAR(15);
DECLARE cur_dealer CURSOR FOR SELECT DEALERCODE FROM t_dealer;--  WHERE ISOPEN=1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_no_dealer = FALSE;
SET v_curr_date_long = UNIX_TIMESTAMP(CURRENT_DATE())*1000; 
SET v_pre_date_long = v_curr_date_long - 24*60*60*1000;
SET v_pre_date = date_sub(CURRENT_DATE(),interval 1 day);
OPEN cur_dealer;
dealer_while:WHILE  v_no_dealer DO
	 FETCH cur_dealer INTO v_dealer_code;
		IF !v_no_dealer THEN
			LEAVE dealer_while;
		END IF;
	 -- 查询有退出时间的onlinetime,同时获取最大在线时间
	  SELECT fun_getmaxonlinetime(v_dealer_code,v_curr_date_long,v_pre_date_long) INTO v_dealer_onlinetime;
		START TRANSACTION; -- 开启事务
		 INSERT INTO t_onlinetimerecord (onlinetime,dateline,dealercode,cdate)VALUES(v_dealer_onlinetime,v_pre_date,v_dealer_code,NOW());
		  UPDATE t_onlinetime as onlinetime SET onlinetime.`status`=2 WHERE onlinetime.dealercode = v_dealer_code AND onlinetime.`status` = 1;
		 COMMIT;
		-- END IF;
END WHILE dealer_while;
CLOSE cur_dealer;
END