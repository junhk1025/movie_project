--ReservationQuery.SQL


SELECT * FROM tblMovie mv
	INNER JOIN tblScreenMovie sm ON mv.seq = sm.movieSeq
		INNER JOIN ;
	
SELECT a.seq AS  FROM tblArea a
	INNER JOIN tblSpot s ON a.seq = s.areaSeq
		INNER JOIN tblHall h ON s.seq = h.spotSeq
			INNER JOIN tblMovie mv ON m.movieSeq = mv.seq;

--지역
SELECT * FROM tblArea;
		
--영화관 지역+지점
CREATE OR REPLACE VIEW vwSpot
AS 
SELECT s.seq AS spotSeq, s.spot AS spot, a.city AS city FROM tblArea a
	INNER JOIN tblSpot s ON a.seq = s.areaSeq; WHERE a.city = '서울';
	
SELECT * FROM vwspot WHERE city ='경기/인천';

SELECT * FROM tblMovie;

SELECT DISTINCT age, name FROM (
		select a.*, 
			(select name from tblMovie where seq = movieSeq) as name,
			(select age from tblMovie where seq = movieSeq) as age,	
				(select hall from tblHall where seq = hallSeq  ) as hall,
					(select spot  from tblSpot where seq = spotSeq) as spot,
						(SELECT areaSeq FROM tblSpot WHERE seq = spotSeq) AS area
							from 
								(
									select si.*, 
									(select movieSeq from tblScreenMovie where seq = si.screenMovieSeq) as movieSeq, 
									(select spotSeq from tblScreenMovie where seq = si.screenMovieSeq) as spotSeq
										from tblScreenInfo si
								) a) AreaMovie
									INNER JOIN tblArea a ON AreaMovie.area = a.seq;
	
								
(select si.*, (select movieSeq from tblScreenMovie where seq = si.screenMovieSeq) as movieSeq, (select spotSeq from tblScreenMovie where seq = si.screenMovieSeq) as spotSeq	from tblScreenInfo si)	
							
--mv.name, mv.img, mv.age, ash.spot
--, st.seq AS screenTimeSeq, st.startTime, st.endTime
CREATE OR REPLACE VIEW vwMovieScreen
AS
SELECT DISTINCT mv.name, mv.img, mv.age, ash.areaSeq, ash.city, ash.spotSeq, ash.spot, ash.hallSeq, ash.hall, sif.seq AS screenInfoSeq, sif.DAY, sif.dimension FROM tblMovie mv
	INNER JOIN tblScreenMovie sm ON mv.seq = sm.movieSeq
		INNER JOIN (SELECT a.seq AS areaSeq, a.city, s.seq as spotSeq, spot, h.seq AS hallSeq, h.hall AS hall FROM tblArea a 
						INNER JOIN tblSpot s ON a.seq = s.areaSeq
							INNER JOIN tblHall h ON s.seq = h.spotSeq) ash ON sm.spotSeq = ash.spotSeq
			INNER JOIN tblScreenInfo sif ON sif.screenMovieSeq = sm.seq AND sif.hallseq = ash.hallSeq
				INNER JOIN tblScreenTime st ON st.screenInfoSeq = sif.seq;
			--WHERE ash.spot = '가산디지털' and sif.DAY = '2020-03-19';
			
SELECT * FROM vwMovieScreen WHERE spot = '가산디지털' and DAY = '2020-04-01';
	
--영화,지점,지역,상영시간
CREATE OR REPLACE VIEW vwMovieScreenSeat
AS
SELECT DISTINCT mv.seq AS movieSeq, mv.name, mv.img, mv.age, ash.areaSeq, ash.city, ash.spotSeq, ash.spot, ash.hallSeq, ash.hall, sif.seq AS screenInfoSeq, sif.DAY, sif.dimension, st.seq AS screenTimeSeq, st.startTime AS startTime, st.endTime AS endTime FROM tblMovie mv
	INNER JOIN tblScreenMovie sm ON mv.seq = sm.movieSeq
		INNER JOIN (SELECT a.seq AS areaSeq, a.city, s.seq as spotSeq, spot, h.seq AS hallSeq, h.hall AS hall FROM tblArea a 
						INNER JOIN tblSpot s ON a.seq = s.areaSeq
							INNER JOIN tblHall h ON s.seq = h.spotSeq) ash ON sm.spotSeq = ash.spotSeq
			INNER JOIN tblScreenInfo sif ON sif.screenMovieSeq = sm.seq AND sif.hallseq = ash.hallSeq
				INNER JOIN tblScreenTime st ON st.screenInfoSeq = sif.seq;
			
SELECT * FROM vwMovieScreenSeat WHERE DAY = '2020-04-01' ORDER BY movieSeq, startTime;
			
--영화,지점,지역,상영시간 + 좌석
--뷰만들면 X
SELECT DISTINCT mss.*, (SELECT count(s.seat) AS cnt FROM tblReservation r
	INNER JOIN tblSeat s ON r.seq = s.reservationSeq WHERE r.screenTimeSeq = mss.screenTimeSeq) AS seatCnt FROM vwMovieScreenSeat mss
	INNER JOIN tblReservation r ON r.screenTimeSeq = mss.screenTimeSeq
		INNER JOIN tblSeat s ON s.reservationSeq = r.seq
			WHERE DAY = '2020-04-01' AND name='정직한 후보' ORDER BY movieSeq, startTime;

--영화 클릭시 영화리스트 가져오기
SELECT DISTINCT mss.movieSeq, mss.name, mss.img, mss.age, mss.areaSeq, mss.city, mss.spotSeq, mss.spot, mss.hallSeq, mss.hall, mss.screenInfoSeq, mss.DAY, mss.dimension FROM vwMovieScreenSeat mss
	INNER JOIN tblReservation r ON r.screenTimeSeq = mss.screenTimeSeq
		INNER JOIN tblSeat s ON s.reservationSeq = r.seq
			WHERE DAY = '2020-04-01' AND name='정직한 후보';

--영화 리스트 클릭시 좌석선택 버튼으로 hidden 값들 보내기
SELECT DISTINCT mss.movieSeq, mss.name, mss.img, mss.age, mss.areaSeq, mss.city, mss.spotSeq, mss.spot, mss.hallSeq, mss.hall, mss.screenInfoSeq, mss.DAY, mss.dimension, mss.screenTimeSeq, mss.startTime, mss.endTime FROM vwMovieScreenSeat mss
	INNER JOIN tblReservation r ON r.screenTimeSeq = mss.screenTimeSeq
		INNER JOIN tblSeat s ON s.reservationSeq = r.seq
			WHERE DAY = '2020-04-01' AND name='정직한 후보' AND mss.screenTimeSeq = 55;
		
		
SELECT count(s.seat) AS seatCnt FROM tblReservation r
	INNER JOIN tblSeat s ON r.seq = s.reservationSeq;

			WHERE DAY = '2020-04-01' ORDER BY movieSeq, startTime;
		
--해당시간 좌석 총 개수
CREATE OR REPLACE VIEW vwScreenTime
AS
SELECT * FROM tblScreenTime st
	INNER JOIN tblReservation r ON r.screenTimeSeq = st.seq
		INNER JOIN tblSeat s ON s.reservationSeq = r.seq;
			WHERE st.seq = 55;
			
			
SELECT * FROM tblMovie ORDER BY seq;
			
SELECT * FROM vwMovieScreen ms
	INNER JOIN tblReservation r ON ms.screenTimeSeq = r.screenTimeSeq;

WHERE spot = '가산디지털' and DAY = '2020-04-01';




--예매된 좌석 가져오기
SELECT * FROM tblScreenTime st
	INNER JOIN tblReservation r ON st.seq = r.screenTimeSeq
		INNER JOIN tblSeat s ON r.seq = s.reservationSeq
			WHERE st.seq = 55;

SELECT * FROM tblReservation ORDER BY seq desc;

SELECT max(seq) FROM tblReservation;


--예매 테이블 삽입
SELECT * FROM tblReservation ORDER BY seq DESC;

SELECT tblReservation_seq.nextVal FROM dual;

DROP SEQUENCE tblReservation_seq;
CREATE SEQUENCE tblReservation_seq START WITH 736;

SELECT * FROM tblScreenInfo;
SELECT * FROM tblScreenTime;

--예매 금액
SELECT tblReservePay_seq.nextval FROM dual;
SELECT * FROM tblReservePay ORDER BY seq DESC;
INSERT INTO tblReservePay VALUES (tblReservePay_seq.nextval, 18000, (SELECT max(seq) FROM tblReservation));


DROP SEQUENCE tblReservePay_seq;
CREATE SEQUENCE tblReservePay_seq START WITH 736;

--좌석
SELECT tblSeat_seq.nextval FROM dual;
SELECT * FROM tblSeat ORDER BY seq DESC;
DROP SEQUENCE tblSeat_seq;
CREATE SEQUENCE tblSeat_seq START WITH 684;

insert INTO tblSeat VALUES (get_seq, 'P6', (SELECT max(seq) FROM tblReservation));



--할인
SELECT * FROM tblSale ORDER BY seq DESC;
SELECT tblSale_seq.nextval FROM dual;
DROP SEQUENCE tblSale_seq;
CREATE SEQUENCE tblSale_seq START WITH 192;

INSERT INTO tblSale VALUES (tblSale_seq.nextval, 1, 0, (SELECT max(seq) FROM tblReservation));


--마일리지
SELECT * FROM tblMileage ORDER BY seq DESC;
SELECT tblMileage_seq.nextval FROM dual;
DROP SEQUENCE tblMileage_seq;
CREATE SEQUENCE tblMileage_seq START WITH 192;



--결제
SELECT * FROM tblPay ORDER BY seq DESC;
SELECT tblPay_seq.nextval FROM dual;
DROP SEQUENCE tblPay_seq;
CREATE SEQUENCE tblPay_seq START WITH 192;

INSERT INTO tblPay VALUES (tblPay_seq.nextval, 1, 18000, (SELECT max(seq) FROM tblSale));


--시퀀스
CREATE SEQUENCE tblReservation_seq START WITH 736;
CREATE SEQUENCE tblReservePay_seq START WITH 736;
CREATE SEQUENCE tblSeat_seq START WITH 684;
CREATE SEQUENCE tblSale_seq START WITH 192;
CREATE SEQUENCE tblPay_seq START WITH 192;
CREATE SEQUENCE tblMileage_seq START WITH 192;

--좌석 시퀀스 함수
CREATE OR REPLACE 
   FUNCTION get_seq
RETURN 
   NUMBER  AS num NUMBER ;
BEGIN
   SELECT tblSeat_seq.nextval
   INTO num
   FROM dual;
RETURN num;
END;

SELECT * FROM tblArea;
SELECT * FROM tblSpot;


SELECT * FROM tblSpot s
	INNER JOIN tblArea a ON s.areaSeq = a.seq
		ORDER BY s.seq ASC;

