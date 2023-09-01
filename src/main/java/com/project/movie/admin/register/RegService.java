package com.project.movie.admin.register;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Service
public class RegService implements IRegService {
	
	@Autowired
	private IRegDAO dao; // = new IRegDAO();

	@Override
	public List<RegisterDTO> getCountry() { //나라 명단 불러오기
		
		List<RegisterDTO> country = dao.country();
		
		return country;
		
	}
	
	@Override
	public List<RegisterDTO> getGenre() { //장르 명단 불러오기
		
		List<RegisterDTO> genre = dao.genre();
		
		return genre;
		
	}
	
	///////////////////////////////////////////
	
	
	@Override
	public int add(RegisterDTO dto) { //영화 기본 정보 INSERT
		
		return dao.add(dto);
		
	}
	
	
	@Override
	public int addCast(RegisterDTO dto) { //영화 출연진 INSERT

		JSONArray array = null;
		
		int result = 0;
		
		try {
			
			System.out.println(dto.getActor());
			
			JSONParser jsonParser = new JSONParser();
			
			if ( dto.getActor() != null && !dto.getActor().equals("")) { //출연진 입력값이 존재하면
				array = (JSONArray)jsonParser.parse(dto.getActor()); //*** 파싱
			}

		} catch (Exception e) {
			System.out.println("RegService.add() : " + e.toString());
		}
		
		
		if (array != null) {
			for (Object obj : array) {
				
				String actor = (String)((JSONObject)obj).get("value");
				
				actor = actor.replace(" ", "");
				actor = actor.toUpperCase();
				
				dto.setActor(actor);
				
				result = dao.addCast(dto);

			}
		}
		
		return result;
		
	}
	
	

	@Override
	public int addImg(HttpServletRequest req, MultipartFile MVimg) { //영화 포스터 INSERT
		
		//1. 데이터 가져오기
		//	a. 일반 컨트롤 > 기존의 스프링 방법을 통해서(매개변수)
		//	b. 파일 컨트롤 > 별도의 처리를 통해서
		
		//2. 첨부 파일
		//	- cos.jar > MultipartRequest 사용
		int result = 0;
		

		
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
		
		//<input type="file" name="attach">
		MVimg = multi.getFile("MVimg"); //첨부 파일 태그 참조 객체
				
		System.out.println(MVimg.getName()); //MVimg
		System.out.println(MVimg.getOriginalFilename()); //원본 파일 이름
		System.out.println(MVimg.getSize());
		System.out.println(MVimg.getContentType()); //image/jpeg
		
		
		String filename = MVimg.getOriginalFilename();
		//D:\class\spring2\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\MoiveProject\resources\img\poster
		String path = req.getRealPath("resources/img/poster"); 
		System.out.println(path);
		
		filename = getFilename(path, filename); //유일한 파일명을 확보
		
		//저장 폴더로 이동하기
		File file = new File(path + "\\" + filename); //이동하고 싶은 희망 경로 + 희망 파일명
		
		
		try {

			MVimg.transferTo(file); // 임시폴더(파일) -> files(파일) 이동하기

		} catch (Exception e) {
			System.out.println("RegService.addImg() : " + e.toString());
		}
		
		
		if (MVimg.getContentType().contains("image")) {
			result = 1;
		} else {
			result = 0;
		}
		
		return result; // 1, Image가 아니면 0

	}
	
	
	
	@Override
	public int addSteelImg(HttpServletRequest req, List<MultipartFile> steelImgList, RegisterDTO dto) { // 영화 스틸컷 INSERT
		
		
		int result = 0;
		
		for(MultipartFile Value : steelImgList){
			
			MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
					
			System.out.println(Value.getName()); //MVimg
			System.out.println(Value.getOriginalFilename()); //원본 파일 이름
			System.out.println(Value.getSize());
			System.out.println(Value.getContentType()); //image/jpeg
			
			String filename = Value.getOriginalFilename();
			//D:\class\spring2\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\MoiveProject\resources\img\poster
			String path = req.getRealPath("resources/img/steelCut"); 
			System.out.println(path);
			
			filename = getFilename(path, filename); 
			
			
			try {
	
				if (Value.getContentType().contains("image")) {
					
					//저장 폴더로 이동하기
					File file = new File(path + "\\" + filename); 
					
					Value.transferTo(file);
					
					dto.setSteelImg(Value.getOriginalFilename());
					result = dao.addSteel(dto);
					
				} else {
					
					result = 0;
					
				}
	
			} catch (Exception e) {
				System.out.println("RegService.addSteelImg() : " + e.toString());
			}
			

		}
		
		return result; // 1, Image가 아니면 0

	}
	
	
	private String getFilename(String path, String filename) {
		
		//저장 폴더의 파일명 중복되지 않게 만들기
		//path = "resources/files/"
		//filename = "dog.png"
		
		int n = 1; //인덱싱 숫자
		int index = filename.lastIndexOf(".");
		String tempName = filename.substring(0, index); //"dog"
		String tempExt = filename.substring(index); //".png"
		
		while(true) {
			
			File file = new File(path + "\\" + filename); //img/dog.png
			
			if (file.exists()) {
				//있다 > 중복 파일명
				filename = tempName + "_" + n + tempExt; //"dog_1.png"
				n++;
			} else {
				//없다 > 이 파일명은 사용 가능
				return filename;
			}
			
		}
		
	}//getFilename
	

}//RegService
