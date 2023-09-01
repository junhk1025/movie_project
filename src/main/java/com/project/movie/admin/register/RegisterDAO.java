package com.project.movie.admin.register;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegisterDAO implements IRegDAO {
	
	
	@Autowired
	private SqlSessionTemplate template; //root-context.xml 기반으로 객체 연쇄적으로 생성
	
	
	@Override
	public List<RegisterDTO> country() {
		
		return template.selectList("movie.country");
		
	}
	
	@Override
	public List<RegisterDTO> genre() {
		
		return template.selectList("movie.genre");

	}
	
	//나라, 장르 불러오기
	
	
	@Override
	public int add(RegisterDTO dto) {
		
		return template.insert("movie.add", dto);
	
	}
	
	@Override
	public int addCast(RegisterDTO dto) {
		
		return template.insert("movie.addCast", dto);
		
	}
	
	@Override
	public int addSteel(RegisterDTO dto) {

		return template.insert("movie.addSteel", dto);
	}
	
	
	
	
}
