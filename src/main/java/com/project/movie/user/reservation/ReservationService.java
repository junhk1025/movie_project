package com.project.movie.user.reservation;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService implements IReservationService {

	@Autowired
	private IReservationDAO dao;
	
	@Override
	public List<ReservationDTO> areaList() {

		List<ReservationDTO> areaList = dao.areaList();
		
		return areaList;
	}
	
	@Override
	public List<ReservationDTO> areaSpotList() {

		List<ReservationDTO> areaSpotList = dao.areaSpotList();
		
		return areaSpotList;
	}
	
	//지역 클릭시 지점 리스트
	@Override
	public List<ReservationDTO> spotList(String area) {

		List<ReservationDTO> spotList = dao.spotList(area);
		
		return spotList;
	}
	
	//지점 클릭시 영화 리스트
	@Override
	public List<ReservationDTO> movieList(ReservationDTO rdto) {
		
		List<ReservationDTO> movieList = dao.movieList(rdto);
		
		return movieList;
	}
	
	//지점 클릭시 영화스크린타임 가져오기
	@Override
	public List<ReservationDTO> movieScreenList(ReservationDTO rdto) {
		
		List<ReservationDTO> movieScreenList = dao.movieScreenList(rdto);
		
		return movieScreenList;
	}
	
	//영화 클릭시 영화 리스트
	@Override
	public List<ReservationDTO> movieClickList(ReservationDTO rdto) {

		List<ReservationDTO> movieClickList = dao.movieClickList(rdto);
		
		return movieClickList;
	}
	
	//영화 클릭시 영화 스크린 리스트
	@Override
	public List<ReservationDTO> movieClickScreenList(ReservationDTO rdto) {

		List<ReservationDTO> movieClickScreenList = dao.movieClickScreenList(rdto);
		
		return movieClickScreenList;
	}
	
	//영화스크린 클릭시 좌석선택 버튼으로 hidden 값 보내기
	@Override
	public List<ReservationDTO> seatClickList(ReservationDTO rdto) {

		List<ReservationDTO> seatClickList = dao.seatClickList(rdto);
		
		return seatClickList;
	}
	
	//예약된 좌석 리스트
	@Override
	public List<ReservationDTO> reservedSeatList(ReservationDTO rdto) {
		
		List<ReservationDTO> reservedSeatList = dao.reservedSeatList(rdto);
		
		return reservedSeatList;
	}
	
	//예약 삽입
	@Override
	public int reserveResult(ReservationDTO rdto) {

		return dao.reserveResult(rdto);
	}
	
	//총 금액 삽입
	@Override
	public int reservePayResult(ReservationDTO rdto) {
		
		return dao.reservePayResult(rdto);
	}
	
	//좌석 삽입
	@Override
	public int seatResult(ArrayList<String> seatList) {

		return dao.seatResult(seatList);
	}
	
	//할인 삽입
	@Override
	public int saleResult(ReservationDTO rdto) {

		return dao.saleResult(rdto);
	}
	
	//결제 삽입
	@Override
	public int payResult(ReservationDTO rdto) {

		return dao.payResult(rdto);
	}
	
	//마일리지 삽입
	@Override
	public int mileageResult(ReservationDTO rdto) {

		return dao.mileageResult(rdto);
	}
	
}
