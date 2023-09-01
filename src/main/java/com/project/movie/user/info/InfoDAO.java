package com.project.movie.user.info;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class InfoDAO implements IInfoDAO{

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public InfoDTO get(String seq) {
		
		return template.selectOne("movie.get", seq);
	}

	@Override
	public List<InfoDTO> list(String seq) {

		return template.selectList("movie.get2", seq);
	}

	@Override
	public InfoDTO genderRate(String seq) {

		return template.selectOne("movie.genderRate", seq);
	}

	@Override
	public InfoDTO ageRate(String seq) {
		
		return template.selectOne("movie.ageRate", seq);
	}

//포스터 스틸컷
	@Override
	public List<InfoDTO> imgList(String seq) {
		
		return template.selectList("movie.imgList", seq);
	}

	@Override
	public List<InfoDTO> rList(String seq) {
		
		return template.selectList("movie.rList", seq);
	}

	@Override
	public List<InfoDTO> rmlist(HashMap<String, String> map) {

		return template.selectList("movie.rmlist", map);
	}
	
	
	@Override
	public int add(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return template.insert("movie.reviewAdd", map);
	}

	@Override
	public InfoDTO getNew() {
		// TODO Auto-generated method stub
		return template.selectOne("movie.getNew");
	}
	@Override
	public List<InfoDTO> countList(String seq) {
		// TODO Auto-generated method stub
		return template.selectList("movie.countList", seq);
	}

	@Override
	public InfoDTO getAvg(HashMap<String, String> map) {
		return template.selectOne("movie.getAvg", map);
	}

	
}

