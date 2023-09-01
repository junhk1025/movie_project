package com.project.movie.admin.register;

import java.io.PrintWriter;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class RegisterController {

	
	//스프링 의존 객체
	@Autowired
	private IRegService service; //= new IRegService();
	
	
	@RequestMapping(value = "/admin/addMovie.action", method = {RequestMethod.GET})
	public String addMovie(HttpServletRequest req, HttpServletResponse resp, String bar) {

		
		List<RegisterDTO> genre = service.getGenre();
		List<RegisterDTO> country = service.getCountry();
		
		req.setAttribute("genre", genre);
		req.setAttribute("country", country);
		req.setAttribute("bar", bar);
		
		return "admin.admin.addMovie";
	}
	


	@RequestMapping(value="/admin/addMovieOK.action", method= {RequestMethod.POST})
	public void addMovieOK(HttpServletRequest req
							, HttpServletResponse resp
							, MultipartFile MVimg
							, @RequestParam("steelImg")List<MultipartFile> steelImgList
							, String MVname
							, String MVopenday
							, String MVstory
							, String MVdirector
							, String actor
							, int MVruntime
							, int MVage
							, int genreSeq
							, int countrySeq
							) {
			
		
		//1. 데이터 가져오기
		//2. DAO 위임 > select, insert
		//3. 결과 반환 + 결과 통보(페이지 이동) + PrintWriter
		
		RegisterDTO dto = new RegisterDTO();
		
		dto.setMVname(MVname);
		dto.setGenreSeq(genreSeq);
		dto.setMVopenday(MVopenday);
		dto.setCountrySeq(countrySeq);
		dto.setMVstory(MVstory);
		dto.setMVdirector(MVdirector);
		dto.setMVruntime(MVruntime);
		dto.setMVage(MVage);
		dto.setActor(actor);
		dto.setMVimg(MVimg.getOriginalFilename());
		
		int result = service.add(dto); //기본 정보 등록
		
		System.out.println(result);
		
		int result2 = service.addCast(dto); //출연진 등록
		
		System.out.println(result2);
		
		int result3 = service.addImg(req, MVimg); //포스터 등록
		
		System.out.println(result3);
		
		int result4 = service.addSteelImg(req, steelImgList, dto); //스틸컷 등록
		
		System.out.println(result4);
		
		
		try {

			PrintWriter writer = resp.getWriter();
			
			writer.write("<script>");
			
			if (result == 1 && result2 == 1 && result3 == 1 && result4 == 1) {
				
				writer.print("alert('영화 등록 완료');");
				writer.print("location.href='/movie/admin/addMovie.action';");
				
			} else {
				writer.print("alert('failed'); history.back();");
			}
			
			writer.write("</script>");
			writer.close();

		} catch (Exception e) {
			System.out.println("RegisterController.addMovieOK() : " + e.toString());
		}
		

	}
	
	

	@RequestMapping(value = "/admin/addShowMovie.action", method = {RequestMethod.GET})
	public String addShowMovie(HttpServletRequest req, HttpServletResponse resp) {
		

		return "admin.admin.addShowMovie";
	}
	
	
	@RequestMapping(value = "/admin/deleteShowMovie.action", method = {RequestMethod.GET})
	public String deleteShowMovie(HttpServletRequest req, HttpServletResponse resp) {
	
		
		return "admin.admin.deleteShowMovie";
	}
	
	
}
