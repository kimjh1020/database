select count(*)
,count(고객번호)
,count(도시)
,count(지역)
From 고객;

select Sum(마일리지)
,avg(마일리지)
,min(마일리지)
,max(마일리지)
from 고객;

select Sum(마일리지)
,avg(마일리지)
,min(마일리지)
,max(마일리지)
from 고객
where 도시 ='서울특별시';

select 도시
,count(*) As 고객수
,AVG(마일리지) AS 평균마일리지
From 고객
group by 도시;

select 도시
,count(*) As 고객수
,AVG(마일리지) AS 평균마일리지
From 고객
group by 1;

select 도시
,count(*) AS 고객수
,AVG(마일리지) AS 평균마일리지
From 고객
Group by 도시 
Having Count(*) >= 10;

select 도시
From 고객
where 고객번호 like 'T%'
group by 도시
Having sum(마일리지) >=1000;

select 도시
,count(*) AS 고객수
,AVG(마일리지) AS 평균마일리지
From 고객
WHere not 지역 = ' '
group by 도시
with rollup;

select ifnull(도시,'총계') AS 도시
,count(*) AS 고객수
,AVG(마일리지) AS 평균마일리지
From 고객
WHere not 지역 = ' '
group by 도시
with rollup;

select 담당자직위
,도시
,count(*) AS 고객수
From 고객
Where 담당자직위 like '%마케팅%'
group by 담당자직위, 도시
with rollup;

select group_concat(이름)
from 사원;

select group_concat(distinct 지역)
from 고객;

select 도시
,group_concat(고객회사명) AS 고객회사명목록
from 고객
group by 도시;

select year(주문일) as'주문연도' ,count(*) as '주문건수'
from 주문
group by year(주문일);

select 제품명,재고 as '재고합'
from 제품
where 제품명 like '%아이스크림%';

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
        WHEN 마일리지 >= 50000 THEN 'VIP고객'
        ELSE '일반고객'
    END AS 마일리지구분
FROM 한빛무역.고객;







