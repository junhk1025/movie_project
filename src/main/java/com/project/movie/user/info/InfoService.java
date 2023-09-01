package com.project.movie.user.info;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.movie.user.list.ListDTO;




@Service
public class InfoService implements IInfoService{

	@Autowired
	private IInfoDAO dao;

	@Override
	public InfoDTO get(String seq) {

		InfoDTO dto = dao.get(seq);
		
		return dto;
	}

	@Override
	public List<InfoDTO> list(String seq) {

		List<InfoDTO> list =  dao.list(seq);
		
		return list;
	}

	@Override
	public InfoDTO genderRate(String seq) {

		InfoDTO dto2 = dao.genderRate(seq);
		
		return dto2;
	}

	@Override
	public InfoDTO ageRate(String seq) {

		InfoDTO dto3 = dao.ageRate(seq);
		
		return dto3;
	}

	@Override
	public List<InfoDTO> imgList(String seq) {

		List<InfoDTO> list2 = dao.imgList(seq);
	
		
		return list2;
	}

	@Override
	public List<InfoDTO> rList(String seq) {

		List<InfoDTO> list3 = dao.rList(seq);
		
		return list3;
	}

	@Override
	public List<InfoDTO> rmlist(HashMap<String, String> map) {

		List<InfoDTO> rmlist = dao.rmlist(map);
		
		return rmlist;
	}


	
	@Override
	public int add(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		
	
		if (map.get("grade").equals("5")||map.get("grade").equals("6")) {
			
			map.put("fimg", "smile5_6.png");
		}else if(map.get("grade").equals("7")||map.get("grade").equals("8")) {
			
			map.put("fimg", "smile7_8.png");
		}else if(map.get("grade").equals("9")||map.get("grade").equals("10")) {
			
			map.put("fimg", "smile9_10.png");
		}else {
			
			map.put("fimg", "");
		}
		
		return dao.add(map);
	}
	
	@Override
	public InfoDTO getNew() {
		InfoDTO dto = dao.getNew();
		return dto;
	}
	

	@Override
	public List<InfoDTO> countList(String seq) {
		
		List<InfoDTO> countList =  dao.countList(seq);
		return countList;
	}

	@Override
	public InfoDTO getAvg(HashMap<String, String> map) {
		
		InfoDTO dto2 = dao.getAvg(map);
		
		return dto2;
	}

	
	
}
