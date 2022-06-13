#4일차 테이블 생성
#create table study.day4_study
#(
#country_name varchar(100),
#capital_city varchar(100),
#continent varchar(100)
#) character set utf8;
#값 입력
#INSERT INTO study.day4_study (country_name, capital_city, continent) VALUES ('USA', 'Washington', 'America');
#INSERT INTO study.day4_study (country_name, capital_city, continent) VALUES ('England', 'London', 'Europe');
#INSERT INTO study.day4_study (country_name, capital_city, continent) VALUES ('S.Korea', ' Seoul', 'Asia');
#INSERT INTO study.day4_study (country_name, capital_city, continent) VALUES ('Australia', ' Canberra', 'Oceania');
#INSERT INTO study.day4_study (country_name, capital_city, continent) VALUES ('Ghana', 'Accra', 'Africa');
#INSERT INTO study.day4_study (country_name, capital_city, continent) VALUES ('Argentina', 'Buenos aires', 'America');

#대/소문자 변환 함수(lower/upper) / 띄어 쓰기 있으면 따옴표 넣어야함
#select country_name as '기본 값', lower(country_name) as 소문자, upper(country_name) as 대문자
#from study.day4_study

#length 함수(글 길이를 세어주는 함수, 기호도 카운트해준다.)
#select country_name, length(country_name) as '글 길이'
#from study.day4_study

#concat 함수(별첨 {name}의 수도는 {city}입니다.)
#select concat(country_name, '의 수도는 ', capital_city,' 입니다.') as '수도 소개'
#from study.day4_study;

#substr,mid,substring 함수(3개다 똑같음, 불러내는 글자가 더이상 없을 시 공백으로 출력)
#select continent as '기본 값', substr(continent,2,2) as substr, mid(continent,3,3) as mid, substring(continent,4,2) as substring

#instr 함수(해당 문자가 위치한 지점을 알려줌, 없으면 0)
#select continent as '기본 값', instr(continent, 'A') as instr
#from study.day4_study;

#lpad,rpad 함수(지정한 글자수 보다 해당 값이 짧을 때 left, right에서 지정된 값으로 개수를 채워줌)
#select continent as '기본 값', lpad(continent,10,'A') as lpad, rpad(continent,10,'A') as rpad
#from study.day4_study;

#trim/ltrim/rtrim 함수(공백을 제거함)
#select capital_city as '기본 값', trim(capital_city) as trim, ltrim(capital_city) as ltrim, rtrim(capital_city) as rtrim
#from study.day4_study;

#replace 함수(특정 문자열을 찾아서 변환해줌)
#select continent as '기본 값', replace(continent, 'A', '@') as 'replace'
#from study.day4_study;