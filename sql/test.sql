use test;

create table test(
id int primary key,
name varchar(10) not null,
age int not null
);

select *
from test;

/* 컬럼 추가 add 사용 */
alter table test add email varchar(20) not null;

select *
from test;

/* 컬럼 삭제 drop column 사용 */
alter table test drop column email;

select *
from test;

/* 컬럼 조건 변경은 modify 사용 */
alter table test modify name varchar(100) not null;

/* 테이블 이름 변경은 modify 사용 */
rename table test to test2;

/* 테이블 안의 데이터 삭제 TRUNCATE TABLE >> AUTO commit 이 걸리면 경우가 있어 save가 된다(delete 는 안된다) */

/* (데이터 핸들링 : DML) */

select *
from test2;

insert into test2 (id, name, age) values(1, "오승환", 99);

select *
from test2;

/* 데이터를 다 넣을 경우 (id, name, age)등 컬럼명은 생략이 가능하다*/
insert into test2 values(2, "알파코", 99);

select *
from test2;

alter table test2 add gender varchar(20);

select *
from test2;

/* 일부 컬럼에만 데이터를 집어넣고 싶으면 test2(id, name, age) 같이 컬럼명을 기재해줘야 한다*/
insert into test2(id, name, age) values(3, "김성수", 99);

select *
from test2;

/* SQL을 처음 깔면 update 막아놨기 때문에 해제 필요 */
set SQL_SAFE_UPDATES =0;

/* (요주의!) 업데이트 시 특정 데이터를 기재해주지 않으면 모든 데이터가 동일하게 변경된다 */
update test2
set age = 40
where name = '오승환';

select *
from test2;

commit; /* SQL 서버에 commit 해줘야 다른 프로그램에서 DB를 조회할 때 수정된 데이터를 볼 수 있다*/

/* (요주의!) delete 시 행을 명시해줘야 모든 데이터가 날아가지 않는다 */
delete 
from test2
/* 중복 이름이 있을 수도 있기 때문에 키로 삭제한다 */
where id = 1 ;

select *
from test2;

/* 테이블의 모든 정보를 조회 */
select player_id as 아이디, player_name, weight, height
from player;
where height < 180 ; /* where = 조건절 */ 

/* 팀 id의 유니크 값을 알려면 distinct */
select distinct team_id
from player;

/* 컬럼 연산이 가능 */
select player_name, height - weight
from player;

select player_name, height - weight as '키와 몸무게의 차' /* '키와 몸무게의 차' : 띄어쓰기 있으면 오류 생기니 묶어줘야 한다*/
from player;

select player_name, height * weight as '키와 몸무게의 곱' 
from player;

/*concat(height, 'cm') : height열에 cm을 붙여서 출력하라*/ 
select player_name, concat(height, ' cm') as '키에 cm 붙여서 출력' 
from player;

select *
from test2;

set autocommit =0;

delete
from test2;

select *
from test2;

rollback;

select *
from test2;

use test;

select *
from player;

select *
from player
where height >= 170;

select *
from player
where height between 170 and 180;

select *
from player
where position != 'DF';

select *
from player
/* null 값 찾는 구문, 현재 받은 데이터는 null이 아니라 빈 문자열이라 해당 데이터에서는 못찾음 */
where E_PLAYER_NAME is null;

select *
from player
where position in ('DF', 'FW'); /* 속하는 애들만*/

select *
from player
where position = 'DF'
and weight >= 70
and Team_id = 'K03';

select *
from player
where player_name like '김__'; /* 김으로 시작하고 --(두글자) */ 

select *
from player
where player_name like '김%'; /* 김으로 시작하는 모든것 % */

select *
from player
where player_name like '_태_'; /* 3글자 인데 가운데 태 있는 것 */

select *
from player
where player_name like '%태%'; /* 가운데 태가 들어가는 모든 것 */

select player_name, lower(E_PLAYER_NAME) /* lower 소문자 */
from player;

select length(player_name), lower(E_PLAYER_NAME) /* length : 길이 */
from player;

select concat(player_name, '님'), lower(E_PLAYER_NAME) /* concat: 추가 */
from player;

select substr(player_name, 2, 3) /* substr 2번째 인덱스부터 3번째 인덱스까지*/
from player;

select substr(player_name, 1) /* substr 1이면 처음부터 끝까지*/
from player;

select substr(player_name, 1) /* substr 1이면 처음부터 끝까지*/
from player;

select player_name, height, case
								when height >= 180
                                 then 'High'
								when height >= 170
                                 then 'mid'
								when height >= 160
								 then 'small'
								else 'unknown'
                                end as 키분류
from player;

select player_name, team_id , weight, case
										when weight <= 70
											then '정상'
										when weight <= 80
                                            then '중간'
										when weight <= 90
                                            then '과체중'
										else '위험'
                                        end as 비만률
from player;

select team_id, count(player_id)
from player
group by team_id;

select team_id, count(player_id), avg(weight), sum(height), max(weight), min(weight)
from player
group by team_id;

select team_id, count(*), avg(weight), sum(height), max(weight), min(weight)
from player
group by team_id;

select team_id, count(*)
from player
group by team_id
HAVING count(*) > 10; /*조건을 걸 때 where 절 말고 HAVING 절을 써야 한다 */

select team_id, avg(weight)
from player
group by team_id
HAVING avg(weight) >= 72;

select team_id, avg(weight)
from player /* 실행 순서 : table 가져오기 > where 절 > group by >> HAVING으로 filltering */
where height < 170 /* 데이터에 대한 필터링 */
group by team_id
HAVING avg(weight) >= 72; /* group에 대한 필터링 */

select player_name, weight, height
from player
order by weight; /* 오름차순 */

select player_name, weight, height
from player
order by height, weight; /* 이중 정렬 */

select player_name, weight, height
from player
order by weight DESC; /* 내림차순 */

select player_name, weight, height
from player
order by height, weight DESC; /* 이중 정렬, height는 오름차순, weight는 내림차순 */

select player_name, height
from player
order by height DESC
limit 2; /* 최대 2개만 보이기 */
