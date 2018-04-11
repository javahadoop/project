BEGIN
 

DECLARE v_fetch_ok BOOLEAN;
DECLARE num01 INT;
DECLARE v_updateid INT;	-- 需要更新的id
DECLARE v_dealer_regionalid INT;	-- 大区id
DECLARE v_dealer_regionalname  VARCHAR(20);	-- 大区名字
DECLARE v_dealer_id INT;	-- 经销商id
DECLARE v_dealer_name VARCHAR(200);	-- 经销商名字
DECLARE v_dealer_code VARCHAR(20);	-- 经销商code

 
DECLARE v_dealer CURSOR FOR SELECT o1.ID,dealer.REGIONALID,dealer.REGIONALNAME,dealer.ID as did,dealer.DEALERNAME ,dealer.DEALERCODE from t_origional_leads_freecall o1
LEFT JOIN t_freecall_detail o2 ON o1.MEDIALEADSID = o2.ID
LEFT JOIN t_freecall_dictionary o3 ON o3.CUSTID = o2.CUST_ID
LEFT JOIN t_dealer dealer ON dealer.DEALERCODE = o3.DEALER_CODE
 WHERE dealer.VALID = 1 and  o1.SOURCEMEDIAID = 3 and ISNULL(o1.DEALERCODE); -- 查询所有的经销商
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_fetch_ok = TRUE; 

OPEN v_dealer;v_dealer_loop:LOOP FETCH v_dealer INTO v_updateid,v_dealer_regionalid,v_dealer_regionalname,v_dealer_id,v_dealer_name,v_dealer_code ;
IF v_fetch_ok THEN LEAVE v_dealer_loop;
	   -- update t_origional_leads_freecall set REGIONALID =  v_dealer_regionalid ,REGIONALNAME = v_dealer_regionalname,DEALERID = v_dealer_id,DEALERNAME = v_dealer_name,DEALERCODE = v_dealer_code,CDATE = NOW() WHERE  id = v_updateid ;
ELSE
	SET num01 = (select count(1) from t_origional_leads_freecall where  id = v_updateid and ISNULL(DEALERCODE));
	IF num01 > 0 
		THEN update t_origional_leads_freecall set REGIONALID = v_dealer_regionalid ,REGIONALNAME = v_dealer_regionalname,DEALERID = v_dealer_id,DEALERNAME = v_dealer_name,DEALERCODE = v_dealer_code,UDATE = NOW() WHERE  id = v_updateid ;
 	END IF; 
	SET v_fetch_ok = 0;
END IF;
END LOOP;
CLOSE v_dealer;
 SET p_o_state = 0;
END