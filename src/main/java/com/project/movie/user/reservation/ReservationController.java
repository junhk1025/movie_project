package com.project.movie.user.reservation;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReservationController {
	
	@Autowired
	private IReservationService service;
	

	@RequestMapping(value = "/reservation/movie_screen_time.action", method = {RequestMethod.GET})
	public String movie_screen_time(HttpServletRequest req, HttpServletResponse resp, String bar) {
		
		//지점 
		List<ReservationDTO> areaList = service.areaList();
		
		//지점, 관 불러오기
		List<ReservationDTO> areaSpotList = service.areaSpotList(); 
		
		req.setAttribute("areaList", areaList);
		req.setAttribute("areaSpotList", areaSpotList);
		req.setAttribute("bar", bar);
		
		return "user.reservation.movie_screen_time";
	}
	
	//지역 클릭시 지점 가져오기
	@ResponseBody
	@RequestMapping(value = "/movie_spot.action", method = {RequestMethod.POST})
	public List<ReservationDTO> movie_spot(HttpServletRequest req, HttpServletResponse resp, String area) {
		
		//String area = (String)req.getParameter("area");
		//System.out.println(area);
		List<ReservationDTO> spotList = service.spotList(area);
		
		
		return spotList;
	}
	
	//지점 클릭시 영화 가져오기
	@ResponseBody
	@RequestMapping(value = "/movie_list.action", method = {RequestMethod.POST})
	public List<ReservationDTO> movie_list(HttpServletRequest req, HttpServletResponse resp, @RequestBody ReservationDTO rdto) {

		List<ReservationDTO> movieList = service.movieList(rdto);
		
		return movieList;
	}
	
	//지점 클릭시 영화스크린타임 가져오기
	@ResponseBody
	@RequestMapping(value = "/movie_screen_list.action", method = {RequestMethod.POST})
	public List<ReservationDTO> movie_screen_list(HttpServletRequest req, HttpServletResponse resp, @RequestBody ReservationDTO rdto) {

		List<ReservationDTO> movieScreenList = service.movieScreenList(rdto);
		
		return movieScreenList;
	}
	
	//지점 클릭시 영화리스트
	@ResponseBody
	@RequestMapping(value = "/movie_click_list.action", method = {RequestMethod.POST})
	public List<ReservationDTO> movie_click_list(HttpServletRequest req, HttpServletResponse resp, @RequestBody ReservationDTO rdto) {

		List<ReservationDTO> movieClickList = service.movieClickList(rdto);
			
		return movieClickList;
	}
	
	//지점 클릭시 영화스크린 리스트
	@ResponseBody
	@RequestMapping(value = "/movie_click_screen_list.action", method = {RequestMethod.POST})
	public List<ReservationDTO> movie_click_screen_list(HttpServletRequest req, HttpServletResponse resp, @RequestBody ReservationDTO rdto) {

		List<ReservationDTO> movieClickScreenList = service.movieClickScreenList(rdto);
				
		return movieClickScreenList;
	}

	//영화스크린 클릭시 좌석선택 버튼으로 hidden 값 보내기
	@ResponseBody
	@RequestMapping(value = "/seat_click.action", method = {RequestMethod.POST})
	public List<ReservationDTO> seat_click(HttpServletRequest req, HttpServletResponse resp, @RequestBody ReservationDTO rdto) {
		
		List<ReservationDTO> seatClickList = service.seatClickList(rdto);
		
		return seatClickList;
	}
	
	//좌석 선택 화면
	@RequestMapping(value = "/reservation/movie_select_seat.action", method = {RequestMethod.POST})
	public String movie_select_seat(HttpServletRequest req, HttpServletResponse resp, ReservationDTO rdto, String bar) {
		
		List<ReservationDTO> reservedSeatList = service.reservedSeatList(rdto);
		
		
		req.setAttribute("rdto", rdto);
		req.setAttribute("reservedSeatList", reservedSeatList);
		req.setAttribute("bar", bar);
		
		return "user.reservation.movie_select_seat";
	}
	
	//예약
	@RequestMapping(value = "/reservation/movie_reserve.action", method = {RequestMethod.POST})
	public String movie_reserve(HttpServletRequest req, HttpServletResponse resp, ReservationDTO rdto, String bar) {
		
		String[] seat = rdto.getSeat().split(" ");
		ArrayList<String> seatList = new ArrayList<String>();
		
		for (int i=0; i<seat.length; i++) {
			seatList.add(seat[i]);
			//System.out.println(seatList.get(i));
		}
		
		req.setAttribute("rdto", rdto);
		//req.setAttribute("seatList", seatList);
		req.setAttribute("seat", seat);
		req.setAttribute("bar", bar);
		
		return "user.reservation.movie_reserve";
	}
	
	@RequestMapping(value = "/reservation/reserve_ok.action", method = {RequestMethod.POST})
	public String name(HttpServletRequest req, HttpServletResponse resp, ReservationDTO rdto) {
		
//		System.out.println(rdto.getScreenTimeSeq());
//		System.out.println(rdto.getAdult());
//		System.out.println(rdto.getTeen());
//		System.out.println(rdto.getSenior());
//		System.out.println(rdto.getTotal());
//		System.out.println(rdto.getTotalPrice());
		
//		System.out.println(rdto.getSaleWay());
//		System.out.println(rdto.getDiscountPrice());
//		System.out.println(rdto.getPayWay());
//		System.out.println(rdto.getPayPrice());
		//System.out.println(rdto.getSeat());
		
		String[] seat = rdto.getSeat().split(" ");
		
		ArrayList<String> seatList = new ArrayList<String>();
		
		for (int i=0; i<seat.length; i++) {
			seatList.add(seat[i]);
			System.out.println(seat[i]);
		}
		
		int reserveResult = service.reserveResult(rdto); //예약 삽입
		int reservePayResult = service.reservePayResult(rdto); //총 금액 삽입
		int seatResult = service.seatResult(seatList); //좌석 삽입
		int saleResult = service.saleResult(rdto); //할인 삽입
		int payResult = service.payResult(rdto); //결제 삽입
		int mileageResult = service.mileageResult(rdto);//마일리지 삽입
		
		
		try {
			
			PrintWriter writer = resp.getWriter();
			
			writer.write("<script>");
			
			// && reservePayResult == 1 && seatResult == 1 && saleResult == 1 && payResult == 1
			
			if (reserveResult == 1 && reservePayResult == 1 && saleResult == 1 && payResult == 1 && seatResult == seatList.size() && mileageResult == 1) {
				writer.print("location.href='/movie/user/usermain.action?bar=0';");
			} else {
				writer.print("alert('failed'); history.back();");
			}
			
			writer.write("</script>");
			writer.close();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return "";
		
	}
	
}















