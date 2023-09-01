-- 결제
DELETE FROM tblPay;

-- 적립 내역(유저 삭제 후)
DELETE FROM tblMileage;

-- 좌석
DELETE FROM tblSeat;

-- 예매 금액
DELETE FROM tblReservepay;

-- 할인
DELETE FROM tblSale;

-- 예매
DELETE FROM tblReservation;


commit;