package com.project.movie.user.list;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ListService implements IListService {

	@Autowired
	private IListDAO dao;
	
	@Override
	public List<ListDTO> list(HashMap<String, String> map) {

		List<ListDTO> list = dao.list(map);
		
		
		return list;
	}

	
	
	
}
