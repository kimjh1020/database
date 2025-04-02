select char_length('HELLO')
      ,length('HELLO')
	  ,char_length(' 안녕')
      ,length('안녕');

select CONCAT('DREAMS', 'COME', 'TRUE')
  ,concat_ws('-','2023','01','29');

SELECT left('SQL 완전정복', 3)
,right('SQL 완전정복',4)
,SUBSTR('SQL 완전정복',2,5)
,SUBSTR('SQL 완전정복',2);

select SUBSTRING_INDEX('서울시 동작구 흑석로',' ',2)
      ,substring_index('서울시 동작구 흑석로',' ',-2);

select LPAD('SQL',10, '#' )
,RPAD('SQL',5, '*');

select length(Ltrim(' SQL ')),
length(Rtrim(' SQL ')),
length(trim(' SQL '));

select trim(BOTH 'abc' FROM 'abcSQLabcabc'),
trim(LEADING 'abc' FROM 'abcSQLabcabc'),
trim(TRAILING 'abc' FROM 'abcSQLabcabc');

select field('JAVA','SQL','JAVA','C')
,find_in_set('JAVA','SQL,JAVA,C')
,instr('네 인생을 살아라','인생')
,locate('인생','네 인생을 살아라');

SELECT REPEAT('*',5);

select replace('010.1234.5678','.','-');

select reverse('OLLEH');

select ceiling(123.56)
,floor(123.56)
,round(123.56)
,round(123.56,1)
,truncate(123.56,1);

SELECT ABS(-120)
,ABS(120)
,sign(-120)
,sign(120);

select mod(203,4)
,203 % 4
,203 mod 4;

select power(2,3)
,SQRT(16)
,RAND()
,RAND(100)
,ROUND(RAND() * 100);       

select now()
,sysdate()
,curdate()
,curtime();


SELECT NOW()
,YEAR (NOW())
,QUARTER (NOW()) ,MONTH(NOW()) ,DAY (NOW())
,HOUR (NOW())
,MINUTE (NOW())
, SECOND (NOW());

SELECT NOW()
,DATEDIFF('2005-10-20', NOW()) 
,DATEDIFF (NOW(), '2005-10-20')
,TIMESTAMPDIFF(YEAR, NOW(), '2005-10-20') 
,TIMESTAMPDIFF(MONTH, NOW(), '2005-10-20') 
,TIMESTAMPDIFF (DAY, NOW(), '2005-10-20'); 


SELECT NOW()
,ADDDATE(NOW(), 50) 
,ADDDATE(NOW(), INTERVAL 50 DAY)
,ADDDATE(NOW(), INTERVAL 50 MONTH)
,SUBDATE(NOW(), INTERVAL 50 HOUR);

SELECT NOW()
,last_day(NOW())
,DAYOFYEAR(NOW())
,monthname(NOW())
,weekday(NOW());

SELECT CAST('1' AS UNSIGNED)
,CAST(2 AS CHAR(1))
,CONVERT('1',UNSIGNED)
,CONVERT(2,CHAR(1)); 

select IF(12500*450>5000000,'초과달성','미달성');

select ifnull(1,0)
,ifnull(null,0)
,ifnull(1/0, 'OK');

select nullif(12*10,120)
,nullif(12*10,1200);

select case when 12500 * 450 > 5000000 THEN '초과달성'
when 2500 * 450 > 4000000 THEN '달성'
ELSE '미달성'
end;

#문제풀이

SELECT 
    고객회사명,
    CONCAT('**', SUBSTRING(고객회사명, 3, LENGTH(고객회사명) - 2)) AS 고객회사명2,
    전화번호,
    REPLACE(전화번호, '(', '') AS 전화번호2
FROM 한빛무역.고객;

SELECT 
    고객회사명,
    CONCAT('**',Substr(고객회사명,3)) AS 고객회사명2,
    전화번호,
    REPLACE(substr(전화번호,2),')','-') AS 전화번호2
FROM 한빛무역.고객;


SELECT 
    주문번호,
    제품번호,
    단가,
    주문수량,
    할인율,
    FLOOR(주문수량 * 단가 / 10) * 10 AS 주문금액,
    FLOOR(주문수량 * 단가 * 할인율 / 10) * 10 AS 할인금액,
    FLOOR((주문수량 * 단가 - 주문수량 * 단가 * 할인율) / 10) * 10 AS 실주문금액
FROM 한빛무역.주문세부;

SELECT 
    담당자명,
    고객회사명,
    도시,
    CASE 
        WHEN 도시 LIKE '%특별시' OR 도시 LIKE '%광역시' THEN '대도시'
        ELSE '도시'
    END AS 도시구분,
    마일리지,
    CASE 
        WHEN 마일리지 >= 100000 THEN 'VVIP고객'
        WHEN 마일리지 >= 10000 THEN 'VIP고객'
        ELSE '일반고객'
    END AS 마일리지구분
FROM 한빛무역.고객;




