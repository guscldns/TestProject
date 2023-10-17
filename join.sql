use test;

select *
from player, team
where player.team_id = team.team_id;
/* player에 있는 team_id 기준으로 team 테이블의 정보를 엮어라 */

select p.player_id, p.player_name, t.team_id, t.Region_name
from player p, team t /*player테이블은 p라고 한다, team 테이블은 t라고 한다 */
where p.team_id = t.team_id;

/*tabel 3개 join*/
select *
from player p, team t, stadium s
where p.team_id = t.team_id /* 일단 2개의 테이블을 먼저 엮는다 */
and t.stadium_id = s.stadium_id;

/* 교집합 Inner join, | left join: A와 B를 합칠 때 B에서는 A에 있는 값만 더해진다, 없는 값은 null 처리 | right join : A(왼)와 B(오)를 합칠 때 A에서는 B에 있는 값만 더해진다, 없는 값은 null 처리, 단 연관정보가 없으면 없는 정보 모두 null 처리*/
/* player_id, name,   team_id                           team_id       team_name          area
1           오승환   K01                                 K01             롯데                  서울
2           알파코   K03                                 K02             한화                  경기
3           윤인수   K04                                 K03             LG                    부산
Left 조인 결과
player_id, name,   team_id      team_id       team_name          area
1           오승환   K01           K01             롯데              서울
2           알파코   K03           K03             LG               부산
3           윤인수   K04           null            null             null
Right 조인 결과
player_id, name,   team_id              team_name          area
1           오승환    K01                      롯데            서울
2           알파코    K03                       LG            부산
null        null    null                      한화            경기 >> k02가 있지만 엮일 수 없어서 null 처리 */
