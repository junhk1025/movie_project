package com.project.movie.user.info;

import java.util.HashMap;
import java.util.List;

import com.project.movie.user.list.ListDTO;

public interface IInfoService {

	InfoDTO get(String seq);

	List<InfoDTO> list(String seq);

	InfoDTO genderRate(String seq);

	InfoDTO ageRate(String seq);

	List<InfoDTO> imgList(String seq);

	List<InfoDTO> rList(String seq);

	List<InfoDTO> rmlist(HashMap<String, String> map);

	

	int add(HashMap<String, String> map);

	InfoDTO getNew();

	List<InfoDTO> countList(String seq);

	InfoDTO getAvg(HashMap<String, String> map);



	

	

}
