BEGIN
   
DECLARE v_begin_date VARCHAR(20);	-- 开始时间
DECLARE v_end_date VARCHAR(20);		-- 结束时间
SET v_begin_date = CONCAT(p_i_date,' 00:00:00');
SET v_end_date = CONCAT(p_i_date,' 23:59:59');
START TRANSACTION;	-- 开启事物
-- 删除当月数据
DELETE FROM t_as_dealer_topscore WHERE MONTH(CDATE) = MONTH(p_i_date) AND YEAR(CDATE) = YEAR(p_i_date);
DELETE FROM t_as_regional_topscore WHERE MONTH(CDATE) = MONTH(p_i_date) AND YEAR(CDATE) = YEAR(p_i_date);
DELETE FROM t_as_regional_totaltopscore WHERE MONTH(CDATE) = MONTH(p_i_date) AND YEAR(CDATE) = YEAR(p_i_date);
DELETE FROM t_as_dealer_totaltopscore WHERE MONTH(CDATE) = MONTH(p_i_date) AND YEAR(CDATE) = YEAR(p_i_date);
DELETE FROM t_as_basedata_count WHERE MONTH(CDATE) = MONTH(p_i_date) AND YEAR(CDATE) = YEAR(p_i_date);
-- 经销商总分
INSERT INTO T_AS_DEALER_TOTALTOPSCORE (verson,regionalid,batchid,dealerid,DEALERNAME,DEALERSCORE,SCORE,cdate,udate) 
SELECT 0,t_dealer.REGIONALID,t_dealer.BATCHID,t_dealer.ID,t_dealer.DEALERNAME,SUM(t_as_testdata.VAL),SUM(t_as_testitem.SCORE),t_as_testdata.CDATE,t_as_testdata.UDATE
FROM t_as_itembatch,t_dealer,t_as_testdata,t_as_testitem
WHERE t_as_testdata.TESTID = t_as_itembatch.ITEMID
AND t_as_testdata.DEALERID = t_dealer.ID
AND t_as_testitem.ID = t_as_itembatch.ITEMID
AND t_as_itembatch.BATCHID = t_dealer.BATCHID
AND t_dealer.ISOPEN = 1 AND t_dealer.ISTEST = 0
AND t_as_testdata.CDATE >= v_begin_date
AND t_as_testdata.CDATE <= v_end_date
GROUP BY t_as_testdata.DEALERID, t_as_itembatch.BATCHID;
-- 经销商得分排行   
INSERT INTO T_AS_DEALER_TOPSCORE (VERSON,REGIONALID,REGIONALNAME,BATCHID,ITEMNAME,TOTALTASK,TASKBALANCE,DEALERID,DEALERNAME,ITEMID,OUTPUT,ITEMSCORE,FULLSCORE,UNIT,CDATE,UDATE)
SELECT 0,t_dealer.REGIONALID,t_dealer.REGIONALNAME,t_dealer.BATCHID,t_as_testitem.NAME,t_as_testitem.TOTALTASK,
CASE WHEN (t_as_testitem.TOTALTASK - t_as_testdata.CURVAL) <= 0 THEN '已达标' ELSE CONCAT('还差',ROUND(t_as_testitem.TOTALTASK - t_as_testdata.CURVAL,1),t_as_testitem.unit) END,
t_dealer.ID,t_dealer.DEALERNAME,t_as_testitem.ID,t_as_testdata.CURVAL,t_as_testdata.VAL,t_as_testitem.SCORE,t_as_testitem.unit,t_as_testdata.CDATE,t_as_testdata.UDATE
FROM t_as_itembatch,t_dealer,t_as_testdata,t_as_testitem
WHERE t_as_testdata.TESTID = t_as_itembatch.ITEMID
AND t_as_testdata.DEALERID = t_dealer.ID
AND t_as_testitem.ID = t_as_itembatch.ITEMID
AND t_as_itembatch.BATCHID = t_dealer.BATCHID
AND t_dealer.ISOPEN = 1 AND t_dealer.ISTEST = 0
AND t_as_testdata.CDATE >= v_begin_date
AND t_as_testdata.CDATE <= v_end_date
GROUP BY t_as_testdata.DEALERID, t_as_itembatch.BATCHID, t_as_testdata.TESTID;
UPDATE T_AS_DEALER_TOPSCORE INNER JOIN 
(SELECT AVG(OUTPUT) AS AVGOUTPUT,BATCHID FROM T_AS_DEALER_TOPSCORE WHERE ITEMID = 8 AND CDATE >= v_begin_date AND CDATE <= v_end_date
 GROUP BY BATCHID) avg_dealer_topscore ON avg_dealer_topscore.BATCHID = T_AS_DEALER_TOPSCORE.BATCHID
SET 
TASKBALANCE = CASE WHEN ITEMSCORE=FULLSCORE THEN '已达标' ELSE CONCAT('距离全国ebuickPV平均量还差',CAST(ROUND(avg_dealer_topscore.AVGOUTPUT - OUTPUT,1) AS CHAR)) END,
TOTALTASK = avg_dealer_topscore.AVGOUTPUT
WHERE T_AS_DEALER_TOPSCORE.ITEMID = 8 AND CDATE >= v_begin_date AND CDATE <= v_end_date;   
   
UPDATE T_AS_DEALER_TOPSCORE INNER JOIN 
(SELECT AVG(OUTPUT) AS AVGOUTPUT,BATCHID FROM T_AS_DEALER_TOPSCORE WHERE ITEMID = 9 AND CDATE >= v_begin_date AND CDATE <= v_end_date
 GROUP BY BATCHID) avg_dealer_topscore ON avg_dealer_topscore.BATCHID = T_AS_DEALER_TOPSCORE.BATCHID
SET 
TASKBALANCE = CASE WHEN ITEMSCORE=FULLSCORE THEN '已达标' ELSE CONCAT('距离全国经销商平均PV还差',CAST(ROUND(avg_dealer_topscore.AVGOUTPUT - OUTPUT,1) AS CHAR)) END,
TOTALTASK = avg_dealer_topscore.AVGOUTPUT
WHERE T_AS_DEALER_TOPSCORE.ITEMID = 9 AND CDATE >= v_begin_date AND CDATE <= v_end_date; 
UPDATE T_AS_DEALER_TOPSCORE INNER JOIN 
(SELECT AVG(OUTPUT) AS AVGOUTPUT,BATCHID FROM T_AS_DEALER_TOPSCORE WHERE ITEMID = 10 AND CDATE >= v_begin_date AND CDATE <= v_end_date
 GROUP BY BATCHID) avg_dealer_topscore ON avg_dealer_topscore.BATCHID = T_AS_DEALER_TOPSCORE.BATCHID
SET 
TASKBALANCE = CASE WHEN ITEMSCORE=FULLSCORE THEN '已达标' ELSE CONCAT('距离全国经销商平均PV还差',CAST(ROUND(avg_dealer_topscore.AVGOUTPUT - OUTPUT,1) AS CHAR)) END,
TOTALTASK = avg_dealer_topscore.AVGOUTPUT
WHERE T_AS_DEALER_TOPSCORE.ITEMID = 10 AND CDATE >= v_begin_date AND CDATE <= v_end_date; 
UPDATE T_AS_DEALER_TOPSCORE INNER JOIN 
(SELECT AVG(OUTPUT) AS AVGOUTPUT,BATCHID FROM T_AS_DEALER_TOPSCORE WHERE ITEMID = 11 AND CDATE >= v_begin_date AND CDATE <= v_end_date
 GROUP BY BATCHID) avg_dealer_topscore ON avg_dealer_topscore.BATCHID = T_AS_DEALER_TOPSCORE.BATCHID
SET 
TASKBALANCE = CASE WHEN ITEMSCORE=FULLSCORE THEN '已达标' ELSE CONCAT('距离全国平均量还差',CAST(ROUND(avg_dealer_topscore.AVGOUTPUT - OUTPUT,1) AS CHAR)) END,
TOTALTASK = avg_dealer_topscore.AVGOUTPUT
WHERE T_AS_DEALER_TOPSCORE.ITEMID = 11 AND CDATE >= v_begin_date AND CDATE <= v_end_date; 
UPDATE T_AS_DEALER_TOPSCORE SET 
TASKBALANCE = CASE WHEN ITEMSCORE=FULLSCORE THEN '已达标' ELSE
CONCAT((CASE WHEN OUTPUT = 0 THEN '车易通,车商汇,ebuick400' WHEN OUTPUT=1 THEN '车易通,车商汇' WHEN OUTPUT=2 THEN 'ebuick400,车易通' WHEN OUTPUT=3 THEN '车易通' WHEN OUTPUT=4 THEN 'ebuick400,车商汇' 
WHEN OUTPUT=5 THEN '车商汇' ELSE 'ebuick400' END), '接通率还未达到90%') END,
TOTALTASK = 3,
OUTPUT = CASE WHEN OUTPUT = 0 THEN 0 WHEN OUTPUT IN (1,2,4) THEN 1 WHEN OUTPUT IN (3,5,6) THEN 2 ELSE 3 END
WHERE T_AS_DEALER_TOPSCORE.ITEMID = 13 AND CDATE >= v_begin_date AND CDATE <= v_end_date;
-- IB录入率
UPDATE T_AS_DEALER_TOPSCORE INNER JOIN 
(SELECT AVG(OUTPUT) AS AVGOUTPUT,BATCHID FROM T_AS_DEALER_TOPSCORE WHERE ITEMID = 14 AND CDATE >= v_begin_date AND CDATE <= v_end_date
 GROUP BY BATCHID) avg_dealer_topscore ON avg_dealer_topscore.BATCHID = T_AS_DEALER_TOPSCORE.BATCHID
SET 
TASKBALANCE = CASE WHEN ITEMSCORE=FULLSCORE THEN '已达标' ELSE CONCAT('还差',CAST(ROUND(avg_dealer_topscore.AVGOUTPUT - OUTPUT,1) AS CHAR), '%') END,
TOTALTASK = avg_dealer_topscore.AVGOUTPUT
WHERE T_AS_DEALER_TOPSCORE.ITEMID = 14 AND CDATE >= v_begin_date AND CDATE <= v_end_date; 
-- 计算大区总分排行明细
INSERT INTO t_as_regional_topscore(verson,regionalid,regionalname,batchid,itemid,avgoutput,unit,avgscore,fullscore,cdate,udate)
SELECT 0,t_dealer.REGIONALID,t_dealer.REGIONALNAME,t_dealer.BATCHID,t_as_testitem.ID,
AVG(CASE WHEN t_as_testitem.ID = 13 THEN (CASE WHEN t_as_testdata.CURVAL = 0 THEN 0 WHEN t_as_testdata.CURVAL IN (1,2,4) THEN 1 WHEN t_as_testdata.CURVAL IN (3,5,6) THEN 2 ELSE 3 END) ELSE t_as_testdata.CURVAL END),
t_as_testitem.unit,
AVG(t_as_testdata.VAL),t_as_testitem.SCORE,t_as_testdata.CDATE,t_as_testdata.UDATE
FROM t_as_itembatch,t_dealer,t_as_testdata,t_as_testitem
WHERE t_as_testdata.TESTID = t_as_itembatch.ITEMID
AND t_as_testdata.DEALERID = t_dealer.ID
AND t_as_testitem.ID = t_as_itembatch.ITEMID
AND t_as_itembatch.BATCHID = t_dealer.BATCHID
AND t_dealer.ISOPEN = 1 AND t_dealer.ISTEST = 0
AND t_as_testdata.CDATE >= v_begin_date
AND t_as_testdata.CDATE <= v_end_date
GROUP BY t_dealer.REGIONALID, t_as_itembatch.BATCHID, t_as_testdata.TESTID;
-- 计算大区总分排行
INSERT INTO T_AS_REGIONAL_TOTALTOPSCORE(verson,REGIONALID,REGIONALNAME,BATCHID,DEALERAVGSCORE,SCORE,cdate,udate)
SELECT 0,t_dealer.REGIONALID,t_dealer.REGIONALNAME,t_dealer.BATCHID,SUM(t_as_testdata.VAL) / COUNT(t_dealer.ID) * COUNT(DISTINCT t_as_testdata.TESTID),
SUM(t_as_testitem.SCORE)/COUNT(t_dealer.ID) * COUNT(DISTINCT t_as_testdata.TESTID),
t_as_testdata.CDATE,t_as_testdata.UDATE
FROM t_as_itembatch,t_dealer,t_as_testdata,t_as_testitem
WHERE t_as_testdata.TESTID = t_as_itembatch.ITEMID
AND t_as_testdata.DEALERID = t_dealer.ID
AND t_as_testitem.ID = t_as_itembatch.ITEMID
AND t_as_itembatch.BATCHID = t_dealer.BATCHID
AND t_dealer.ISOPEN = 1 AND t_dealer.ISTEST = 0
AND t_as_testdata.CDATE >= v_begin_date
AND t_as_testdata.CDATE <= v_end_date
GROUP BY t_dealer.REGIONALID, t_as_itembatch.BATCHID;
-- 基础数据
SET group_concat_max_len = 10240;
INSERT INTO t_as_basedata_count (VERSON,REGIONALID,REGIONALNAME,BATCHID,BATCHNAME,DEALERID,DEALERNAME,GROUPNAME,NAME,val,CDATE,UDATE)
(SELECT 0,t_dealer.REGIONALID,t_dealer.REGIONALNAME,t_dealer.BATCHID,t_dealer.BATCHNAME,t_dealer.ID,t_dealer.DEALERNAME,
GROUP_CONCAT(DISTINCTROW(t_as_basegroup.NAME)) AS GROUPNAME,GROUP_CONCAT(t_as_baseitem.NAME) AS ITEMNAME,
GROUP_CONCAT(t_as_basedata.VAL) AS val,t_as_basedata.CDATE,CURDATE()
FROM t_as_basedata,(SELECT * FROM t_as_baseitem ORDER BY sort) t_as_baseitem,t_as_basegroup,t_dealer WHERE t_as_basedata.ITEMID = t_as_baseitem.ID
AND t_as_baseitem.GROUPID = t_as_basegroup.ID AND t_dealer.ID = t_as_basedata.DEALERID
-- and t_as_basedata.CDATE in (select max(t_as_basedata.CDATE) from t_as_basedata group by year(CDATE),month(cdate)
AND t_as_basedata.CDATE <= v_end_date
AND t_as_basedata.CDATE >= v_begin_date
GROUP BY t_dealer.DEALERNAME,t_as_basedata.CDATE
);
COMMIT;	-- 提交事物
    END