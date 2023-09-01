package com.project.movie;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	public List<MovieDTO> adminmain(String sort) {
		
		//예매율 / 평점 / 누적관객수
		return template.selectList("movie.adminmain", sort);
		
	}

	public List<MovieDTO> mypage(String id) {

		return template.selectList("movie.mypage", id);
	}

	public List<MovieDTO> reservelist(HashMap<String, Object> map) {
		
		return template.selectList("movie.reserveList",map);
	}

}
