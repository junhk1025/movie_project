package com.project.movie.user.info;

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

import com.project.movie.user.list.ListDTO;


@Controller
public class InfoController {

	@Autowired
	private IInfoService service;
	
	@RequestMapping(value = "/info/info.action", method = { RequestMethod.GET })
	public String info(HttpServletRequest req, HttpServletResponse resp, String seq, String bar) {

		
		
		InfoDTO dto = service.get(seq);
		
		InfoDTO dto2 = service.genderRate(seq);
		
		InfoDTO dto3 = service.ageRate(seq);
		
		
		List<InfoDTO> list = service.list(seq);
		
		List<InfoDTO> list2 = service.imgList(seq);
		
		List<InfoDTO> list3 = service.rList(seq);
		
		List<InfoDTO> list4 = service.countList(seq);
	
		
		req.setAttribute("seq", seq);
		req.setAttribute("dto", dto);
		req.setAttribute("dto2", dto2);
		req.setAttribute("dto3", dto3);
		req.setAttribute("list", list);
		req.setAttribute("list2", list2);
		req.setAttribute("list3", list3);
		req.setAttribute("list4", list4);
		req.setAttribute("bar", bar);
		
		return "user.content.info";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/info/rmore.action", method = { RequestMethod.POST })
	public void more(HttpServletRequest req, HttpServletResponse resp, String seq) throws IOException {

		String begin = req.getParameter("begin");
		//System.out.println("***"+begin);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("begin", begin); // 11
		map.put("end", (Integer.parseInt(begin) + 9) + "");// 20
		map.put("seq", seq);
		//System.out.println("***"+ map.get("end"));
		
		List<InfoDTO> rmlist = service.rmlist(map);
		
		
		JSONArray array = new JSONArray();

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/xml");

		
		for (InfoDTO dto : rmlist) {
			
			JSONObject obj  = new JSONObject();
			
			obj.put("fimg", dto.getFimg());
			obj.put("id", dto.getId());
			obj.put("grade", dto.getGrade());
			obj.put("content", dto.getContent());
			obj.put("day", dto.getDay());
			
			
			array.add(obj);
		}
		
		try {
			
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("text/xml");
			
			PrintWriter writer = resp.getWriter();
			writer.print(array.toString());
			//System.out.println("***"+array.toString());
			writer.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	@RequestMapping(value = "/info/addok.action", method = { RequestMethod.POST })
	public void addok(HttpServletRequest req, HttpServletResponse resp, String userseq, String grade, String review, String movieseq) {
		
		//System.out.println(id);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userseq", userseq);
		map.put("grade", grade);
		map.put("review", review);
		map.put("movieseq", movieseq);
		
		int result = service.add(map);
		//System.out.println(result);
		if(result==1) {
			InfoDTO dto = service.getNew(); //새로쓴거 select
			System.out.println("1");
			InfoDTO dto2 = service.getAvg(map);
			System.out.println("2");
			JSONObject obj  = new JSONObject();
			//System.out.println(dto.getContent());
			obj.put("fimg", dto.getFimg());
			obj.put("id", dto.getId());
			obj.put("grade", dto.getGrade());
			obj.put("content", dto.getContent());
			obj.put("day", dto.getDay());
			System.out.println(dto2.getAvgrade());
			obj.put("avgrade", dto2.getAvgrade());
			
			try {
				
				resp.setCharacterEncoding("UTF-8");
				resp.setContentType("text/xml");
				
				PrintWriter writer = resp.getWriter();
				writer.print(obj.toString());
				//System.out.println("***"+array.toString());
				writer.close();
				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}else {
			
		}
	}
	
}
