<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	
	<link rel="stylesheet" href="/movie/resources/css/bootstrap.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/movie/resources/css/mobiscroll.jquery.min.css">

	<script src="/movie/resources/js/jquery-1.12.4.js"></script>
	<script src="/movie/resources/js/bootstrap.bundle.min.js"></script>
	
    <script src="/movie/resources/js/mobiscroll.jquery.min.js"></script>
    <script src="/movie/resources/js/string.js"></script>
	
</head>

<style>

	
	/* .spot::-webkit-scrollbar, .movie_list::-webkit-scrollbar, .movie_time_list::-webkit-scrollbar {
		display: none;
	} */
	
	/* .spot::-webkit-scrollbar, .movie_list::-webkit-scrollbar, .movie_time_list::-webkit-scrollbar {
		display: none;
	} */
	
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

	.cinema_info, .movie_select {
		float: left;
		width: 450px;
		height: 100%;
		border-bottom: 1px solid #DDD;
	}

	.day_select {
		float: left;
		width: 670px;
		height: 100%;
	}

	.group_top {
		background-color: black;
		height: 55px;
		text-align: center;
		padding-top: 8px;
	}

	.cinema_area, .movie_area, .movie_day {
		color: white;
	}

	.inner_top {
		width: 450px;
		height: 60px;
		text-align: center;
		padding-top: 20px;
		border-bottom: 1px solid #F5F5F5;
		font-size: 16px;
		font-weight: bold;
	}

	.areaSpot {
		width: 450px;
		height: 100%;
	}

	.area {
		width: 225px;
		height: 785px;
		float: left;
		background-color: #F5F5F5;
		border-top: 2px solid black;
	}

	.area > ul {
		padding-left: 0px;
		height: 100%;
	}
	
	.areaLi:nth-child(1) .check {
		display:inline-block;
	}

	.areaLi, .spotLi {
		display: block;
		text-align: left;
		height: 40px;
		padding-top: 10px;
		cursor: pointer;
	}

	.areaLi a, .spotLi a {
		margin-top: 50px;
	}


	a {
		color: black;
	}

	.area > ul > li > a, .spot > ul > li > a {
		padding: 12px 18px;
		font-size: 13px;
	}

	.area > ul > li > a:hover, .movie_list > ul > li > a:hover {
		color: black;
		text-decoration: none;
	}


	.spot {
		width: 225px;
		height: 785px;
		overflow: scroll;
		overflow-x: hidden;
		scroll-behavior: smooth;
	}

	.spot > ul {
		padding-left: 0px;
	}

	.spot > ul > li {
		display: block;
	}

	.spot > ul > li > a:hover {
		text-decoration: none;
		color: red;
	}

	.select_top {
		background-color: #F5F5F5;
		border-bottom: 1px solid #CCC;
	}

	#sort {
		/* margin-left: -250px; */
		float: left;
		width: 150px;
		height: 30px;
		font-size: 12px;
		margin-left: 20px;
		margin-top: -5px;
	}

	.sort {
		display: inline-block;
	}

	.hamCube {
		display: inline-block;
		float: right;
		margin-right: 10px;
	}

	#hamburg {
		cursor: pointer;
		padding: 1px 6px;
	}

	#cube {
		cursor: pointer;
		opacity: .5;
		padding: 1px 6px;
	}

	.movie_list {
		background-color: #F5F5F5;
		height: 785px;
		overflow: scroll;
		overflow-x: hidden;
		scroll-behavior: smooth;
	}

	.movie_list a {
		padding: 0px 20px;
		width: 100%;
	}

	.movie_list ul {
		padding-left: 0px;
	}

	.movie_list li {
		display: block;
		padding-top: 10px;
		width: 100%;
		height: 40px;
	}

	.age_limit img {
		width: 20px;
		height: 20px;
	}

	.movie_title {
		margin-left: 10px;
		padding-top: 10px;
		font-weight: bold;
	}

	.day_inner {
		height: 150px;
		width: 400px;
		text-align: center;
		padding-top: 20px;
		font-size: 16px;
		font-weight: bold;
	}

	.time_type {
		display: flex;
	}

	.types {
		flex: 1;
		text-align: center;
		border-bottom: 1px solid #CCC;
		font-weight: bold;
		opacity: .5;
		cursor: pointer;
		padding-bottom: 10px;
	}

	.types:hover {
		opacity: 1;
	}

	.types:first-child {
		opacity: 1;
		border-bottom: 2px solid black;
	}

	#contents::after {
		content: " ";
		display: block;
		clear: both;
	}

	.time_seat {
		border: 1px solid #DDD;
		background: linear-gradient(to bottom, rgba(255, 255, 255, 1) 0%, rgba(248, 248, 248, 1) 100%);
		width: 110px;
		height: 48px;
		text-align: center;
		border-radius: 5px;
		padding: 2px 2px;
		cursor: pointer;
	}

	.movie_time {
		font-size: 15px;
		font-weight: bold;
		margin-top: 3px;
	}

	.seat_spot {
		font-size: 13px;
	}

	.seat {
		float: left;
		margin-left: 10px;
	}

	.movie_spot {
		float: right;
		margin-right: 10px;
	}

	.allow_seat {
		font-weight: bold;
	}

	.time_select_movie {
		margin-top: 15px;
	}

	.time_select_movie > ul {
		padding-left: 0px;
	}

	.time_select_movie > ul > li {
		display: inline-block;
	}

	.time_seat {
		margin-right: 11px;
		margin-bottom: 15px;
	}

	.time_movie_type {
		font-size: 13px;
	}

	.group_time_select {
		margin: 30px 15px;
	}

	.movie_time_list {
		width: 100%;
		height: 600px;
		overflow: scroll;
		overflow-x: hidden;
		scroll-behavior: smooth;
		border-bottom: 1px solid #CCC;
	}
	
	/* 62 */

	.area_active {
		background-color: white;
		font-weight: bold;
	}

	.check {
		color: #6F5D98;
		float: right;
		margin-right: 30px;
		display: none;
	}

	.spot_active {
		font-weight: bold;
		color: red;
	}

	.movieLi a {
		padding-top: -10px;
	}

	.movie_list_active {
		border: 2px solid black;
	}

	.calendar_nubi {
		width: 670px;
		margin-top: -20px;
	}

	.mbsc-ios.mbsc-fr-inline .mbsc-fr-w {
		background: #fff;
		border-top: none;
	}

	.mbsc-ios.mbsc-fr-inline .mbsc-fr-c {
		border-bottom: 1px solid #E6E6E6;
	}
	
	.mbsc-cal-week-view {
		font-family: 'Jeju Gothic';
	}
	
	#form_box {
		width: 100%;
		height: 100%;
	}
	
	#submit {
		width: 100%;
		height: 63px;
		color: white;
		font-size: 20px;
		text-align: center;
		border: none;
		background-color: #1B315F;
	}
	
	.ml-auto > ul > li:nth-child(2) {
		
	}

</style>
<script>

	$(document).ready(function() {
		
		
		
		$("a").click(function() {
			event.preventDefault();
		});
		
		$(".areaLi:nth-child(1)").addClass('area_active');
		
		var areaLi = $(".areaLi");
	
		areaLi.click(function() {

			areaLi.removeClass('area_active');
			areaLi.children(".check").css("display", "none");

			
			if ($(this).hasClass('area_active')) {
				$(this).removeClass('area_active');
				$(this).children(".check").css("display", "none");
			} else {
				$(this).addClass('area_active');
				$(this).children(".check").css("display", "inline-block");
			}
			
			$("#spot_list").html(" ");
			
			//alert($(this).children("a").text());
			//var area = JSON.stringify($(this).children("a").text());
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_spot.action",
			     dataType: "json",
			     data: "area=" + $(this).children("a").text(),
			   
			     
			     success: function(result) {			    	$(result).each(function(index, v) {
			    		var row = String.format("<li class='spotLi'><a href='#'>{0}</a></li>", v.spot);
			    		
			    	$("#spot_list").append(row);
			    	
			    	})
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
			
		});

		var spotLi = $(".spotLi");

		var spotLiA = $(".spotLi a");

		spotLi.on("click", ".spotLi", ".spotLi a", function() {

			alert($(this));

			//$(this).addClass('spot_active');

			spotLiA.removeClass('spot_active');

			$(".cinema_area").html($(this).children("a").text());

			if ($(this).hasClass('spot_active')) {
				 $(this).children("a").removeClass('spot_active');
			} else {
				 $(this).children("a").addClass('spot_active');
			}

		});

		var movieLi = $(".movieLi");

		var movieTitle = $(".movieLi .movie_title")

		movieLi.click(function() {

			movieLi.removeClass('movie_list_active');
			movieLi.children("a").children(".check").css("display", "none");

			$(".movie_area").html($(this).text());

			if ($(this).hasClass('movie_list_active')) {
				$(this).removeClass('movie_list_active');
				$(this).children(".check").css("display", "none");
				$(this).children("a").children(".check").css("display", "none");
			} else {
				$(this).addClass('movie_list_active');
				$(this).children(".check").css("display", "inline-block");
				$(this).children("a").children(".check").css("display", "inline-block");
			}

		});

		//툴팁
		$(function () {
			$('[data-toggle="tooltip"]').tooltip()
		});

		//캘린더
		mobiscroll.settings = {
			lang: "ko",
			theme: 'ios',
			themeVariant: 'light'
		};

		$(function () {
			$('#demo-one-week').mobiscroll().calendar({
				display: 'inline',
				weeks: 1
			})
		});
	
	});
	
	$(window).load(function() {
        $(".movie_day").html($(".mbsc-selected").data("full"));

        // || $(".mbsc-selected").is("[aria-label*='오늘']")

        if ($(".mbsc-selected").is("[aria-label*='일요일']")) {
           $(".movie_day").append("(일)");
        } else if ($(".mbsc-selected").is("[aria-label*='월요일']")) {
           $(".movie_day").append("(월)");
        } else if ($(".mbsc-selected").is("[aria-label*='화요일']")) {
           $(".movie_day").append("(화)");
        } else if ($(".mbsc-selected").is("[aria-label*='수요일']")) {
           $(".movie_day").append("(수)");
        } else if ($(".mbsc-selected").is("[aria-label*='목요일']")) {
           $(".movie_day").append("(목)");
        } else if ($(".mbsc-selected").is("[aria-label*='금요일']")) {
           $(".movie_day").append("(금)");
        } else if ($(".mbsc-selected").is("[aria-label*='토요일']")) {
           $(".movie_day").append("(토)");
        }

        $(document).on("click", ".mbsc-cal-day", function() {
           $(".movie_day").html($(this).data("full"));
           if ($(".mbsc-selected").is("[aria-label*='일요일']")) {
              $(".movie_day").append("(일)");
           } else if ($(".mbsc-selected").is("[aria-label*='월요일']")) {
              $(".movie_day").append("(월)");
           } else if ($(".mbsc-selected").is("[aria-label*='화요일']")) {
              $(".movie_day").append("(화)");
           } else if ($(".mbsc-selected").is("[aria-label*='수요일']")) {
              $(".movie_day").append("(수)");
           } else if ($(".mbsc-selected").is("[aria-label*='목요일']")) {
              $(".movie_day").append("(목)");
           } else if ($(".mbsc-selected").is("[aria-label*='금요일']")) {
              $(".movie_day").append("(금)");
           } else if ($(".mbsc-selected").is("[aria-label*='토요일']")) {
              $(".movie_day").append("(토)");
           }
           
           
            $(".movie_time_list").html(" ");
			$(".time_movie_list").html(" ");
			
			
			var movieArray = {
					"spot" : $(".spot_active").text(), //지점
					"day" : $(".mbsc-selected").data("full"), //날짜
					"name" : $(this).text() //영화이름
			};
			var datas = JSON.stringify(movieArray);
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_click_list.action",
			     dataType: "json",
			     data: datas,
			     contentType : "application/json; charset=UTF-8",
			     
			     success: function(result) {
			    	$(result).each(function(index, v) {
			    	
			    		var row = String.format("<div class='group_time_select'><div class='time_select_title'><span class='age_limit'><img src='/movie/resources/img/{0}.png'></span><span class='movie_title'>{1}</span></div><div class='time_select_movie'><div class='time_movie_type'>{2}D</div><ul id='time_movie_list' class='time_movie_list'></ul></div></div>", v.age, v.name, v.dimension);
				    	
				    	$(".movie_time_list").append(row);
				    	
			    	})
			    	
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_click_screen_list.action",
			     dataType: "json",
			     data: datas,
			     contentType : "application/json; charset=UTF-8",
			     
			     success: function(result) {
			    	$(result).each(function(index, v) {
			    	
				    	var seat = 288 - Number(v.seatCnt);
			    		console.log(seat);
			    		
				    	var screen_row = String.format("<li><div class='time_seat' data-toggle='tooltip' data-placement='top' data-original-title='종료 : 22:00'><div class='movie_time'>{0}</div><div class='seat_spot'><span class='seat'><span class='allow_seat'>" + "{1}" + "</span>/288</span><span class='movie_spot'>{2}</span></div><input type='hidden' id='timeSeq{3}' name='timeSeq{3}' value='{3}'></div></li>", v.startTime.substring(10,16), seat, v.hall, v.screenTimeSeq);
				    	
				    	$("#time_movie_list").append(screen_row);
				    	
			    	})
			    	
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
           
           
           
        });
     });
	

	
	
	$(document).on("click", ".spotLi", function() {
		
		var spotLi = $(".spotLi");

		var spotLiA = $(".spotLi a");

			//alert($(this));

			//$(this).addClass('spot_active');

			spotLiA.removeClass('spot_active');

			$(".cinema_area").html($(this).children("a").text());

			if ($(this).hasClass('spot_active')) {
				 $(this).children("a").removeClass('spot_active');
			} else {
				 $(this).children("a").addClass('spot_active');
			}
			
			
			$("#movie_list_detail").html(" ");
			$(".movie_time_list").html(" ");
			
			
			//alert($(".mbsc-cal-day").data("full"));
			//var movieArray = {$(this).children("a").text(), $(".mbsc-cal-day").data("full")};
			
			var movieArray = {
					"spot" : $(this).children("a").text(), //지점
					"day" : $(".mbsc-selected").data("full") //날짜
			};
			var datas = JSON.stringify(movieArray);
			//alert(datas);
			
			
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_list.action",
			     dataType: "json",
			     data: datas,
			     contentType : "application/json; charset=UTF-8",
			     
			     success: function(result) {
			    	$(result).each(function(index, v) {
			    		//var row = String.format("<li class='spotLi'><a href='#'>{0}</a></li>", v.spot);
			    		var row = String.format("<li class='movieLi'><a href=''><span class='age_limit'><img src='/movie/resources/img/{0}.png'></span><span class='movie_title'>{1}</span><span class='check'><i class='fas fa-check'></i></span></a></li>", v.age, v.name);
			    		
			    		$("#movie_list_detail").append(row);

			    		var row2 = String.format("<div class='group_time_select'><div class='time_select_title'><span class='age_limit'><img src='/movie/resources/img/{0}.png'></span><span class='movie_title'>{1}</span></div><div class='time_select_movie'><div class='time_movie_type'>{2}D</div><ul id='time_movie_list{3}' class='time_movie_list'></ul></div></div>", v.age, v.name, v.dimension, index+1);
			    	
				    	$(".movie_time_list").append(row2);
			    	})
			    	
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
			
			
			$(".movie_time_list").html(" ");
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_screen_list.action",
			     dataType: "json",
			     data: datas,
			     contentType : "application/json; charset=UTF-8",
			     
			     success: function(result) {
			    	$(result).each(function(index, v) {
			    	
			    		var seat = 288 - Number(v.seatCnt);
			    		
				    	var screen_row = String.format("<li><div class='time_seat' data-toggle='tooltip' data-placement='top' data-original-title='종료 : 22:00'><div class='movie_time'>{0}</div><div class='seat_spot'><span class='seat'><span class='allow_seat'>" + "{1}" + "</span>/288</span><span class='movie_spot'>{2}</span></div><input type='hidden' id='timeSeq{3}' name='timeSeq{3}' value='{3}'></div></li>", v.startTime.substring(10,16), seat, v.hall, v.screenTimeSeq);
				    	
				    	for (var i=1; i<=10; i++) {
					    	if (v.movieSeq == i) {
					    		$("#time_movie_list" + i).append(screen_row);
					    	}   
				    		
				    	}
				    		
				    	
				    	//$("#time_movie_list0").append(screen_row);
				    	//$("#time_movie_list" + index).append(screen_row);
				    	
			    	})
			    	
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
	});
	
	$(document).on("click", ".movieLi", function() {
		
		var movieLi = $(".movieLi");

		var movieTitle = $(".movieLi .movie_title")


			movieLi.removeClass('movie_list_active');
			movieLi.children("a").children(".check").css("display", "none");

			$(".movie_area").html($(this).text());

			if ($(this).hasClass('movie_list_active')) {
				$(this).removeClass('movie_list_active');
				$(this).children(".check").css("display", "none");
				$(this).children("a").children(".check").css("display", "none");
			} else {
				$(this).addClass('movie_list_active');
				$(this).children(".check").css("display", "inline-block");
				$(this).children("a").children(".check").css("display", "inline-block");
			}
			
			
			$(".movie_time_list").html(" ");
			$(".time_movie_list").html(" ");
			
			
			var movieArray = {
					"spot" : $(".spot_active").text(), //지점
					"day" : $(".mbsc-selected").data("full"), //날짜
					"name" : $(this).text() //영화이름
			};
			var datas = JSON.stringify(movieArray);
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_click_list.action",
			     dataType: "json",
			     data: datas,
			     contentType : "application/json; charset=UTF-8",
			     
			     success: function(result) {
			    	$(result).each(function(index, v) {
			    	
			    		var row = String.format("<div class='group_time_select'><div class='time_select_title'><span class='age_limit'><img src='/movie/resources/img/{0}.png'></span><span class='movie_title'>{1}</span></div><div class='time_select_movie'><div class='time_movie_type'>{2}D</div><ul id='time_movie_list' class='time_movie_list'></ul></div></div>", v.age, v.name, v.dimension);
				    	
				    	$(".movie_time_list").append(row);
				    	
			    	})
			    	
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
			
			$.ajax({
			     type: "POST",
			     url: "/movie/movie_click_screen_list.action",
			     dataType: "json",
			     data: datas,
			     contentType : "application/json; charset=UTF-8",
			     
			     success: function(result) {
			    	$(result).each(function(index, v) {
			    	
				    	var seat = 288 - Number(v.seatCnt);
			    		console.log(seat);
			    		
				    	var screen_row = String.format("<li><div class='time_seat' data-toggle='tooltip' data-placement='top' data-original-title='종료 : 22:00'><div class='movie_time'>{0}</div><div class='seat_spot'><span class='seat'><span class='allow_seat'>" + "{1}" + "</span>/288</span><span class='movie_spot'>{2}</span></div><input type='hidden' id='timeSeq{3}' name='timeSeq{3}' value='{3}'></div></li>", v.startTime.substring(10,16), seat, v.hall, v.screenTimeSeq);
				    	
				    	$("#time_movie_list").append(screen_row);
				    	
			    	})
			    	
			     },
			     error: function(a, b, c) {
			     	console.log(a, b, c);
			     }
		    });
	});
	
	
	$(document).on("click", ".time_seat", function() {
		
		$(".time_seat").css("box-shadow", "0 0 0 0");		
		
		$(this).css("box-shadow", "0 0 1px 2px #1B315F");
		
		//alert($(this).children("input").val());
		
		var movieArray = {
				"spot" : $(".spot_active").text(), 		 	//지점
				"day" : $(".mbsc-selected").data("full"), 	//날짜
				"name" : $(".movie_list_active").text(),				  	//영화이름
				"screenTimeSeq" : $(this).children("input").val()
		};
		var datas = JSON.stringify(movieArray);
		
		$.ajax({
		     type: "POST",
		     url: "/movie/seat_click.action",
		     dataType: "json",
		     data: datas,
		     contentType : "application/json; charset=UTF-8",
		     
		     success: function(result) {
		    	$(result).each(function(index, v) {
		    	
		    		var row = String.format("<input type='hidden' name='movieSeq' value='{0}'><input type='hidden' name='name' value='{1}'><input type='hidden' name='img' value='{2}'><input type='hidden' name='age' value='{3}'><input type='hidden' name='areaSeq' value='{4}'><input type='hidden' name='city' value='{5}'><input type='hidden' name='spotSeq' value='{6}'><input type='hidden' name='spot' value='{7}'><input type='hidden' name='hallSeq' value='{8}'><input type='hidden' name='hall' value='{9}'><input type='hidden' name='screenInfoSeq' value='{10}'><input type='hidden' name='day' value='{11}'><input type='hidden' name='dimension' value='{12}'><input type='hidden' name='screenTimeSeq' value='{13}'><input type='hidden' name='startTime' value='{14}'><input type='hidden' name='endTime' value='{15}'>", v.movieSeq, v.name, v.img, v.age, v.areaSeq, v.city, v.spotSeq, v.spot, v.hallSeq, v.hall, v.screenInfoSeq, v.day, v.dimension, v.screenTimeSeq, v.startTime, v.endTime);
			    	
			    	$("#form_box").append(row);
			    	
		    	})
		    	
		     },
		     error: function(a, b, c) {
		     	console.log(a, b, c);
		     }
	    });
		
		
		
		
	});

	//.time_seat
	
	
	
</script>
<body>


	<!-- 예매 틀 -->
	<div id="contents">
		<div class="reserve_box">
			<!-- 왼쪽 단계 바 -->
			<div class="reserve_step">
				<ul>
					<li class="active">
						<a href="#">
							<strong class="step_box">
								<span class="step_num">01</span><br>
								<span class="step_content">상영시간</span>
							</strong>
						</a>
					</li>
					<li class="disabled">
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
					<h4 class="cinema_area">영화관</h4>
				</div>
				<div class="inner">
					<div class="inner_top">
						전체
					</div>
					<div class="areaSpot">

						<div class="area">
							<ul>
								<c:forEach items="${areaList}" var="list">
									<li class="areaLi"><a href="">${list.city}</a><span class="check"><i class="fas fa-check"></i></span></li>
								</c:forEach>
								<!-- <li class="areaLi"><a href="#">MY 영화관(0)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi area_active"><a href="#">서울(23)</a><span class="check" style="display: inline-block;"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">경기/인천(43)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">충청/대전(10)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">전라/광주(9)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">경북/대구(17)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">경남/부산/울산(22)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">강원(3)</a><span class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">제주(3)</a><span class="check"><i class="fas fa-check"></i></span></li> -->
							</ul>
						</div>

						<div class="spot">
							<ul id="spot_list">
								<li class="spotLi"><a href="">가산디지털</a></li>
								<li class="spotLi"><a href="">가양</a></li>
								<li class="spotLi"><a href="">강동</a></li>
								<li class="spotLi"><a href="">건대입구</a></li>
								<li class="spotLi"><a href="">김포공항</a></li>
								<li class="spotLi"><a href="">노원</a></li>
								<li class="spotLi"><a href="">독산</a></li>
								<li class="spotLi"><a href="">브로드웨이(신사)</a></li>
								<li class="spotLi"><a href="">서울대입구</a></li>
								<li class="spotLi"><a href="">수락산</a></li>
								<li class="spotLi"><a href="">수유</a></li>
								<li class="spotLi"><a href="">신도림</a></li>
								<li class="spotLi"><a href="">신림</a></li>
								<li class="spotLi"><a href="">에비뉴엘(명동)</a></li>
								<li class="spotLi"><a href="">영등포</a></li>
								<li class="spotLi"><a href="">용산</a></li>
								<li class="spotLi"><a href="">월드타워</a></li>
								<li class="spotLi"><a href="">은평(롯데몰)</a></li>
								<li class="spotLi"><a href="">장안</a></li>
								<li class="spotLi"><a href="">청량리</a></li>
								<li class="spotLi"><a href="">합정</a></li>
								<li class="spotLi"><a href="">홍대입구</a></li>
								<li class="spotLi"><a href="">황학</a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>

			<!-- 영화 선택 -->
			<div class="movie_select">
				<div class="group_top">
					<h4 class="movie_area">영화 선택</h4>
				</div>
				<div class="inner">
					<div class="inner_top select_top">
						<select name="sort" id="sort" class="form-control sort">
							<option value="예매순">예매순</option>
							<option value="관객순">관객순</option>
							<option value="평점순">평점순</option>
							<option value="예정작">예정작</option>
						</select>
						<div class="hamCube">
							<span id="hamburg"><i class="fas fa-bars"></i></span>
							<span id="cube"><i class="fas fa-th-large"></i></span>
						</div>
					</div>

					<div class="movie_list">
						<ul id="movie_list_detail">
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
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">n번째 이별중</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">1917</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">주디</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">더 터닝</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">페임</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">벌새</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
									<span class="movie_title">브리짓 존스의 일기</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">다크 워터스</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">월드 워 Z</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">돈 조반니</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/all.png"></span>
									<span class="movie_title">미니언즈</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">쥬라기 월드</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">온다</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">메기</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">카센타</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">스케어리 스토리: 어둠의 속삭임</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">곤지암</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">사랑하고 있습니까</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/all.png"></span>
									<span class="movie_title">찬실이는 복도 많지</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">노팅 힐</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">스타 이즈 본</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">이장</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/all.png"></span>
									<span class="movie_title">프리저베이션 홀 재즈밴드</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
									<span class="movie_title">아웃사이더</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">행복의 단추를 채우는 완벽한 방법</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/all.png"></span>
									<span class="movie_title">모리의 정원</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/ban18.png"></span>
									<span class="movie_title">젠틀맨</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">첫키스만 50번째</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">500일의 썸머</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">그 누구도 아닌</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/12.png"></span>
									<span class="movie_title">라라랜드</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
							<li class="movieLi">
								<a href="#">
									<span class="age_limit"><img src="/movie/resources/img/15.png"></span>
									<span class="movie_title">퀸 오브 아이스</span><span class="check"><i class="fas fa-check"></i></span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>


			<!-- 날짜 선택 -->
			<div class="day_select">
				<div class="group_top">
					<h4 class="movie_day">2020-03-08(일)</h4>
				</div>
				<div class="inner">
					<div class="day_inner">
						<div id="demo-one-week" class="calendar_nubi"></div>
					</div>
					<div class="time_type">
						<span class="types">전체</span>
						<span class="types">스페셜관</span>
						<span class="types">Atmos</span>
						<span class="types">13시간 이후</span>
						<span class="types">19시간 이후</span>
						<span class="types">심야</span>
					</div>

					<div class="movie_time_list">
						<!-- <div class="group_time_select">
							<div class="time_select_title">
								<span class="age_limit"><img src="/movie/resources/img/all.png"></span>
								<span class="movie_title">작은 아씨들</span>
							</div>
							<div class="time_select_movie">
								<div class="time_movie_type">2D</div>
								<ul id="time_movie_list">
									<li>
										<div class="time_seat" data-toggle="tooltip" data-placement="top" data-original-title="종료 : 22:00">
											<div class="movie_time">19:10</div>
											<div class="seat_spot">
												<span class="seat"><span class="allow_seat">278</span>/288</span>
												<span class="movie_spot">7관</span>
											</div>
										</div>
									</li>
									<li>
										<div class="time_seat" data-toggle="tooltip" data-placement="top" data-original-title="종료 : 22:00">
											<div class="movie_time">19:10</div>
											<div class="seat_spot">
												<span class="seat"><span class="allow_seat">278</span>/288</span>
												<span class="movie_spot">7관</span>
											</div>
										</div>
									</li>
									<li>
										<div class="time_seat" data-toggle="tooltip" data-placement="top" data-original-title="종료 : 22:00">
											<div class="movie_time">19:10</div>
											<div class="seat_spot">
												<span class="seat"><span class="allow_seat">278</span>/288</span>
												<span class="movie_spot">7관</span>
											</div>
										</div>
									</li>
									<li>
										<div class="time_seat" data-toggle="tooltip" data-placement="top" data-original-title="종료 : 22:00">
											<div class="movie_time">19:10</div>
											<div class="seat_spot">
												<span class="seat"><span class="allow_seat">278</span>/288</span>
												<span class="movie_spot">7관</span>
											</div>
										</div>
									</li>
									<li>
										<div class="time_seat">
											<div class="movie_time">19:10</div>
											<div class="seat_spot">
												<span class="seat"><span class="allow_seat">278</span>/288</span>
												<span class="movie_spot">7관</span>
											</div>
										</div>
									</li>
									<li>
										<div class="time_seat">
											<div class="movie_time">19:10</div>
											<div class="seat_spot">
												<span class="seat"><span class="allow_seat">278</span>/288</span>
												<span class="movie_spot">7관</span>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						 -->
					</div>
					
					<!-- form태그 -->
					<form method="POST" action="/movie/reservation/movie_select_seat.action?bar=1">
					<!-- <form method="POST" action="/movie/reservation/movie_reserve.action"> -->
						<div id="form_box">
							<input type="submit" id="submit" value="좌석선택">
						</div>
					</form>
				</div>
				
			</div>

		</div>
	</div>


</body>
</html>