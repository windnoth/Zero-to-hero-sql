#테이블 생성
create table select_test 
(
name varchar(50),
dept_cd varchar(1),
phone varchar(15),
address varchar(100)
) character set utf8;
desc select_test;

#생성한 테이블의 모든 칼럼을 선택 *= 아스타
SELECT * FROM study.select_test; 

#하단 내용은 값을 추가하는 부분
INSERT INTO study.select_test (name, dept_cd, phone, address) VALUES ('홍길동', 'A', '01023456789', '조선 한양읍');
INSERT INTO study.select_test (name, dept_cd, phone, address) VALUES ('손흥민', 'A', '0112345434', '영국 런던');
INSERT INTO study.select_test (name, dept_cd, phone, address) VALUES ('박찬호', 'C', '01023433456', '충남 공주');
INSERT INTO study.select_test (name, dept_cd, phone, address) VALUES ('김유신', 'D', '0187766645', '신라 경주');
INSERT INTO study.select_test (name, dept_cd, phone, address) VALUES ('박나래', 'D', '0192929384', '서울특별시 영등포구');
INSERT INTO study.select_test (name, dept_cd, phone, address) VALUES ('강감찬', 'E', '01023432123', '고려'); 

#원하는 컬럼만 출력하는 방법
select name, phone from select_test;

#where 명령어 실습 = where은 특정한 조건에 해당 하는 부분의 row를 불러온다
select * from study.select_test

where dept_cd = 'A';

#Expression 실습 = 칼럼 데이터 외의 문자열을 출력 시킨다
#select name, '문자열' from study.select_test
#복수의 항목도 가능한가? 아래와 같은 방법은 되지 않는 점 확인 하였다.
#select name, phone, '문자열' from study.select_test

#컬럼명 대신 별칭(Alias)을 사용하기
#select name as 이름, '님 안녕하세요!!' as 인사문구 from study.select_test

#Distinct로 중복된 값을 제외하고 출력하기
#select distinct dept_cd from study.select_test;

#연결 연산자 함수로 칼럼 값을 붙여서 출력 하기
#select concat(name, '의 부서코드는 ', dept_cd, '입니다.') from study.select_test;
#where을 통해 특정 값을 가진 항목의 row에 연결 함수를 적용하기
#select concat(name, '의 부서코드는 ', dept_cd, '입니다.')
#from study.select_test
#where name = '손흥민'