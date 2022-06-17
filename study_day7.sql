#데이터 타입 학습 - 오늘은 암기 위주로 해야겠다. / 단 자리값 암기는 필요 없을듯..?
#1. 문자형 데이터 타입
#CHAR[(M)] 고정 길이를 갖는 문자열을 저장. M의 범위는 1~255이다.
#VARCHAR[(M)] 가변 길이를 갖는 문자열을 저장. M의 범위는 1~65535 / 입력 된 값보다 적은 수 일 때는 그 값만 저장한다.
#TINYTEXT[(M)] 최대 255 byte의 문자열을 저장 할 수 있다.
#TEXT[(M)] 최대 65535 byte의 문자열을 저장 할 수 있다.
#MEDIUMTEXT[(M)] 최대 16777215 byte의 문자열을 저장 할 수 있다.
#LONGTEXT[(M)] 최대 4294967295 byte의 문자열을 저장 할 수 있다. / Table에서 Desc 항목은 어느 타입을 쓸지에 대해선 나중에 실무자에게 물어보는 시간을 가지면 좋을 것 같다.(아마.. 회식 자리?)
#ENUM('value1','value2',...) 열거형 데이터 타입, 정해진 몇가지 값들 중 하나만 저장 / 최대 65535의 개별 값을 가지고 있고 내부적으로는 정수 값으로 표현된다.(엑셀의 드롭박스 개념인듯?)
#SET('value1','value2',...) 집합형, 정해진 몇가지 값들 중 여러개를 저장 / 최대 64개의 요소로 구성 될 수 있고 내부적으로는 정수 값으로 표현된다.

#2. 숫자형 데이터 타입
#BIT[(M)] - 1byte / 비트 값 유명. M은 비트 수를 나타내며 1~64사이의 값을 나타냄
#BOOL, BOOLEAN - 이 유형은 TINYINT (1)의 동의어. 0은 false, 0이 아닌 값을 true로 간주한다.
#아래 나오는 타입은 signed와 unsigned로 나뉘며 unsigned는 동일 범위지만 최소값이 0부터 시작하므로 정수들만 표기 된다.
#선언 예시 :  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
#TINYINT[(M)] - 1byte / 범위 256 / sign : -128 ~ 127 , unsigned : 0 ~ 255
#SMALLINT[(M)] - 2byte / 범위 65536 / sign : -32768 ~ 32767 , unsigned : 0 ~ 65535
#MEDIUMINT[(M)] - 3byte / 범위 16777216 / sign : -8388608 ~ 8388607 , unsigned : 0 ~ 16777215
#INT[(M)] - 4byte / 범위 4294967296 / sign : -2147483648 ~ 2147483647 , unsigned : 0 ~ 4294967295
#BIGINT[(M)] - 8byte / 범위 18446744073709551616 / sign : -9223372036854775808 ~ 9223372036854775807 , unsigned : 0 ~ 18446744073709551615
#FLOAT[(M,D)] - 4byte / 이후 범위는 기재가 의미 없어서 byte까지만 인지하기로 함
#DOUBLE[(M,D)] DOUBLE PRECISION[(M,D)], REAL[(M,D)] - 8byte
#FLOAT(p) - 부동 소숫점 숫자. p는 비트 정밀도를 가르키지만, MySQL은 결과 데이터 타입으로 FLOAT 또는 DOUBLE을 사용할지를 결정할 때에만 이 값을 사용한다.
#DECIMAL[(M,D)] - 길이 + 1 , 묶음 고정 소수점 숫자 / M은 전체 자릿수, D는 소수점 자리 수(D가 없을 수도 있음)
#EX ) DECIMAL (5) : -9999 ~ 99999 / DECIMAL(5,3) : -99.999 ~ 99.999 / 총 65자리까지 지원함(M =< 65)

#3. 날짜형 데이터 타입
#DATE - 3byte / YYYY-MM-DD
#TIME - 3byte / HH:MM:SS
#DATETIME - 8byte / YYYY-MM-DD HH:MM:SS / 범위는 1001-01-01 00:00:00 ~ 9999-12-31 23:59:59
#TIMESTAMP[(M)] - 4byte / DATETIME과 표시는 동일하나 범위가 다름 / 1970-01-01 00:00:00 ~ 2037-12-31 23:59:59
#YEAR[(2|4)] - 1byte / 2 혹은 4를 지정 할 수 있으며 2는 70~69, 4는 1970 ~ 2069이다.

#4. 2진형 데이터 타입
#BINARY[(M)] - CHAR와 유사하지만 2진 바이트 문자열을 2진이 아닌 문자열로 저장한다. / M은 바이트 단위의 열 길이를 나타낸다.
#VARBINARY[(M)] - VARCHAR 유형과 유사하지만 2진 바이트 문자열을 2진이 아닌 문자열로 젖아한다. / M은 바이트 단위의 열 길이를 나타낸다.
#TINYBLOB[(M)] - 2진 데이터 타입. 최대 255byte
#BLOB[(M)] - 2진 데이터 타입. 최대 65535byte
#MEDIUMBLOB[(M)] - 2진 데이터 타입. 최대 16777215byte
#LONGBLOB[(M)] - 2진 데이터 타입. 최대 4294967295byte

#5. 묵시적 형 변환(데이터의 형태를 사용자의 의도에 맞춰서 DB가 알아서 형 변환 후 결과 출력한다.)
#아래의 쿼리는 모두 결과값이 동일하다.
#select 100 + 200 from dual;
#select '100' + '200' from dual;

#아래의 쿼리는 숫자와 문자열의 조합이 정상 작동을 알 수 있다.
#select concat(82, '는 대한민국 국가 식별 전화번호 입니다.') from dual;
#위처럼 데이터 형태가 자동으로 변환 하는 것을 묵시적 형 변환이라고 한다.(조합 등)

#6 CAST, CONVERT 함수
#테이블 먼저 생성하기(수기로 직접 작성했으나, 다음에는 CSV 만들어서 넣는게 더 편할 것 같다.)
#create table day7_study
#(
#number varchar(2),
#text varchar(15),
#date varchar(30)
#) character set utf8;
#값 입력
#INSERT INTO study.day7_study (number, text, date) VALUES (1 , 'korea', '2020-04-07 14:00:11');
#INSERT INTO study.day7_study (number, text, date) VALUES (2 , 'USA', '2020-04-07 14:00:13');
#INSERT INTO study.day7_study (number, text, date) VALUES (3 , 'PHP', '2020-04-07 14:00:15');
#INSERT INTO study.day7_study (number, text, date) VALUES (4 , 'JAVA', '2020-04-07 14:00:15');
#INSERT INTO study.day7_study (number, text, date) VALUES (5 , 'python', '2020-04-07 14:00:16');
#INSERT INTO study.day7_study (number, text, date) VALUES (6 , 'law', '2020-04-07 14:00:16');
#INSERT INTO study.day7_study (number, text, date) VALUES (7 , 'cup', '2020-04-07 14:00:17');
#숫자 데이터는 우측정렬 문자 데이터는 좌측 정렬로 출력 된다.

#select cast(100 as char) as num_to_char, cast('100' as signed) as char_to_num from dual;
#select '2016-08-25 03:30:00', cast('2016-08-25 03:30:00' as datetime) as char_to_datetime from dual;

#위에 정리
# 숫자 -> 문자 = cast(data as char) 
# 문자 -> 날짜 = cast(data as datatime)
# 날짜 -> 문자 = cast(data as char)
# 문자 -> 숫자 = cast(data as int)
#위와 같은 방법으로 데이터 타입을 변경 할 수 있다.
#그림 자료는 https://stricky.tistory.com/232를 참고하는게 좋을 것 같다.

#★서칭하다가 MS SQL은 조금 다르다고 하여 코맨트를 퍼왔다.
#MS-SQL일때 다른것이 있는데
#select '100' + '200';
#100200 으로 표현됩니다.

#단, select 100 + '200'; 일때는 연산을 합니다.

#문자열과 숫자의 위치에 따라 연산 순서가 다르니 이것은 직접 해보면서 확인해야 할것 같으며 묵시적 변환은 지양하는 것이 좋습니다.

#100200 : select '100' + '200'
#300 : select '100' + 0 + '200'
#300 : select '100' + 200
#300 : select 0 + '100' + '200'
#100201 : select '100' + '200' + 1
#301 : select ('100' + 200) + 1
#301 : select ('100' + 200) + '1'