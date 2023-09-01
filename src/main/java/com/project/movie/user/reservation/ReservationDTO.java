package com.project.movie.user.reservation;

import lombok.Data;

@Data
public class ReservationDTO {
	
	//영화
	private String movieSeq;
	private String name;
	private String runtime;
	private String openday;
	private String story;
	private String img;
	private String director;
	private String age;
	
	//상영 영화
	private String screenMovieSeq;
	private String state;
	
	//지점
	private String spotSeq;
	private String spot;
	
	//지역
	private String areaSeq;
	private String city;
	
	//관
	private String hallSeq;
	private String hall;
	
	//상영 정보
	private String screenInfoSeq;
	private String day;
	private String dimension;
	
	//상영 시간
	private String screenTimeSeq;
	private String startTime;
	private String endTime;
	
	//예매
	private String reservationSeq;
	private String adult;
	private String teen;
	private String senior;
	private String total;
	
	//예매 금액
	private String reservePaySeq;
	private String totalPrice;
	
	//좌석
	private String seatSeq;
	private String seat;
	private String seatCnt;
	
	//할인
	private String saleSeq;
	private String saleWay;
	private String discountPrice;
	
	//결제
	private String paySeq;
	private String payWay;
	private String payPrice;
	
	//마일리지
	private String mileageSeq;
	private String detail;
	private String point;
	
	
	
}

















