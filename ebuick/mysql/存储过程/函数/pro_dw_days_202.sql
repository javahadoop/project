BEGIN
DECLARE v_sql VARCHAR(20480);		-- sql
DECLARE v_fetch_ok BOOLEAN;
DECLARE v_dealer_id INT;		-- 经销商ID
DECLARE v_dealer_batchid INT;		-- 考核项ID
DECLARE v_testitem_id INT;		-- 测试项ID
DECLARE v_testitem_equation VARCHAR(10240); -- 测试项得分计算公式
DECLARE v_testfun_code VARCHAR(512);  -- 测试函数方法代码
DECLARE v_testfun_need VARCHAR(56);   -- 测试函数方法名eng
DECLARE v_while_ok BOOLEAN;
DECLARE v_cureq DECIMAL(10,2);		-- 当前完成量
DECLARE v_curval DECIMAL(10,2);		-- 当前得分
DECLARE v_dealer CURSOR FOR SELECT ID,BATCHID FROM t_dealer WHERE ISOPEN=1 AND ISTEST=0;
DECLARE v_testitem CURSOR FOR SELECT ID,EQUATION FROM t_as_testitem WHERE FLAG = 0;
DECLARE v_testfun CURSOR FOR SELECT `CODE`,DEED FROM t_as_testfun;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_fetch_ok = TRUE;
START TRANSACTION;	-- 开启事物
-- {	经销商 start
OPEN v_dealer;v_dealer_loop:LOOP FETCH v_dealer INTO v_dealer_id,v_dealer_batchid; -- 打开游标(经销商)
IF v_fetch_ok THEN 
LEAVE v_dealer_loop;
ELSE
-- {    测试项 start
OPEN v_testitem;v_testitem_loop:LOOP FETCH v_testitem INTO v_testitem_id,v_testitem_equation;	-- 打开游标(测试项)
IF v_fetch_ok THEN 
LEAVE v_testitem_loop;
ELSE
-- {	考核函数 start
OPEN v_testfun;v_testfun_loop:LOOP FETCH v_testfun INTO v_testfun_code,v_testfun_need; -- 打开游标(考核函数)
IF v_fetch_ok THEN 
LEAVE v_testfun_loop;
ELSE
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- { 替换计算当前得分函数 start
SET v_while_ok = TRUE;
-- 获取方法名 例：BASEDATA
SET @v_fun_name = SUBSTRING(v_testfun_need,1,LOCATE('(',v_testfun_need) - 1);
WHILE v_while_ok DO
-- 获取存在该方法数量 例：1
SET @v_fun_isexist = (LENGTH(v_testitem_equation) - LENGTH(REPLACE(v_testitem_equation, @v_fun_name , ''))) / LENGTH(@v_fun_name);
IF @v_fun_isexist > 0 THEN 
-- 获取方法参数 例：(2)
SET @v_fun_param = SUBSTRING(v_testitem_equation,LOCATE(@v_fun_name,v_testitem_equation) + LENGTH(@v_fun_name),
	LOCATE(')',RIGHT(v_testitem_equation,LENGTH(v_testitem_equation)-LOCATE(@v_fun_name,v_testitem_equation) -  + LENGTH(@v_fun_name))) + 1);
-- 替换方法CODE
SET v_testitem_equation = REPLACE(v_testitem_equation,CONCAT(@v_fun_name,@v_fun_param),CONCAT('(',REPLACE(v_testfun_code,'?',@v_fun_param),')'));
ELSE 
SET v_while_ok = FALSE;
END IF;
END WHILE;
--  }替换计算当前得分函数 end
END IF;
END LOOP;
CLOSE v_testfun;
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- } 考核函数 end
SET v_fetch_ok = 0;
SET v_sql = CONCAT('INSERT INTO t_as_testdata (VERSON,VAL,DEALERID,TESTID,CDATE,UDATE,FLAG,CURVAL)',
 	'SELECT 0,IFNULL(',v_testitem_equation,',0),@dealer,@testid,@date,CURDATE(),0,VAL FROM bak_eq_testdata WHERE TESTID=@testid AND DEALERID =@dealer');
SET v_sql = REPLACE(v_sql,'@dealer',v_dealer_id);
SET v_sql = REPLACE(v_sql,'@date',CONCAT('''',p_i_date,''''));
SET v_sql = REPLACE(v_sql,'@batchid', v_dealer_batchid);
SET v_sql = REPLACE(v_sql,'@testid', v_testitem_id);
SET @v_sql = v_sql;
PREPARE stmt FROM @v_sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
COMMIT;	-- 提交事物 
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
END IF;
END LOOP;
CLOSE v_testitem;
-- } 测试项 end
SET v_fetch_ok = 0;
END IF;
END LOOP;
CLOSE v_dealer;
-- } 经销商 end
END