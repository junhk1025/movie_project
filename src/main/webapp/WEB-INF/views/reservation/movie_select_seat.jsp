<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.project.movie.user.reservation.ReservationDTO" %>

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>

   <link rel="stylesheet" href="/movie/resources/css/bootstrap.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

   <script src="/movie/resources/js/jquery-1.12.4.js"></script>
   <script src="/movie/resources/js/bootstrap.bundle.min.js"></script>
   <!-- <script src="js/jquery.min.js"></script> -->
</head>
<style>
   @import url(//fonts.googleapis.com/earlyaccess/jejugothic.css); .jejugothic * { font-family: 'Jeju Gothic', sans-serif; }
   
   body {
      font-family: 'Jeju Gothic';
   }
   ::-webkit-scrollbar {width: 8px; height: 8px; border: 3px solid #fff; }
   ::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment {display: block; height: 10px; background: url('./images/bg.png') #efefef}
   ::-webkit-scrollbar-track {background: #efefef; -webkit-border-radius: 10px; border-radius:10px; -webkit-box-shadow: inset 0 0 4px rgba(0,0,0,.2)}
   ::-webkit-scrollbar-thumb {height: 50px; width: 50px; background: rgba(0,0,0,.2); -webkit-border-radius: 8px; border-radius: 8px; -webkit-box-shadow: inset 0 0 4px rgba(0,0,0,.1)}

   .nav {
      height: 200px;
      background-color:gray;
   }

   #contents {
      margin: 0px auto;
      padding: 50px 0 0 0;
      background-color: #444;
      height: 1000px;
   }

   .reserve_box {
      width: 1700px;
      height: 900px;
      margin: 0px auto;
      background-color: white;
   }

   .reserve_step {
      width: 130px;
      height: 900px;
      float: left;
   }

   .reserve_step > ul {
      border: 1px solid #444;
      padding-left: 0px;
   }

   .reserve_step > ul > li {
      display: block;
      border-top: 1px solid #444;
      height: 225px;
      width: 100%;
   }

   .reserve_step > ul > li > a:hover {
      text-decoration: none;
   }

   .reserve_step .active, .reserve_step .disabled {
      text-align: center;
      padding: 80px 15px;
   }

   .reserve_step .active {
      background-color: #1B315F;
   }

   .reserve_step .active .step_box {
      color: white;
   }

   .step_num {
      font-size: 13px;
   }

   .step_content {
      font-size: 15px;
   }

   .disabled .step_box {
      color: #666;
   }

   /* 변경 */
   .cinema_info {
      float: left;
      width: 1570px;
      height: 100%;
      border-bottom: 1px solid #DDD;
   }

   .group_top {
      background-color: black;
      color: white;
      width: 100%;
      height: 55px;
      text-align: center;
      padding-top: 8px;
   }


   /* 추가 */
   .person_count {
      width: 1570px;
      height: 120px;
      background-color: white;
      border: 1px solid black;
   }

   .select_num_people_wrap {
      overflow: hidden;
      height: 117px;
      padding: 0 20px;
      background-color: #FFF;
   }

   .select_num_people_wrap .movie_inform {
      position: relative;
      float: left;
      width: 300px;
      padding: 30px 0 0 54px;
   }

   .select_num_people_wrap .movie_poster {
      display: block;
      position: absolute;
      top: 26px;
      left: 0;
      overflow: hidden;
      width: 50px;
      height: 70px;
      border-radius: 4px;
   }

   .select_num_people_wrap .movie_poster img {
      width: 100%;
   }

   .group_inform {
      margin-left: 10px;
      margin-top: -5px;
   }

   .group_inform .age_title {
      display: block;
      margin-bottom: 10px;
   }

   .group_inform .age_title .age_limit {
      margin: 0px 5px 0 0;
      display: inline-block;
      width: 22px;
      height: 22px;
      line-height: 22px;
      border-radius: 50%;
      font-size: 0;
      text-align: center;
      vertical-align: middle;
   }
   
   .group_inform .age_title .age_limit img {
      width: 22px;
      height: 22px;
   }

   .group_inform .age_title .movie_title {
      margin-top: -20px;
      font-size: 16px;
      font-weight: bold;
   }

   .group_inform .movie_time {
      display: block;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
      margin-bottom: 5px;
      font-size: 11px;
   }

   
   .group_inform .movie_time_spot {
      position: relative;
      margin: 0;
      padding: 0;
   }
   
   .group_inform .movie_time_spot .movie_time .spot_date {
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
      margin-bottom: 5px;
      font-size: 11px;
   }
   
   .stick {
      margin: 0px 5px;
   }

   .select_num_people_wrap .count_people {
      float: right;
      width: 1050px;
      margin-top: 36px;
   }

   ul {
      list-style: none;
   }
   
   .select_num_people_wrap .count_people > ul > li:first-child {
      margin-left: 0;
   }

   .select_num_people_wrap .count_people > ul > li {
      float: left;
      margin-left: 20px;
   }

   .select_num_people_wrap .count_people > ul > li .bx_num {
      display: inline-block;
      width: 120px;
   }

   .bx_num {
      display: inline-block;
      position: relative;
      border: 1px solid #DDD;
      border-radius: 4px;
      background-color: #fff;
      box-sizing: border-box;
   }


   .bx_num .btn_mins {
      position: absolute;
      top: 0px;
      left: 0px;
      padding: 0 15px;
      height: 100%;
   }

   .bx_num .btn_plus {
      position: absolute;
      top: 0px;
      left: 73px;
      padding: 0 15px;
      height: 100%;
   }

   /* .bx_num .btn_plus, .bx_num .btn_mins {
      position: absolute;
      top: 0;
      bottom: 0;
      background: no-repeat 50% 50%;
      border: 0 none;
      padding: 0 15px;
      text-indent: -9999em;
   } */

   /* .txt_num {
      height: 25px;
      text-align: center;
      padding-top: 3px;
   } */

   .bx_num .txt_num {
      padding: 11px 0;
      font-size: 15px;
      font-weight: bold;
      width: 100%;
      color: #000;
      text-align: center;
      vertical-align: middle;
   }

   #total_price{
      float: right;
      margin-right: 180px;

   }

   button {
      border: 1px solid white;
      background-color: white;
      padding-top: 3px;
   }

	#seat_select {
		width: 100%;
		height: 725px;
		overflow: scroll;
		overflow-x: hidden;
		border: none;
	}

	#seat_screen {
		border: none;
	}
   

</style>
<script>
   
   var seatList;
   var seatSelect;
   var buy;

   $(document).ready(function() {

      
      //var seatList = $('#seat').contents().find('.action--seats').html();
      //var seatList = document.getElementById('seat').contentWindow.document.getElementById("action--seats")
      //var seatList = document.getElementById('seat').contentWindow.document.getElementsByClassName("row__seat");
            
      setTimeout(function() {

         seatList = $('#seat').contents().find('.rows--mini > .row > .row__seat');
         buy =  $('#seat').contents().find('.action--buy');
         
         for (var i = 0; i < seatList.size(); i++) {
             <c:forEach items='${reservedSeatList}' var ="dto" varStatus = "status">
                if($(seatList).eq(i).data('tooltip') == "${dto.seat}"){
                   //console.log($(seatList[i]).data('tooltip'));
                   
                   
                   $(seatList).eq(i).addClass("row__seat--reserved");
                }
               </c:forEach>
             
          
          }
         
         // console.log($(seatList[0]).data('tooltip'));
         $(buy).click(function(){
            

            seatSelect = $('#seat').contents().find('.row__seat--selected');
            //console.log(seatSelect);
            seatSelect.removeClass("tooltip");
            seatSelect.removeClass("row__seat--selected");
            seatSelect.addClass("row__seat--reserved");
            //다음화면으로 전환
			var str ='';
            //seatSelect.data('tooltip');
            for (var i = 0; i < seatSelect.size(); i++) {
				str += $(seatSelect).eq(i).data('tooltip')+" ";
				
			}

            
            //console.log($("#seat_box"));
            
            console.log(str);
			$("#seat_box").append("<input type='hidden' name='seat' value='" + str + "'>");
			$("#seat_box").append("<input type='hidden' name='adult' value='" + num_20_count + "'>");
			$("#seat_box").append("<input type='hidden' name='teen' value='" + num_10_count + "'>");
			$("#seat_box").append("<input type='hidden' name='senior' value='" + num_65_count + "'>");
			$("#seat_box").append("<input type='hidden' name='total' value='" + total_num + "'>");
			$("#seat_box").append("<input type='hidden' name='totalPrice' value='" + total_price + "'>");
            
            
            $("#send_reserve").submit();
			

         });


   
         
      
         
      } , 500);


      	var week = ['일', '월', '화', '수', '목', '금', '토'];

		var reserve_day = ${rdto.day.substring(0, 10)};

		var dayOfWeek = week[new Date(reserve_day).getDay()];

		$("#reserve_day").text(dayOfWeek);
		
		
		
		
      
      
   });

   var num_20_count = 0;
   var num_10_count = 0;
   var num_65_count = 0;
   var total_num = 0;
   var total_price =0;
   
   function plusMinus(Btn) {
      if (Btn == "Minus_20") {
         if (num_20_count == 0) {
            num_20_count = 0;
         } else {
            num_20_count--;
         }
         

      } else if (Btn == "Plus_20") {
         if (num_20_count == 4) {
            num_20_count = 4;
         } else {
            num_20_count++;
         }
         
   
      } else if (Btn == "Minus_10") {
         if (num_10_count == 0) {
            num_10_count = 0;
         } else {
            num_10_count--;
         }
   
         
      
      } else if (Btn == "Plus_10") {
         if (num_10_count == 4) {
            num_10_count = 4;
         } else {
            num_10_count++;
         }
   
         

      } else if (Btn == "Minus_65") {
         if (num_65_count == 0) {
            num_65_count = 0;
         } else {
            num_65_count--;
         }
   
      
      
      } else if (Btn == "Plus_65") {
         if (num_65_count == 4) {
            num_65_count = 4;
         } else {
            num_65_count++;
         }
   

      } 
      $("#num_10").html(num_10_count);
      $("#num_20").html(num_20_count);
      $("#num_65").html(num_65_count);

      
      total_num = num_10_count + num_20_count + num_65_count;
      //console.log(total_num);

      total_price = (num_10_count*8000) + (num_20_count*10000) + (num_65_count*6000);
      
      //콤마 넣기
      
      $("#price").html(comma(total_price) +"원");

      //데이터전송
      setTimeout(function() {
    	  
	      document.getElementById('seat').contentWindow.postMessage( total_num, '*' );
	      
      }, 1000);
      
      
   }

   // 천단위 콤마 넣기
   function comma(num) {
        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
   }


</script>
<body>
   <!-- movie_select_seat.htm -->


   <!-- 예매 틀 -->
   <div id="contents">
      <div class="reserve_box">
         <!-- 왼쪽 단계 바 -->
         <div class="reserve_step">
            <ul>
               <li class="disabled">
                  <a href="#">
                     <strong class="step_box">
                        <span class="step_num">01</span><br>
                        <span class="step_content">상영시간</span>
                     </strong>
                  </a>
               </li>
               <li class="active">
                  <a href="#">
                     <strong class="step_box">
                        <span class="step_num">02</span><br>
                        <span class="step_content">인원/좌석</span>
                     </strong>
                  </a>
               </li>
               <li class="disabled">
                  <a href="#">
                     <strong class="step_box">
                        <span class="step_num">03</span><br>
                        <span class="step_content">결제</span>
                     </strong>
                  </a>
               </li>
               <li class="disabled">
                  <a href="#">
                     <strong class="step_box">
                        <span class="step_num">04</span><br>
                        <span class="step_content">결제완료</span>
                     </strong>
                  </a>
               </li>
            </ul>
         </div>
         <!-- 상단 지역 -->
         <div class="cinema_info">
            <div class="group_top">
               <h4 class="person_seat">인원/좌석 선택</h4>
            </div>
            <div class="person_count">
               <div class="select_num_people_wrap">
                  <!-- 영화 정보 -->
                  <div class="movie_inform">
                     <span class="movie_poster"><img src="/movie/resources/img/${rdto.img}"></span>

                     <div class="group_inform">
                        <!-- 등급, 제목 -->
                        <div class="age_title">
                           <span class="age_limit"><img src="/movie/resources/img/${rdto.age}.png"></span>
                           <span class="movie_title">${rdto.name}</span>
                        </div>

                        <!-- 일시, 시간, 관 -->
                        <div class="movie_time_spot">
                           <div class="movie_time">
                              <span class="spot_date">${rdto.day.substring(2,10)}(<span id="reserve_day">xx</span>)</span><span class="stick">|</span><span class="spot_time">${rdto.startTime.substring(11,16)} ~ ${rdto.endTime.substring(11,16)}</span>
                           </div>
                           <div class="movie_time">
                              <span class="movie_area">${rdto.spot}</span>·<span class="movie_spot">${rdto.hall}</span>
                           </div>
                        </div>
                     </div>
                  </div>

                  <!-- 인원 세기 -->
                  <div class="count_people">
                     <ul>
                        <li id="person_20">
                           <strong class="person_title">성인&nbsp;&nbsp;</strong>
                           <span class="bx_num">
                              <button class="btn_mins" id="Minus_20" onclick="plusMinus('Minus_20')"><i class="fas fa-minus"></i></button>
                              <div id="num_20" class="txt_num">0</div>
                              <button class="btn_plus" id="Plus_20" onclick="plusMinus('Plus_20')"><i class="fas fa-plus"></i></button>
                           </span>
                        </li>

                        <li id="person_10">
                           <strong class="person_title">청소년&nbsp;&nbsp;</strong>
                           <span class="bx_num">
                              <button class="btn_mins" id="Minus_10" onclick="plusMinus('Minus_10')"><i class="fas fa-minus"></i></button>
                              <div id="num_10" class="txt_num">0</div>
                              <button class="btn_plus" id="Plus_10" onclick="plusMinus('Plus_10')"><i class="fas fa-plus"></i></button>
                           </span>
                        </li>

                        <li id="person_65">
                           <strong class="person_title">시니어&nbsp;&nbsp;</strong>
                           <span class="bx_num">
                              <button class="btn_mins" id="Minus_65" onclick="plusMinus('Minus_65')"><i class="fas fa-minus"></i></button>
                              <div id="num_65" class="txt_num">0</div>
                              <button class="btn_plus" id="Plus_65" onclick="plusMinus('Plus_65')"><i class="fas fa-plus"></i></button>
                           </span>
                        </li>

                        <li id="total_price">
                           <strong class="person_title">금액&nbsp;&nbsp;</strong>
                           <span class="bx_num">
                              
                              <div id="price" class="txt_num">0원</div>
         
                           </span>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
            

            <!-- 좌석 선택 -->
            <div id="seat_select">
               <iframe id="seat" style="width: 100%; height: 100%;" src="/movie/resources/SeatPreview/index.html" name="seat"></iframe>
            </div>
            <form id="send_reserve" action="/movie/reservation/movie_reserve.action?bar=1" method="POST" accept-charset="UTF-8">

				<div id="seat_box">
					<input type="hidden" name="movieSeq" value="${rdto.movieSeq}">
					<input type="hidden" name="name" value="${rdto.name}">
					<input type="hidden" name="img" value="${rdto.img}">
					<input type="hidden" name="age" value="${rdto.age}">
					<input type="hidden" name="areaSeq" value="${rdto.areaSeq}">
					<input type="hidden" name="city" value="${rdto.city}">
					<input type="hidden" name="spotSeq" value="${rdto.spotSeq}">
					<input type="hidden" name="spot" value="${rdto.spot}">
					<input type="hidden" name="hallSeq" value="${rdto.hallSeq}">
					<input type="hidden" name="hall" value="${rdto.hall}">
					<input type="hidden" name="screenInfoSeq" value="${rdto.screenInfoSeq}">
					<input type="hidden" name="day" value="${rdto.day}">
					<input type="hidden" name="dimension" value="${rdto.dimension}">
					<input type="hidden" name="screenTimeSeq" value="${rdto.screenTimeSeq}">
					<input type="hidden" name="startTime" value="${rdto.startTime}">
					<input type="hidden" name="endTime" value="${rdto.endTime}">
				</div>
            	
            	<input type="submit" name="send_reserve" value="예약하기" style='display: none;'>
            </form>
            
         </div>
      </div>
      
   </div>


</body>
</html>