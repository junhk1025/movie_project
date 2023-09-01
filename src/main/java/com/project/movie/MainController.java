package com.project.movie;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class MainController {
	
	@Autowired
	private IMovieService service;
	
	@RequestMapping(value="/admin/adminmain.action", method = { RequestMethod. GET })
	public String adminmain(HttpServletRequest req, HttpServletResponse resp) {
				
		String sort = "rate";		
		
		List<MovieDTO> list =  service.list(sort);
		
		req.setAttribute("list", list);
		
		return "admin.admin.adminmain";
	}
	
	//메뉴 선택 할 때 Ajax
	@RequestMapping(value="/admin/adminMenuSel.action", method = { RequestMethod. POST })
	public void adminMenuSel(HttpServletRequest req, HttpServletResponse resp) {
		
		String sort = req.getParameter("sort");
		
		List<MovieDTO> list =  service.list(sort);

		JSONArray array = new JSONArray();
		
		for(MovieDTO dto : list) {
			JSONObject obj = new JSONObject();
			obj.put("name", dto.getName());
			obj.put("img", dto.getImg());
			obj.put("avggrade", dto.getAvggrade());
			obj.put("rate", dto.getRate());
			obj.put("rank", dto.getRank());
			array.add(obj);
		}
		
		try {
			
			resp.setCharacterEncoding("UTF-8"); 
	        resp.setContentType("text/html; charset=UTF-8");
	        
	        PrintWriter writer = resp.getWriter();
	        writer.print(array.toString());
	        writer.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	@RequestMapping(value="/user/usermain.action", method = { RequestMethod. GET })
	public String usermain(HttpServletRequest req, HttpServletResponse resp) {
		
		String sort = "rate";		
		
		List<MovieDTO> list =  service.list(sort);
		
		req.setAttribute("list", list);
		
		return "user.user.usermain";
	}
	
	@RequestMapping(value="/user/userMenuSel.action", method = { RequestMethod. POST })
	public void userMenuSel(HttpServletRequest req, HttpServletResponse resp) {
		
		String sort = req.getParameter("sort");
		
		List<MovieDTO> list =  service.list(sort);

		JSONArray array = new JSONArray();
		
		for(MovieDTO dto : list) {
			JSONObject obj = new JSONObject();
			obj.put("name", dto.getName());
			obj.put("img", dto.getImg());
			obj.put("avggrade", dto.getAvggrade());
			obj.put("rate", dto.getRate());
			obj.put("rank", dto.getRank());
			array.add(obj);
		}
		
		try {
			
			resp.setCharacterEncoding("UTF-8"); 
	        resp.setContentType("text/html; charset=UTF-8");
	        
	        PrintWriter writer = resp.getWriter();
	        writer.print(array.toString());
	        writer.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	@RequestMapping(value="/user/mypage.action", method = { RequestMethod. GET })
	public String mypage(HttpServletRequest req, HttpServletResponse resp) {
		
		String id = "hong";		
		
		List<MovieDTO> mplist =  service.mplist(id);
		
		req.setAttribute("mplist", mplist);
		
		return "user.user.mypage";
	}
	
	@RequestMapping("/user/list.action")
	@ResponseBody
	List<MovieDTO> reserve(@RequestBody MovieDTO dto, HttpSession session) {
		   
		HashMap<String, Object> map = new HashMap<String, Object>();
		//String id = (String)session.getAttribute("id");

		String id ="hong";
		map.put("dto", dto);
		map.put("id",id);
	 
		List<MovieDTO> reservelist = service.reservelist(map);

		return reservelist;
	}
	   
}


















