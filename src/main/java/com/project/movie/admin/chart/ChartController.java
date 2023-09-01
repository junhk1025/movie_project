package com.project.movie.admin.chart;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@Controller
public class ChartController {
	
	@Autowired
	IChartService service;

	
	
	@RequestMapping(value = "/chart/ddd.action", method = {RequestMethod.GET})
	public String ddd(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		return "user.chart.ddd";
	}
	
	
	@RequestMapping(value = "/chart/chart.action", method = {RequestMethod.GET})
	public String chart(HttpServletRequest req, HttpServletResponse resp, String bar) {
		
		HashMap<String, ArrayList<String>> map1;
		HashMap<String, ArrayList<String>> map2;
		HashMap<String, ArrayList<String>> map3;
		HashMap<String, ArrayList<String>> map4;

		
		map1 = service.getChart1();
		map2 = service.getChart2();
		map3 = service.getChart3();
		map4 = service.getChart4();
		
		List<MovieDTO> list = service.getMoive();
	
		List<ChartDTO1> rank = service.getRank();
		List<ChartDTO1> rank2 = service.getRank2();
		List<ChartDTO1> rank3 = service.getRank3();
		List<ChartDTO1> rank4 = service.getRank4();
	
		
		//String movieSeq = list.get(0).getSeq();
		String movieSeq = "1";
		
		HashMap<String, ArrayList<String>> map5 = service.getChart5(movieSeq);
		ChartDTO3 rate = service.getChart6(movieSeq);
		ChartDTO4 generation = service.getChart7(movieSeq);
		
		
		for (int i = 0; i < rank3.size(); i++) {
			System.out.println();
			
		}

	
//		Set set =  map5.keySet();
//		Iterator<String> iterator = set.iterator();
//		
//		
//		
//		while (iterator.hasNext()) {
//			
//			String str= iterator.next();
//			System.out.println(str + " : " + map5.get(str));
//			
//			
//		}
		
		System.out.println(movieSeq);

		
		req.setAttribute("map1", map1);
		req.setAttribute("map2", map2);
		req.setAttribute("map3", map3);
		req.setAttribute("map4", map4);
		req.setAttribute("map5", map5);
		req.setAttribute("rate", rate);
		req.setAttribute("generation", generation);
		req.setAttribute("list", list);
		req.setAttribute("rank", rank);
		req.setAttribute("rank2", rank2);
		req.setAttribute("rank3", rank3);
		req.setAttribute("rank4", rank4);
		req.setAttribute("bar", bar);
		
		return "admin2.chart.chart2";
	}
	
	@RequestMapping(value = "/chart/test.action", method = {RequestMethod.GET})
	public String test(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		return "user.chart.chart";
	}
	

	
	@ResponseBody
	@RequestMapping(value = "/chart/moviechart.action", method = {RequestMethod.POST})
	public void movieChart(HttpServletRequest req, HttpServletResponse resp, String movieSeq) {
		
	
		
		HashMap<String, ArrayList<String>> map5 = service.getChart5(movieSeq);
		ChartDTO3 rate = service.getChart6(movieSeq);
		ChartDTO4 generation = service.getChart7(movieSeq);
		

	      resp.setCharacterEncoding("UTF-8");
	      resp.setContentType("text/xml");
	      
	      Set set =  map5.keySet();
		  Iterator<String> iterator = set.iterator();
			
			
		  JSONObject obj  = new JSONObject();
		  
		  /*
		   * {
		   * 	"day":[
		   * 		"200",
		   * 		"200",
		   * 		"200"
		   * 	],
		   * 	"total": "200",
		   * 	"day":{
		   * 		"start":"100",
		   * 		"end":"100"
		   * 	}
		   * 
		   * }
		   */
		  
		  while (iterator.hasNext()) {
				
				String str= iterator.next();
				JSONArray temp = new JSONArray();
				ArrayList<String> list = map5.get(str);
					for (int i = 0; i < list.size(); i++) {
						System.out.println(list.get(i));
						temp.add(list.get(i));
					}	
				 obj.put(str, temp);
					
			}
		  	JSONObject temp  = new JSONObject();
		  	temp.put("man", rate.getMan());
		  	temp.put("woman", rate.getWoman());
            

            
			obj.put("rate", temp);

			JSONObject temp2  = new JSONObject();
			temp2.put("gen10", generation.getGen10());
			temp2.put("gen20", generation.getGen20());
			temp2.put("gen30", generation.getGen30());
			temp2.put("gen40", generation.getGen40());
			temp2.put("gen50", generation.getGen50());
			temp2.put("gen60", generation.getGen60());
			
			obj.put("generation", temp2);
			
			
			
	      
	      
	      try {
	         
	         resp.setCharacterEncoding("UTF-8");
	         resp.setContentType("text/xml");
	         
	         PrintWriter writer = resp.getWriter();
	         writer.print(obj.toString());
	 
	         System.out.println(obj.toString());
	         writer.close();
	         
	      } catch (Exception e) {
	    	  System.out.println(e);
	      }

		
		
		
		
		
	
	}
	

	
}
