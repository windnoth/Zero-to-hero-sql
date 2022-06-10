#1.테이블 생성
#create table Day3_Study
#(
#name varchar(50),
#math int(10),
#english int(10),
#korean int(10)
#)character set utf8;

#2.값 입력
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('호날두', 98, 65, 56);
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('메시', 87, 76, 87);
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('치차리토', 76, 87, 75);
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('살라', 78, 88, 55);
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('라모스', 56, 90, 89);
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('모드리치', 90, 95, 78);
#INSERT INTO Day3_Study (name, math, english, korean) VALUES ('케인', 99, 82, 83);
#select * from Day3_Study;

#3.합계 산술 연산자 생성
#select name,  math, english, korean, math + english + korean as total
#from study.day3_study;

#4.평균 산술 연산자 생성
#Select name, math, english, korean, (math + english + korean)/3 as avg
#from study.day3_study;

#5.where 절에 비교 연산자 사용하기

#5-1.국어 점수 80점 이상 찾기
#select name, math, english, korean
#from study.day3_study
#where korean >= 80;

#5-2.평균 점수 80점 이상 찾기
#select name, math, english, korean
#from study.day3_study
#where (math + english + korean) / 3 >= 80;

#6.order by 사용하여 정렬 후 출력하기
#6-1.(점수 낮은 순)
#select *
#from study.day3_study
#order by math ;

#6-2.(점수 높은 순)
#select *
#from study.day3_study
#order by math desc;

#7. 집합 연산자 사용하기
#7-1. 테이블 추가 하기
#create table study.day3_study2
#(
#name varchar(50),
#math int(10),
#english int(10),
#korean int(10)
#) character set utf8;

#값 입력
#INSERT INTO Day3_Study2 (name, math, english, korean) VALUES ('차범근', 78, 90, 78);
#INSERT INTO Day3_Study2 (name, math, english, korean) VALUES ('서정원', 68, 99, 68);
#INSERT INTO Day3_Study2 (name, math, english, korean) VALUES ('고종수', 84, 96, 98);
#INSERT INTO Day3_Study2 (name, math, english, korean) VALUES ('박지성', 67, 68, 75);
#INSERT INTO Day3_Study2 (name, math, english, korean) VALUES ('최순호', 88, 93, 68);

#7-3 Union 사용하기(중복값 제거 후 두 집합 더해서 결과 출력)
#select *
#from day3_study
#union
#select *
#from day3_study2

#7-4 Union all 사용하기(중복값 제거 하지 않고 두 집합 더해서 결과 출력)
#select *
#from day3_study
#union all
#select *
#from day3_study2

#7-5 Intersect 사용하기(중복 값만 출력하기/오라클에서 지원/교집합)
#7-5-1 테이블 생성
#create table day3_study3_1
#(
#name varchar(50),
#student_no varchar(10)
#);

#create table day3_study3_2
#(
#name varchar(50),
#student_no varchar(10)
#);
#값 입력
#INSERT INTO day3_study3_1 (name, student_no) VALUES ('조단', '111');
#INSERT INTO day3_study3_1 (name, student_no) VALUES ('호나우두', '112');
#INSERT INTO day3_study3_1 (name, student_no) VALUES ('나달', '113');
#INSERT INTO day3_study3_1 (name, student_no) VALUES ('조코비치', '114');

#INSERT INTO day3_study3_2 (name, student_no) VALUES ('조단', '111');
#INSERT INTO day3_study3_2 (name, student_no) VALUES ('호나우두', '112');
#INSERT INTO day3_study3_2 (name, student_no) VALUES ('조현우', '201');
#INSERT INTO day3_study3_2 (name, student_no) VALUES ('루이스', '202');

#select *
#from math_student
#intersect
#select *
#from korean_student;

#7-6 Minus 사용하기(중복을 제외한 값을 출력하기/오라클에서 지원/차집합)
#select *
#from math_student
#minus
#select *
#from korean_student;
