package com.project.movie.admin.chart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ChartService implements IChartService {
	
	@Autowired
	private IChartDAO dao;	// = newBoardDAO();

	
	@Override
	public HashMap<String, ArrayList<String>> getChart1() {
		
		List<ChartDTO1> chart = dao.chart1();
		HashMap<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
		
	
		
		
		map.put("day", new ArrayList<String>());
		map.put("name", new ArrayList<String>());
	
	
	

		for (int i = 0; i < chart.size(); i++) {
			
				
				
				
			if( map.containsKey(chart.get(i).itemName) ) {
				ArrayList<String> listPrice = new ArrayList<String>();
				listPrice = map.get(chart.get(i).itemName);
				
				
				
				listPrice.add(chart.get(i).totalPrice);
				map.put(chart.get(i).itemName, listPrice);
				
			} else {
				ArrayList<String> listPrice = new ArrayList<String>();
				listPrice.add(chart.get(i).totalPrice);
				map.put(chart.get(i).itemName, listPrice);
				
				ArrayList<String> listName = map.get("name");
				listName.add(chart.get(i).itemName);
				map.put("name", listName);
		
			}
			
		
			
			if (!map.get("day").contains(chart.get(i).day)) {

				ArrayList<String> listDay = map.get("day");
				listDay.add(chart.get(i).day);
				map.put("day", listDay);
			} 
			
	
		}
		
	



		
	    
		return map;
	}

	@Override
	public HashMap<String, ArrayList<String>> getChart2() {
		
		List<ChartDTO1> chart = dao.chart1();
		HashMap<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
		
	
		
		
		map.put("day", new ArrayList<String>());
		map.put("name", new ArrayList<String>());
	

		for (int i = 0; i < chart.size(); i++) {
			
			if( map.containsKey(chart.get(i).itemName) ) {
				ArrayList<String> listCnt = new ArrayList<String>();
				listCnt = map.get(chart.get(i).itemName);		
				listCnt.add(chart.get(i).cnt);
				map.put(chart.get(i).itemName, listCnt);
				
			} else {
				ArrayList<String> listCnt = new ArrayList<String>();
				listCnt.add(chart.get(i).cnt);
				map.put(chart.get(i).itemName, listCnt);
				
				ArrayList<String> listName = map.get("name");
				listName.add(chart.get(i).itemName);
				map.put("name", listName);
		
			}
						
			if (!map.get("day").contains(chart.get(i).day)) {

				ArrayList<String> listDay = map.get("day");
				listDay.add(chart.get(i).day);
				map.put("day", listDay);
			} 
			
	
		}

	    
		return map;
	}
	
	
	@Override
	public HashMap<String, ArrayList<String>> getChart3() {
		
		List<ChartDTO1> chart = dao.chart2();
		HashMap<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
		
	
		
		
		map.put("day", new ArrayList<String>());
		map.put("name", new ArrayList<String>());
	
	
	

		for (int i = 0; i < chart.size(); i++) {
			
				
				
				
			if( map.containsKey(chart.get(i).itemName) ) {
				ArrayList<String> listPrice = new ArrayList<String>();
				listPrice = map.get(chart.get(i).itemName);
				
				
				
				listPrice.add(chart.get(i).totalPrice);
				map.put(chart.get(i).itemName, listPrice);
				
			} else {
				ArrayList<String> listPrice = new ArrayList<String>();
				listPrice.add(chart.get(i).totalPrice);
				map.put(chart.get(i).itemName, listPrice);
				
				ArrayList<String> listName = map.get("name");
				listName.add(chart.get(i).itemName);
				map.put("name", listName);
		
			}
			
		
			
			if (!map.get("day").contains(chart.get(i).day)) {

				ArrayList<String> listDay = map.get("day");
				listDay.add(chart.get(i).day);
				map.put("day", listDay);
			} 
			
	
		}
		
	



		
	    
		return map;
	}

	@Override
	public HashMap<String, ArrayList<String>> getChart4() {
		
		List<ChartDTO1> chart = dao.chart2();
		HashMap<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
		
	
		
		
		map.put("day", new ArrayList<String>());
		map.put("name", new ArrayList<String>());
	

		for (int i = 0; i < chart.size(); i++) {
			
			if( map.containsKey(chart.get(i).itemName) ) {
				ArrayList<String> listCnt = new ArrayList<String>();
				listCnt = map.get(chart.get(i).itemName);		
				listCnt.add(chart.get(i).cnt);
				map.put(chart.get(i).itemName, listCnt);
				
			} else {
				ArrayList<String> listCnt = new ArrayList<String>();
				listCnt.add(chart.get(i).cnt);
				map.put(chart.get(i).itemName, listCnt);
				
				ArrayList<String> listName = map.get("name");
				listName.add(chart.get(i).itemName);
				map.put("name", listName);
		
			}
						
			if (!map.get("day").contains(chart.get(i).day)) {

				ArrayList<String> listDay = map.get("day");
				listDay.add(chart.get(i).day);
				map.put("day", listDay);
			} 
			
	
		}

	    
		return map;
	}
	
	@Override
	public HashMap<String, ArrayList<String>> getChart5(String movieSeq) {
		
		
		List<ChartDTO2> chart = dao.chart3(movieSeq);
		
		
		HashMap<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
		
		
		map.put("day", new ArrayList<String>());
		map.put("total", new ArrayList<String>());
		
		ArrayList<String> list = new ArrayList<String>();
	    
		for (int i = 0; i < chart.size(); i++) {
			
			ArrayList<String> listTotal = new ArrayList<String>();
			listTotal = map.get("total");
			listTotal.add(chart.get(i).cnt);
			
			ArrayList<String> listDay = new ArrayList<String>();
			listDay = map.get("day");
			
			listDay.add(chart.get(i).day.substring(5, 10).replace("-", "/"));
			
	
		}
		
		return map;
	}
	
	@Override
	public ChartDTO3 getChart6(String movieSeq) {
		
		ChartDTO3 chart = dao.chart4(movieSeq);
	

	    
		return chart;
	}
	
	public ChartDTO4 getChart7(String movieSeq) {
		
		ChartDTO4 chart = dao.chart5(movieSeq);
	

	    
		return chart;
	}

	@Override
	public List<MovieDTO> getMoive() {
		
		List<MovieDTO> list = dao.movie();
		/*
		 * for (int i = 0; i < list.size(); i++) {
		 * System.out.println(list.get(i).getName());
		 * 
		 * }
		 */
		
		
		return list;
	}
	
	@Override
	public List<ChartDTO1> getRank() {
		
		List<ChartDTO1> list = dao.rank();

		
		
		return list;
	}
	
	@Override
	public List<ChartDTO1> getRank2() {

		List<ChartDTO1> list = dao.rank2();
		
		
		
		return list;
	}

	@Override
	public List<ChartDTO1> getRank3() {
		List<ChartDTO1> list = dao.rank3();
		
		
		
		return list;
	}

	@Override
	public List<ChartDTO1> getRank4() {
		List<ChartDTO1> list = dao.rank4();
		
		
		
		return list;
	}

	

}
