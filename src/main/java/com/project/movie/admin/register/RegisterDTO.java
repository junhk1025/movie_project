package com.project.movie.admin.register;

import lombok.Data;

@Data
public class RegisterDTO {

	//영화 테이블
	private int movieSeq; //영화 번호
	private String MVname; //영화 이름
	private int MVruntime; //영화 런타임
	private String MVopenday; //영화 개봉일
	private String MVstory; //영화 줄거리
	private String MVimg; //영화 포스터
	private String MVdirector; //영화 감독
	private int MVage; //영화 연령대
	
	//장르
	private int genreSeq; //장르 번호
	private String genre; //장르 명

	//출연진
	private int castSeq; //출연진 번호
	private String actor; //출연진 이름
	
	//나라
	private int countrySeq; //나라 번호
	private String country; //나라 이름
	
	//영화 사진
	private String steelSeq; //스틸컷 번호
	private String steelImg; //스틸컷 이미지
	
	
	//지역
	private String areaSeq; //지역 번호
	private String city; //지역 이름
	
	
	//지점
	private String spotSeq; //지점 번호
	private String spot; //지점 이름
	
	
	//상영관
	private String hallSeq; //상영관 번호
	private String hall; //상영관 이름
	
	
	//상영 영화
	private String screenMovieSeq; //상영 영화 번호
	private String state; //상영 영화 상태
	
	
	//상영 정보
	private String screenInfoSeq; //상영 정보 번호
	private String day; //상영 날짜
	private String dimension; //영화 차원 (1. 2D 2. 3D 3. 4D)
	
	
	//상영 시간
	private String screenTimeSeq; //상영 시간 번호
	private String startTime; //상영 시작 시간
	private String endTime; //상영 종료 시간
		
	
}
