BEGIN
	DECLARE v_dealer_onlinetime LONG DEFAULT 0; -- 经销商在线总时长
	DECLARE v_loginouttime_tmp LONG; -- 临时记录用户退出时间
	DECLARE v_logintime LONG DEFAULT 0 ; -- 登陆时间
	DECLARE v_loginouttime LONG DEFAULT 0; -- 退出时间
	DECLARE v_user_online_status INT DEFAULT 2; -- 数据状态
	DECLARE v_onlinetime LONG; -- 在线时长
	DECLARE v_nexy_day_long LONG; -- 第二天的时间戳
	
	-- 遍历数据结束标志
  DECLARE done INT DEFAULT FALSE;
	-- 游标, 查询在本日登录的登录信息
	DECLARE cur_onlinetimes CURSOR FOR SELECT logintime,loginouttime,onlinetime,`status` FROM t_onlinetime AS ot WHERE ot.dealercode = dealercode AND ot.`status` in (0, 1) and logintime >= UNIX_TIMESTAMP(which_date)*1000 and logintime < UNIX_TIMESTAMP(DATE_ADD(which_date, INTERVAL 1 DAY))*1000;
	-- 将结束标志绑定到游标
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

	OPEN cur_onlinetimes;

		onl_times_loop:LOOP
		
			FETCH cur_onlinetimes INTO v_logintime,v_loginouttime,v_onlinetime,v_user_online_status;
				
			-- 声明结束的时候
			IF done THEN
				LEAVE onl_times_loop;
			END IF;

			IF TO_DAYS(which_date) >= TO_DAYS(CURRENT_DATE()) THEN
				LEAVE onl_times_loop;
			END IF;

			-- 第二天的时间戳			
			SET v_nexy_day_long = UNIX_TIMESTAMP(DATE_ADD(which_date, INTERVAL 1 DAY))*1000;

			-- 判断退出时间
			IF v_user_online_status = 0 THEN
				-- 没有退出
				SET v_loginouttime_tmp = v_nexy_day_long;
			ELSEIF v_loginouttime > v_nexy_day_long THEN
				SET v_loginouttime_tmp = v_nexy_day_long;
			ELSE
				SET v_loginouttime_tmp = v_loginouttime;
			END IF;
			
			SET v_dealer_onlinetime = v_dealer_onlinetime + v_loginouttime_tmp - v_logintime;

		END LOOP onl_times_loop;

	CLOSE cur_onlinetimes;
	RETURN v_dealer_onlinetime;
END