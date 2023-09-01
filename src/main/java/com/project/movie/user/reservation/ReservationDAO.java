package com.project.movie.user.reservation;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO implements IReservationDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<ReservationDTO> areaList() {

		return template.selectList("movie.areaList");
	}
	
	@Override
	public List<ReservationDTO> areaSpotList() {
		
		
		return template.selectList("movie.areaSpotList");
	}
	
	//지역 클릭시 지점 리스트
	@Override
	public List<ReservationDTO> spotList(String area) {

		return template.selectList("movie.spotList", area);
	}

	//지점 클릭시 영화 리스트
	@Override
	public List<ReservationDTO> movieList(ReservationDTO rdto) {
		
		return template.selectList("movie.movieList", rdto);
	}
	
	//지점 클릭시 영화스크린타임 가져오기
	@Override
	public List<ReservationDTO> movieScreenList(ReservationDTO rdto) {

		return template.selectList("movie.movieScreenList", rdto);
	}
	
	//영화 클릭시 영화 리스트
	@Override
	public List<ReservationDTO> movieClickList(ReservationDTO rdto) {

		return template.selectList("movie.movieClickList", rdto);
	}
	
	//영화 클릭시 영화 스크린 리스트
	@Override
	public List<ReservationDTO> movieClickScreenList(ReservationDTO rdto) {

		return template.selectList("movie.movieClickScreenList", rdto);
	}
	
	//영화스크린 클릭시 좌석선택 버튼으로 hidden 값 보내기
	@Override
	public List<ReservationDTO> seatClickList(ReservationDTO rdto) {

		return template.selectList("movie.seatClickList", rdto);
	}
	
	//예약된 좌석 리스트
	@Override
	public List<ReservationDTO> reservedSeatList(ReservationDTO rdto) {

		return template.selectList("movie.reservedSeatList", rdto);
	}
	
	//예약 삽입
	@Override
	public int reserveResult(ReservationDTO rdto) {

		return template.insert("movie.reserveResult", rdto);
	}
	
	//총 금액 삽입
	@Override
	public int reservePayResult(ReservationDTO rdto) {
		
		return template.insert("movie.reservePayResult", rdto);
	}
	
	//좌석 삽입
	@Override
	public int seatResult(ArrayList<String> seatList) {

		return template.insert("movie.seatResult", seatList);
	}
	
	//할인 삽입
	@Override
	public int saleResult(ReservationDTO rdto) {

		return template.insert("movie.saleResult", rdto);
	}
	
	//결제 삽입
	@Override
	public int payResult(ReservationDTO rdto) {

		return template.insert("movie.payResult", rdto);
	}
	
	//마일리지 삽입
	@Override
	public int mileageResult(ReservationDTO rdto) {

		return template.insert("movie.mileageResult", rdto);
	}
	
}
