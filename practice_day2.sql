#2006년 1월 %%지역 범죄 관련 데이터
#파일은 sacramentocrimejanuary2006에서 참고했음
#SELECT * FROM day2practice.sacramentocrimejanuary2006;

#발생 시각과 구역을 출력함
#select cdatetime,district from sacramentocrimejanuary2006;

#(응용) district에 overlap 되는 수를 구해보기
#필드 지정
#구역 별로 몇건이 발생 되어있는지 카운트
#카운트 명령어 선언 후 overlap이라는 함수 생성 , 대상은 테이블 명칭
#group by 명령어 선언 후 overlap 함수가 1보다 크면 기록 명령
#Select district,
#count(*) as overlap from sacramentocrimejanuary2006
#group by district having overlap>1

#district '에서 발생하였습니다' 표현해보기
#궁금한 점 1. 위에서 선언한 overlap 함수 뒤에 붙일 수 있는 지?
#Select district, '에서 발생하였습니다' from day2practice.sacramentocrimejanuary2006

#district '에서 발생하였습니다' 별칭 사용하기(별칭이란 컬럼 명을 바꿀 수 있는 기능인듯? 기존 as 변경할 것)
#select district as 구역, '에서 발생하였습니다.' as 안내문 
#from day2practice.sacramentocrimejanuary2006;

#범죄 발생 구역 출력하기(중복된 값 제외)
#select distinct district 
#from day2practice.sacramentocrimejanuary2006

#발생 시각과 구역를 연결 연산자 함수로 칼럼 값 붙여서 출력하기
#select concat(cdatetime, '시간에 ' , district, '구역에서 발생하였습니다') 
#from day2practice.sacramentocrimejanuary2006;

#3구역에서 발생한 범죄의 발생 시각을 연결 연산자 함수로 칼럼 값 붙여서 출력 하기
#select concat(cdatetime, '시간에 ' , district, '구역에서 발생하였습니다') 
#from day2practice.sacramentocrimejanuary2006
#where district = '3';

#3구역에서 발생한 범죄의 발생 시각을 연결 연산자 함수로 칼럼 값 붙여서 출력 하기(중복 제외)
#select distinct concat(cdatetime, '시간에 ' , district, '구역에서 발생하였습니다') 
#from day2practice.sacramentocrimejanuary2006
#where district = '3';