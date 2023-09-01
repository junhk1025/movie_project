package com.project.movie;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService implements IMovieService {

	@Autowired
	private MovieDAO dao;
	
	@Override
	public List<MovieDTO> list(String sort) {

		return dao.adminmain(sort);
	}

	@Override
	public List<MovieDTO> mplist(String id) {

		return dao.mypage(id);
	}

	@Override
	public List<MovieDTO> reservelist(HashMap<String,Object> map) {

		List<MovieDTO> list = dao.reservelist(map);
				
		for (int i = 0; i < list.size(); i++) {
			
			String startTime = list.get(i).getStarttime();
			String day = list.get(i).getDay();
			
			startTime = startTime.substring(11, 16);
			day = day.substring(0, 10);
			
			list.get(i).setStarttime(startTime);
			list.get(i).setDay(day);
		
		}
		
		
		return list;
	}

	

}
