package com.project.movie.user.list;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ListDAO implements IListDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<ListDTO> list(HashMap<String, String> map) {
		
		return template.selectList("movie.list", map);
	}



	

}
