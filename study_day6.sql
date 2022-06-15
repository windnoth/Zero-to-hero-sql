
#1. 현재 날짜, 시간 출력
#1-1. YYYY-MM-DD HH:MM:SS
#select now(); 
#select sysdate();
#select current_timestamp();

#1-2. YYYY-MM-DD
#select curdate();
#select current_date();

#1-3. HH:MM:SS
#select current_time();

#1-4. YYYYMMDDHHMMSS
#select now()+0;

#1-5. HHMMSS
#select current_time()+0;

#2. 지정된 특정 날짜,시간 출력
#2-1. 요일을 숫자로 출력(1 = 일요일, 7 = 토요일)
#select dayofweek('2022-06-15 16:49:00'); #수요일 표시 기대값 4

#2-2. 요일을 숫자로 출력2(0 = 월요일, 6 = 일요일)
#select weekday('2022-06-15 16:49:00'); #수요일 표시 기대값 2

#2-3. 일자를 출력 / 32일도 될까? = Null 이 출력 됨 / 2월 30일도 될까? = 실제 윤달이 있는 해에만 29일까지 출력 됨, 그 외에는 모두 Null
#select dayofmonth('2022-06-15 16:49:00'); #기대값 15
#select dayofmonth('2022-06-32 16:49:00');
#select dayofmonth('2022-02-29 16:49:00');

#2-4. 한해의 몇번째 날인지 출력
#select dayofyear('2022-06-15 16:49:00'); #기대값 166
#select dayofyear('2022-12-32 00:00:00'); #Null 값 출력 (이로써 실제 존재 하지 않는 일자는 Null이 출력 됨이 확인)

#2-5. 월을 출력
#select month('2022-06-15 16:49:00'); #기대값 6

#2-6. 요일을 영문으로 출력
#select dayname('2022-06-15 16:49:00'); #기대값 wednesday

#2-7. 월을 영문으로 출력
#select monthname('2022-06-15 16:49:00'); #기대값 june

#2-8. 분기를 출력
#select quarter('2022-06-15 16:49:00'); #기대값 2

#2-9. 한해의 몇번째 주인지 출력
#select week('2022-06-15 16:49:00'); #기대값 24

#2-10. 년도를 출력
#select year('2022-06-15 16:49:00'); #기대값 2022

#2-11. 시간을 출력
#select hour('2022-06-15 16:49:00'); #기대값 16

#2-12. 분을 출력
#select minute('2022-06-15 16:49:00'); #기대값 49

#3. 날짜, 시간을 연산하여 출력
#타입 정리
#second - 초 / minute - 분 / hour - 시 / day - 일 / month - 월 / year - 년 / minute_second - 분:초 / hour_minute - 시:분 / day_hour - 일:시
#year_month - 년-월 / hour_second - 시:분:초 / day_minute - 일 시:분 / day_second - 일 시:분:초

#3-1. date_add (대상 값에 추가 / (일자, interval 값 타입)
#select date_add('2022-06-15 16:49:00', interval 1 second);

#3-2. adddate (3-1과 동일)
#select adddate('2022-06-15 16:49:00', interval 10 day);

#3-3. date_sub (대상 값에 차감 / (이하 동문)
#select date_sub('2022-06-15 16:49:00', interval 2 hour);

#3-4 subdate (3-3과 동일)
#select subdate('2022-06-15 16:49:00', interval 2022 year);
#select subdate('2022-06-15 16:49:00', interval 2023 year); #기원전 표시하려면 다른 방법을 찾아봐야 할듯

#4. 시간,초 데이터 변환 출력
#4-1. sec_to_time (초를 분,시로 변환)
#select sec_to_time(500000);
#select sec_to_time(300);
#select sec_to_time(-30); #음수도 변환 된다.

#4-2. time_to_sec(분,시를 초로 변환)
#select time_to_sec('01:10:03');

#5. 대상 값에 개월 수를 추가
#5-1. period_add
#select period_add(2012, 10); #4글자는 YYMM
#select period_add(202201,16); #6글자는 YYYYMM

#6. 입력한 값을 포맷에 맞게 출력
#date_format('일자', '포맷')
# %W - 요일 / %D - 일자 / %Y - 연도(4글자) / %y - 연도(2글자) / %a - 요일 영문 약어 / %d - 일자(2글자) / %e - 일자(최소 1글자) / %m - 월(2글자)
# %c - 월(최소 한글자) / %b - 월(영문) / %j - 해당 연도에서 몇번째 날인지 / %H - 시(2글자,24시간) / %k - 시(최소 1글자,24시간)
# %h - 시(2글자,12시간) / %l - 시(최소 1글자,12시간) / %i - 분(2글자) / %r - 시각(hh:mm:ss A/P) / %T - 시각(24시간 HH:MM:SS)
# %S,s - 초 / %p - 오전/오후(A/P) / %w - 해당 요일중 몇번째 날인지 (0=일요일, 6=토요일) / %U,u - 해당 년에서 몇번째 주 인지

#6-1 오후/오전 구분
#select date_format('2022-06-15 16:49:00','%p');

#6-2 요일 중 몇번째 날인지 구분
#select date_format('2022-06-15 16:49:00', '%w');

#6-3 해당 년에서 몇번째 주인지 구분
#select date_format('2022-06-15 16:49:00', '%u');