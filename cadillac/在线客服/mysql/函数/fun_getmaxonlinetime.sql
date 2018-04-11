BEGIN
	#Routine body goes here...
DECLARE v_dealer_onlinetime LONG DEFAULT 0;
DECLARE v_logintime LONG DEFAULT 0 ; -- 登陆时间
DECLARE v_loginouttime LONG DEFAULT 0; -- 退出时间
DECLARE t_logintime LONG DEFAULT 0 ; -- 临时登陆时间
DECLARE t_loginouttime LONG DEFAULT 0; -- 临时退出时间
DECLARE v_user_online_status INT DEFAULT 2; -- 数据状态
DECLARE v_onetime LONG; -- 在线时长
DECLARE v_temp LONG;
DECLARE v_no_dealer BOOLEAN DEFAULT TRUE;
DECLARE v_date_ LONG;
-- 按照登陆时间从小到大进行排序
DECLARE cur_onlinetimes CURSOR FOR SELECT logintime,loginouttime,onlinetime,`status` FROM t_onlinetime AS ot WHERE ot.dealercode = dealercode AND `status`<2  ORDER BY logintime,loginouttime;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_no_dealer = FALSE;
SET v_date_ = 24*60*60*1000;

OPEN cur_onlinetimes;
	dealer_loop:LOOP
		SET v_loginouttime = 0;
		SET v_logintime = 0;
		SET v_onetime = 0;
		SET v_user_online_status =2;
		FETCH cur_onlinetimes INTO v_logintime,v_loginouttime,v_onetime,v_user_online_status;
		IF(!v_no_dealer) THEN
			LEAVE dealer_loop;
		END IF;
		IF v_logintime > curdate THEN
			ITERATE dealer_loop;
		END IF;
		-- 判断登陆时间
		IF (v_logintime < predate) THEN 
			SET v_logintime = predate;
		END IF;
		-- 判断退出时间
		IF v_user_online_status = 0 THEN
			-- 没有退出
			SET v_loginouttime = curdate;
		END IF;
		SET v_onetime = v_loginouttime - v_logintime;

		IF v_onetime = v_date_ THEN
			SET v_dealer_onlinetime = v_onetime;
			 LEAVE dealer_loop; -- 当存在连续登陆2天以上者，该经销商的在线时长为24小时，同时结束循环
		END IF;
		-- 以上将登陆时间，退出时间进行重新分配，以下进行数据的计算
		IF t_logintime =0 THEN
			SET t_logintime = v_logintime;
			SET t_loginouttime = v_loginouttime;
			SET v_dealer_onlinetime = v_onetime;
			ITERATE dealer_loop;
		END IF;
		IF  v_logintime >= t_loginouttime THEN
				-- 当前登陆时间晚于上次退出时间，那么将重新进行计算
				SET v_dealer_onlinetime = v_dealer_onlinetime + v_onetime;
				SET t_loginouttime = v_loginouttime;
				SET t_logintime = v_logintime;
		ELSEIF (v_logintime BETWEEN t_logintime AND t_loginouttime ) AND v_loginouttime > t_loginouttime THEN
				-- 当开始时间在上次登陆、退出时间区间内，退出时间晚于上次退出时间
				SET v_dealer_onlinetime = v_dealer_onlinetime + v_loginouttime - t_loginouttime;
				SET t_loginouttime = v_loginouttime;
		ELSE
				-- 当前登陆、退出时间在前一次区间内，证明同时在线
				ITERATE dealer_loop;
		END IF;
	END LOOP dealer_loop;
CLOSE cur_onlinetimes;
SET v_no_dealer = FALSE;
	RETURN v_dealer_onlinetime;
END