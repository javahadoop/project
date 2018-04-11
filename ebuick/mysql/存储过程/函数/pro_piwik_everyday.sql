BEGIN
    DECLARE yesterday VARCHAR(10); 
		DECLARE v_fetch_ok BOOLEAN;
	  -- 获取当前时间获取前一天的值
		SET	yesterday	 =	DATE_ADD(DATE_FORMAT(p_i_date,"%Y-%m-%d"),INTERVAL -0 DAY);
		SET v_fetch_ok = UNIX_TIMESTAMP(p_i_date) >  UNIX_TIMESTAMP('2016-12-29');

	IF v_fetch_ok  THEN
	  --  删除表
     DELETE FROM t_sc_piwikresult WHERE THEDATE = yesterday;
		-- 插入
   	INSERT INTO t_sc_piwikresult (VERSON,THEDATE,WEBPV,WEBUV,MOBILEPV,MOBILEUV,DEALERID,CDATE,UDATE)
	  SELECT  0, DATE_FORMAT(THEDATE,"%Y-%m-%d"),PC_PV,PC_UV,MOBILE_PV,MOBILE_UV,DEALERID,CDATE,NOW() FROM  t_sc_piwikresult_m  WHERE THEDATE  = yesterday;
	  SET p_o_state =  (SELECT COUNT(1) FROM t_sc_piwikresult  WHERE  THEDATE  = yesterday );
	ELSE
		SET p_o_state =  0;
	END IF;
END