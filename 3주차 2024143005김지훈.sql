SELECT * FROM 한빛무역.고객; 

select 고객번호,담당자명,고객회사명,마일리지 AS 포인트,마일리지 * 1.1 AS "10%인상된 마일리지"
from 고객;

select 고객번호,담당자명,마일리지 
from  고객
where 마일리지 >= 100000;

SELECT 고객번호,담당자명,도시,마일리지 AS 포인트
from 고객
where 도시 = '서울특별시'
ORDER BY 마일리지 DESC;

select *
from 고객
order by 마일리지 desc
limit 3;

select 23+5 AS 더하기,23-5 AS 빼기,23*5 AS 곱하기,23/5 AS 실수나누기 , 23 DIV 5 AS 정수나누기,
23%5 AS 나머지1, 23 Mod 5 AS 나머지2;

SELECT 23 >= 5
,23 <= 5
,23 > 23
,23 < 23
,23 = 23
,23 != 23
,23 <> 23;

select *
from 고객
where 담당자직위 <> '대표이사';

SELECT *
FROM 고객
WHERE 도시= '부산광역시'
AND 마일리지 <1000;

SELECT 고객번호, 담당자명, 마일리지, 도시
FROM 고객
WHERE 도시 = '부산광역시'
UNION
SELECT 고객번호, 담당자명, 마일리지, 도시
FROM 고객
WHERE 마일리지 < 1000
ORDER BY 1;

SELECT 고객번호,담당자명,마일리지,도시
FROM 고객
WHERE 도시 = '부산광역시'
OR 마일리지 <1000
ORDER BY 1;

select 담당자명,마일리지
from 고객 
where 마일리지 >=100000
AND 마일리지 <= 200000;

select *
from 고객
Where 도시 Like '%광역시'
AND (고객번호 like '_C%' OR 고객번호 like '__C%');

select * 
from 고객 
where 도시 = '서울특별시' and 마일리지 between 15000 AND 20000;

SELECT *
FROM 고객
WHERE 도시 NOT LIKE '%광역시%' AND 도시 NOT LIKE '%특별시%'
ORDER BY 마일리지 DESC
LIMIT 3;

select *
from 고객
where 담당자직위 <> '대표이사';




