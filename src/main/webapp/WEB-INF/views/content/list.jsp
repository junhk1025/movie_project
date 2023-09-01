<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   
    <link rel="stylesheet" type="text/css" href="/movie/resources/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="/movie/resources/slick/slick-theme.css">
    <link rel="stylesheet" href="/movie/resources/css/movieList.css">

    
</head>

<body>
  <!-- 헤더 -->
 
  <!-- 헤더 끝 -->

    <!-- 슬라이드 시작 -->
    <div class="slider lazy">
      <div>
        <img src="/movie/resources/img/slick1.jpg">
      </div>
      <div>
        <img src="/movie/resources/img/slick2.jpg">
      </div>
    </div>
      <!-- 슬라이드 끝 -->

      <!-- 컨테이너 시작 -->
      <div class="containerBox" style="margin-top: -50px;">
        
          <!--  -->
          <div class="tab_list">
            <ul class="top_menu">
              <li id="now" class="onbtn">
                 <a>현재 상영작</a>
              </li>
              <li id="todo">
                <a>상영 예정작</a>
              </li>
              <li id="ticket"><!--  -->
                <a>예매순</a>
              </li>
              <li id="score">
                <a>평점순</a>
              </li>
            </ul>
          </div>
          <!-- 리스트 -->
          <div class="screen_box" style="margin-top: 50px;">
            <ul class="movie_list">
            
              <c:forEach items="${list}" var="dto" >
              <li class="box_list">
                <div class="top_info">
                  <span class="poster_info">
                    <img src="/movie/resources/img/${dto.img }">
                 
                    <span class="grade"><img src="/movie/resources/img/${dto.age }.png" alt="${dto.name }"></span>
                  </span>
                  
                  <!-- 영화에 마우스 올렸을 때  -->
                  <div class="over_box" style="visibility: hidden;">
                    <div class="inner" style="margin-top: -150px;" >
                      <a href="#" class="inner_btn">예매하기</a>
                      <a href="/movie/info/info.action?seq=${dto.seq}&bar=2" class="inner_btn">상세정보</a>
                    </div>
                  </div>
                </div>

                <div class="btm_info">
                  <strong class="title_info">${dto.name }</strong>
                  <span class="sub_info">
                    <span class="rate_info">
                      예매율 
                      <em>
                        ${dto.rate }
                        %
                      </em>
                    </span>
                    <span class="ic_star">
                      <img src="/movie/resources/img/star.png" alt="" style="width: 15px; margin-left: 10px;">
                      ${dto.grade }
                    </span>
                  </span>
                </div>
              </li>
              </c:forEach>

            </ul>
            
            <button type="button" class="btn_more">
              <span>펼쳐보기<span class="glyphicon glyphicon-chevron-down" style="margin-left: 5px;"></span></span>
            </button>
            
        </div>
      </div>
      <!-- 컨테이너 끝 -->

      <script src="/movie/resources/js/jquery-1.12.4.js"></script>
      <script src="/movie/resources/js/bootstrap.js"></script>
      <script src="/movie/resources/slick/slick.js" type="text/javascript" charset="utf-8"></script>
	 <script src="/movie/resources/js/string.js"></script>
    <script type="text/javascript">
        
        $(document).ready(function(){
        	
         

          $('.lazy').slick({
            
        	  lazyLoad: 'ondemand', // ondemand progressive anticipated
              infinite: true,
              autoplay: true,
              autoplaySpeed: 800,
              speed: 800
        	  //dots: true,
        	  //infinite: true,
        	  //speed: 300,
        	  //slidesToShow: 1,
        	  //adaptiveHeight: true
          });
            /* $(".lazy").slick({
                lazyLoad: 'ondemand', // ondemand progressive anticipated
                infinite: true
            });

            $('.slider-for').slick({
              slidesToShow: 1,
              slidesToScroll: 1,
              arrows: false,
              fade: true,
              asNavFor: '.slider-nav'
            });
            $('.slider-nav').slick({
              slidesToShow: 3,
              slidesToScroll: 1,
              asNavFor: '.slider-for',
              dots: true,
              centerMode: true,
              focusOnSelect: true
            }); */
        });

        $(document).on("mouseover",".box_list",function(event){
            // 동적으로 여러 태그가 생성된 경우라면 이런식으로 클릭된 객체를 this 키워드를 이용해서 잡아올 수 있다.
        	$(this).children(".top_info").children(".over_box").css("visibility", "visible");
          });
        
        $(document).on("mouseout",".box_list",function(event){
            // 동적으로 여러 태그가 생성된 경우라면 이런식으로 클릭된 객체를 this 키워드를 이용해서 잡아올 수 있다.
        	$(this).children(".top_info").children(".over_box").css("visibility", "hidden");
          });



     //   $(".box_list").mouseover(function(){
      //      $(this).children(".top_info").children(".over_box").css("visibility", "visible");
       //  }).mouseout(function(){
        //    $(this).children(".top_info").children(".over_box").css("visibility", "hidden");
         // })
        
        

        

        /*ajax more*/
       
        var state='1';
        var keyword ='openday';
        var begin ='1';
        var end ='12';
        var sort = 'desc';
        $(".btn_more").click(more);
        function more(){
        	console.log('dd');
        	//그 다음 12개의 게시물 가져오기
        	begin = Number(begin) + 12;
        	console.log(begin);
      
            
        	$.ajax({
        		type: "POST",
        		url: "/movie/more.action",
        		data: "begin=" + begin+"&state="+state+"&keyword="+keyword+"&sort="+sort +"&end="+end,
        		dataType: "json",
        		//--------------------------요청
        		success: function(data) {
        			//data = JSON.parse(data);
        			console.log(data);
        			$(data).each(function(index, t) {
        				var row = String.format("<li class='box_list'>"
        		                +"<div class='top_info'>"
                         + "<span class='poster_info'>"
                         + "<img src='/movie/resources/img/{0}'>"
                         + "<em class='num_info'>${status.count}</em>"
                         + "<span class='grade'><img src='/movie/resources/img/{1}.png' alt='{2}'></span>"
                        + "</span>"
                        
                        
                        + "<div class='over_box' style='visibility: hidden;'>"
                         + "<div class='inner' style='margin-top: -150px;' >"
                           + "<a href='#' class='inner_btn'>예매하기</a>"
                           + "<a href='#' class='inner_btn'>상세정보</a>"
                          +"</div>"
                       + "</div>"
                     + "</div>"

                     + "<div class='btm_info'>"
                     + " <strong class='title_info'>{2}</strong>"
                     + "<span class='sub_info'>"
                     + " <span class='rate_info'>"
                     + " 예매율 "
                     + " <em>"
                     + "   {3}"
                     + "   %"
                     + " </em>"
                     + "</span>"
                     + " <span class='ic_star'>"
                     + "  <img src='/movie/resources/img/star.png' alt='' style='width: 15px; margin-left: 10px;'>"
                     + " {4}"
                     + " </span>"
                     + " </span>"
                     + "</div>"
                     + "</li>", t.img, t.age, t.name, t.rate, t.grade);
        				console.log(row);
        					$(".movie_list").append(row);
        					
        			});
        		}
        	});
        }
        
       
        function page(param) {
        	
        	$.ajax({
        		type: "POST",
        		url: "/movie/page.action",
        		data: param,
        		dataType: "json",
        		//--------------------------요청
        		success: function(data) {
        			//data = JSON.parse(data);
        			
        			//원래 데이터 삭제
        			//받아온 데이터 추가
        			
        			console.log(data);
        			$(data).each(function(index, t) {
        				var row = String.format("<li class='box_list'>"
        		                +"<div class='top_info'>"
                         + "<span class='poster_info'>"
                         + "<img src='/movie/resources/img/{0}'>"
                         + "<em class='num_info'>${status.count}</em>"
                         + "<span class='grade'><img src='/movie/resources/img/{1}.png' alt='{2}'></span>"
                        + "</span>"
                        
                        
                        + "<div class='over_box' style='visibility: hidden;'>"
                         + "<div class='inner' style='margin-top: -150px;' >"
                           + "<a href='#' class='inner_btn'>예매하기</a>"
                           + "<a href='/movie/info/info.action?seq={3}' class='inner_btn'>상세정보</a>"
                          +"</div>"
                       + "</div>"
                     + "</div>"

                     + "<div class='btm_info'>"
                     + " <strong class='title_info'>{2}</strong>"
                     + "<span class='sub_info'>"
                     + " <span class='rate_info'>"
                     + " 예매율 "
                     + " <em>"
                     + "   {4}"
                     + "   %"
                     + " </em>"
                     + "</span>"
                     + " <span class='ic_star'>"
                     + "  <img src='/movie/resources/img/star.png' alt='' style='width: 15px; margin-left: 10px;'>"
                     + " {5}"
                     + " </span>"
                     + " </span>"
                     + "</div>"
                     + "</li>", t.img, t.age, t.name, t.seq, t.rate, t.grade);
        				console.log(row);
        				$(".movie_list").children().remove();
        				setTimeout(() => {
        					$(".movie_list").append(row);
						}, 500);
        				
           	
        					
        			});

        			
        		}
        	});
			
		}
        
		$("#now").click(function() {
        	
        	$(this).addClass("onbtn");
        	$("#todo").removeClass("onbtn");
        	$("#ticket").removeClass("onbtn");
        	$("#score").removeClass("onbtn");
        	
        	state='3';
            keyword ='openday';
            begin ='1';
            end ='12';
            sort = 'asc';
			
        	var param ="begin=1&end=12&state=3&keyword=openday&sort=asc";
        	page(param);
		});
        
        $("#todo").click(function() {
        	
        	$(this).addClass("onbtn");
        	$("#now").removeClass("onbtn");
        	$("#ticket").removeClass("onbtn");
        	$("#score").removeClass("onbtn");
        	
        	
        	
        	state='3';
            keyword ='openday';
            begin ='1';
            end ='12';
            sort = 'asc';
			
        	var param ="begin=1&end=12&state=3&keyword=openday&sort=asc";
        	page(param);
		});
        
		$("#ticket").click(function() {
        	
			$(this).addClass("onbtn");
        	$("#now").removeClass("onbtn");
        	$("#todo").removeClass("onbtn");
        	$("#score").removeClass("onbtn");
			
        	state='1';
            keyword ='rate';
            begin ='1';
            end ='12';
            sort = 'desc';
			
        	var param ="begin=1&end=12&state=1&keyword=rate&sort=desc";
        	page(param);
		});
		
		$("#score").click(function() {
        	
			$(this).addClass("onbtn");
        	$("#now").removeClass("onbtn");
        	$("#todo").removeClass("onbtn");
        	$("#ticket").removeClass("onbtn");
			
        	state='1';
            keyword ='grade';
            begin ='1';
            end ='12';
            sort = 'desc';
			
        	var param ="begin=1&end=12&state=1&keyword=grade&sort=desc";
        	page(param);
		});
        
        
          

    </script>

</body>
</html>