package com.project.movie.user.list;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ListController {

	@Autowired
	private IListService service;

	@RequestMapping(value = "/list.action", method = { RequestMethod.GET })
	public String list(HttpServletRequest req, HttpServletResponse resp, String keyword, String state, String sort, String end, String begin, String bar) {

		if(end == null || end.equals("")) {end = "12";}
		if(begin == null || begin.equals("")) {begin = "1";}
		if(sort == null || sort.equals("")) {sort = "desc";}
		if(keyword == null || keyword.equals("")) {keyword = "openday";}
		if(state == null || state.equals("")) {state = "1";}
		

		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("end", end);
		map.put("begin", begin);
		map.put("sort", sort);
		map.put("keyword", keyword);
		map.put("state", state);
		
		
		List<ListDTO> list = service.list(map);
		req.setAttribute("list", list);
		req.setAttribute("bar", bar);

		return "user.content.list";
	}

	@ResponseBody
	@RequestMapping(value = "/more.action", method = { RequestMethod.POST })
	public void more(HttpServletRequest req, HttpServletResponse resp, String state, String sort, String keyword,String begin, String end) throws IOException {

		

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("begin", begin); // 13
		map.put("end", (Integer.parseInt(begin) + 11) + "");// 24
		
		System.out.println("*****"+(Integer.parseInt(begin) + 11));
		//System.out.println(Integer.parseInt(begin));
		
		map.put("sort", sort);
		map.put("keyword", keyword);
		map.put("state", state);
		
		
		List<ListDTO> mlist = service.list(map);
		
		JSONArray array = new JSONArray();
		/*
		 for (DTO dto : list) {
			
			//레코드 1개 -> DTO 1개 -> JSONObject 1개
			JSONObject obj = new JSONObject(); //해시맵 형태 구조
			
			obj.put("seq", dto.getSeq());
			obj.put("name", dto.getName());
			obj.put("age", dto.getAge());
			obj.put("address", dto.getAddress());
			
			array.add(obj);
			
		}
		
		writer.print(array.toString());
		
		writer.close();
		 * 
		 */

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/xml");

		
		for (ListDTO dto : mlist) {
			
			JSONObject obj  = new JSONObject();
			
			obj.put("seq", dto.getSeq());
			obj.put("name", dto.getName());
			obj.put("age", dto.getAge());
			obj.put("img", dto.getImg());
			obj.put("total", dto.getTotal());
			obj.put("rate", dto.getRate());
			obj.put("grade", dto.getGrade());
			
			array.add(obj);
		}
		
		try {
			
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("text/xml");
			
			PrintWriter writer = resp.getWriter();
			writer.print(array.toString());
			System.out.println(array.toString());
			writer.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/page.action", method = { RequestMethod.POST })
	public void page(HttpServletRequest req, HttpServletResponse resp, String state, String sort, String keyword,String begin) throws IOException {

		

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("begin", begin);
		map.put("end", (Integer.parseInt(begin) + 11) + "");

		
		map.put("sort", sort);
		map.put("keyword", keyword);
		map.put("state", state);
		
		
		List<ListDTO> mlist = service.list(map);
	
		JSONArray array = new JSONArray();
		/*
		 for (DTO dto : list) {
			
			//레코드 1개 -> DTO 1개 -> JSONObject 1개
			JSONObject obj = new JSONObject(); //해시맵 형태 구조
			
			obj.put("seq", dto.getSeq());
			obj.put("name", dto.getName());
			obj.put("age", dto.getAge());
			obj.put("address", dto.getAddress());
			
			array.add(obj);
			
		}
		
		writer.print(array.toString());
		
		writer.close();
		 * 
		 */

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/xml");

		
		for (ListDTO dto : mlist) {
			
			JSONObject obj  = new JSONObject();
			
			obj.put("seq", dto.getSeq());
			obj.put("name", dto.getName());
			obj.put("age", dto.getAge());
			obj.put("img", dto.getImg());
			obj.put("total", dto.getTotal());
			obj.put("rate", dto.getRate());
			obj.put("grade", dto.getGrade());
			
			array.add(obj);
		}
		
		try {
			
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("text/xml");
			
			PrintWriter writer = resp.getWriter();
			writer.print(array.toString());
			System.out.println(array.toString());
			writer.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
}
