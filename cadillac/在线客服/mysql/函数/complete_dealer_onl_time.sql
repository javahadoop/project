BEGIN
	DECLARE v_next_date DATETIME;
	DECLARE v_onlinetime LONG DEFAULT 0;

	SET v_next_date = v_startdate;

	tmp_while:WHILE v_next_date<CURRENT_DATE() DO

		SELECT fun_calconlinetime(v_dealercode, v_next_date) INTO v_onlinetime;
		
		select v_next_date, v_onlinetime, v_dealercode;

		START TRANSACTION;
			UPDATE t_onlinetimerecord SET onlinetime=v_onlinetime WHERE dealercode=v_dealercode AND TO_DAYS(dateline)=TO_DAYS(v_next_date);
			UPDATE t_onlinetime as onlinetime SET onlinetime.`status`=2 WHERE onlinetime.dealercode = v_dealercode AND onlinetime.`status` = 1 and logintime >= UNIX_TIMESTAMP(v_next_date)*1000 and logintime < UNIX_TIMESTAMP(DATE_ADD(v_next_date, INTERVAL 1 DAY))*1000;
		COMMIT;

		SET v_next_date = date_add(v_next_date, INTERVAL 1 DAY);

	END WHILE tmp_while;

END