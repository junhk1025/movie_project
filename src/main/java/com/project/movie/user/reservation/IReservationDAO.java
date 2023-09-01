package com.project.movie.user.reservation;

import java.util.ArrayList;
import java.util.List;

public interface IReservationDAO {

	List<ReservationDTO> areaSpotList();

	List<ReservationDTO> areaList();

	List<ReservationDTO> spotList(String area);

	List<ReservationDTO> movieList(ReservationDTO rdto);

	List<ReservationDTO> movieScreenList(ReservationDTO rdto);

	List<ReservationDTO> movieClickList(ReservationDTO rdto);

	List<ReservationDTO> movieClickScreenList(ReservationDTO rdto);

	List<ReservationDTO> seatClickList(ReservationDTO rdto);

	List<ReservationDTO> reservedSeatList(ReservationDTO rdto);

	int reserveResult(ReservationDTO rdto);

	int reservePayResult(ReservationDTO rdto);

	int seatResult(ArrayList<String> seatList);

	int saleResult(ReservationDTO rdto);

	int payResult(ReservationDTO rdto);

	int mileageResult(ReservationDTO rdto);

}
