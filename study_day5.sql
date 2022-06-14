#본 강의에서부터는 테이블 데이터 입력 없이 SQL로 데이터 입력하기로함
#from dual은 내가 입력한 SQL의 값을 미리 확인 하는 용도, 더미 테이블이다.

#1. round 함수 사용하기(반올림 / 값,자리수 / 음수로 하면 정수 단위도 적용됨)
#select round(112.3456,1),round(112.3456,2),round(112.3456,-1)
#from dual;

#2. truncate 함수 사용하기(내림값, 이하 동문) / 컬럼의 이름도 바꿔보자
#select truncate(123.456,1) as '첫번째 자리', truncate(123.456,2) as '두번째 자리', truncate(123.456,-2) as '십의 자리'
#from dual;

#3. mod 함수 사용하기(나눈 다음에 나머지 값을 남김) / 대상 값 , 나눌 값 / 컬럼에 기호가 들어 갈 수 있을까? = 된다
#select mod(26,3) as '26%3의 나머지', mod(10,9) as '10%9의 나머지', mod(4,2) as '4%2의 나머지'
#from dual;

#4. ceil 함수 사용하기(입력 된 값보다 크지만 제일 가까운 정수)
#select ceil(12.6), ceil(11.5), ceil(13121.4893428349234328423)
#from dual;

#5. floor 함수 사용하기(입력 된 값보다 작지만 제일 가까운 정수) / 음수도 가능할까? = 된다
#select floor(12.6), floor(11.5), floor(-19281.111111)
#from dual;

#6. power 함수 사용하기(첫번째 입력 값을 두번째 입력 값만큼 제곱)
#select power(1,2), power(2,3), power(-3,3), power(-2,-2), power (5,-3)
#from dual;