package com.project.movie.admin.register;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface IRegService {

	List<RegisterDTO> getGenre();

	List<RegisterDTO> getCountry();
	
	int add(RegisterDTO dto);

	int addCast(RegisterDTO dto);

	int addImg(HttpServletRequest req, MultipartFile mVimg);

	int addSteelImg(HttpServletRequest req, List<MultipartFile> steelImgList, RegisterDTO dto);



}
