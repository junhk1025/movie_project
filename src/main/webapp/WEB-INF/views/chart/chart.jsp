<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="content">
	<div id="background">
	<div id="wrap1">
		<div id="section-1">
			
			<button id="btn1" class="btn-active">일</button>
			<button id="btn2">월</button>
		</div>
		
		<div id="section-2">
			
			<div id="chart1"></div>
			<div id="chart2"></div>
			<div id="movie-sales">
				<div id="movie-sales-m1">영화 매출 순위</div>
				<div class="movie-sales-m2">1. 인비저블맨 <span class="price">1,000원</span></div>
				<div class="movie-sales-m2">2. 작은아씨들 <span class="price">1,000원</span></div>
				<div class="movie-sales-m2">3. 기생충 <span class="price">1,000원</span></div>
				<div class="movie-sales-m2">4. 1917 <span class="price">1,000원</span></div>
				<div class="movie-sales-m2">5. 오우 이유진~ <span class="price">1,000원</span></div>
	
			</div>
			<div id="snack-sales">
				<div id="snack-sales-m1">스낵 매출 순위</div>
				<div class="snack-sales-m2">1. 팝콘 <span class="price">1,000원</span></div>
				<div class="snack-sales-m2">2. 핫도그 <span class="price">1,000원</span></div>
				<div class="snack-sales-m2">3. 츄러스 <span class="price">1,000원</span></div>
				<div class="snack-sales-m2">4. 콜라 <span class="price">1,000원</span></div>
				<div class="snack-sales-m2">5. 오우 이유진~ <span class="price">1,000원</span></div>

			</div>
		</div>
	</div>
	




	<br>
	<div id="wrap2">
	
	  <div class="movie_select">
	       <div class="group_top">
	          <h4 class="movie_area">토탈</h4>
	       </div>
	
	
	          <div class="movie_list">
	             <ul>
	                <li class="movieLi total">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">토탈</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/15.png"></span>
	                      <span class="movie_title">인비저블맨</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/12.png"></span>
	                      <span class="movie_title">정직한 후보</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/all.png"></span>
	                      <span class="movie_title">작은 아씨들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	                <li class="movieLi">
	                   <a href="#">
	                      <span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
	                      <span class="movie_title">지푸라기라도 잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
	                   </a>
	                </li>
	             </ul>
	          </div>
	          
	       </div>
	       
	       
	       <div id="chart3"></div>
	 	
	       <div id="chart4"></div>
	       <div id="chart5"></div>
	    </div> <!-- wrap2 -->
		</div> 
	</div> <!-- content -->
	
