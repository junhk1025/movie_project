<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인페이지</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" crossorigin="anonymous">

<style>

   	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);   .jejugothic * { font-family: 'Jeju Gothic', sans-serif; }
	
	body { 
      overflow: auto;
   	}
   	body::before {
      position: fixed; 
      top: 0; 
      left: 0; 
      right: 0; 
      bottom: 0; 
      background-image: url(/movie/resources/img/바탕.jpg); 
      background-size: cover;
      -webkit-filter: blur(5px);
      -moz-filter: blur(5px);
      -o-filter: blur(5px);
      -ms-filter: blur(5px);
      filter: blur(5px);
      transform: scale(1.02);
      z-index: -1;
      content: "";
      background-color: #666;
      background-blend-mode: multiply;
   	}
	
   	#mainbox {
		/* 메인페이지 영화 목록 전체 */
      	font-family: 'Jeju Gothic';
     	border: 1px solid black;
      	width: 1400px;
      	height: 600px;
      	margin: 200px auto 0px;
      	color: #aaa;
      	/* background-color: #333; */
      	background-color: #333;
   	}

   	#boxtop {
		/* 영화 목록 상단 글씨 */
      	/* border: 1px solid orange; */
      	margin: 40px auto 0px;
      	height: 25px;
   	}
   	#boxtop::after {
      	content: "";
      	display: block;
      	clear: both;
   	}

   	.center {
		/* 영화목록 상단의 중간에 위치한 글 */
      	/* border: 1px solid rebeccapurple; */
      	width: 260px;
      	height: 20px;
      	margin: 0px auto;
   	}
   	.center::after {
      	content: "";
      	display: block;
      	clear: both;
   	}

   	.dote {
		/* 중간에 위치한 글씨 사이 구분위한 점 */
      	float: left;
      	margin: 0px 20px;
   	}
   	.boxcheck {
		/* 중간에 위치한 글씨 */
      	float: left;
      	font-size: 20px;
   	}
   	.boxcheck:hover {
		/* 가운데 글씨 hover */
      	color: white;
      	border-bottom: 3px solid rgb(119, 119, 119);
      	cursor: pointer;
   	}
   	.moreright {
		/* 상단 오른쪽 더보기 버튼 */
      	/* border: 1px solid brown; */
      	float: right;
      	width: 140px;
      	font-size: 15px;
   	}
   	.moreright:hover {
		/* 상단 오른쪽 더보기 버튼 hover */
		cursor: pointer;
   	}
   
   	#boxcontent::after {
      	content: "";
      	display: block;
      	clear: both;
   	}


	#boxcontent {
		/* <,>버튼 + 영화정보 전체 감싸는 상자 */
		/* border: 1px solid tomato; */
		width: 1230px;
		margin: 80px auto 0px;
	}
	.btn_img {
		/* <,> 버튼 */
		border: 0px solid springgreen;
		font-size: 25px;
		cursor: pointer;
		margin-top: 160px;
		color: white;
		background-color: #333; 
		outline: none;
	}
	.posters {
		/* 전체 영화 정보 보여주는 상자 역할 */
		/* border: 1px solid steelblue; */
		width: 1160px;
		overflow: hidden;
	}
	.posters::after {
		content: "";
		display: block;
		clear: both;
	}
	.posterbox {
		/* 한 영화의 정보 감싸는 상자 역할 */
		/* border: 1px solid white; */
		width: 250px;
		height: 400px;
		text-align: center;
		color: white;
		float: left;
		margin: 0px 20px;
		/* overflow: hidden; */
	}
	#slide {
		/* 버튼 클릭시 움직일 수 있도록 모든 영화정보 감싸는 상자 */
		/* border: 1px solid pink; */
		width: 2320px;
		height: 400px;
		position: relative;
		transition: all .7s;
		/* overflow: hidden; */
	}
	#slide::after {
		content: "";
		display: block;
		clear: both;
	}
	.img {
		/* 영화이미지 사이즈 */
		width: 250px;
		height: 350px;
	}
	.img:hover {
		/* 영화 이미지 hover */
		cursor: pointer;
	}
	.fl {
		/* float */
		float: left;
	}


</style>
</head>
<body>
	<div id="mainbox">
		<div id="boxtop">
			<div class="center">
				<div class="boxcheck" id="rate" style="color: white;">예매율</div>
				<div class="dote">·</div>
				<div class="boxcheck" id="grade">평점</div>
				<div class="dote">·</div>
				<div class="boxcheck" id="audi">누적관객</div>
			</div>
			<div class="moreright">더많은 영화보기 <i class="fas fa-plus"></i></div>
		</div>

		<div id="boxcontent">
			<button type="button" class="fl btn_img"><i class="fas fa-chevron-left"></i></button>
			<div class="fl posters">
				<div id="slide">
					<c:forEach items="${list}" var="dto">
					<div class="posterbox">
						<img src="/movie/resources/img/${dto.img}" class="img">
						<div style="margin: 5px 0px; cursor: pointer;">${dto.name}</div>
						<div style="font-size: 12px;">예매율 ${dto.rate}% ｜ <i class="fas fa-star" style="color: rgb(252, 220, 41);"></i> ${dto.avggrade}</div>
					</div>
					</c:forEach>
				</div>
			</div>
			<button type="button" class="fl btn_img"><i class="fas fa-chevron-right"></i></button>
		</div>
	</div>


   <script>

		var btn = document.getElementsByClassName("btn_img");
		var slide = document.getElementById("slide");

		var boxcheck = document.getElementsByClassName("boxcheck");

		slide.style.left = 0 + "px";

		btn[0].onclick = function() {
			console.log(slide.style.left);
			if(parseInt(slide.style.left) >= 0) {
				btn[0].readOnly = true;
				btn[0].style.color = "#bbb"
			} else {
				btn[1].readOnly = false;
				btn[1].style.color = "white"
				
				slide.style.left = parseInt(slide.style.left) + 290 + "px";
			}
		};

		btn[1].onclick = function() {
			if(parseInt(slide.style.left) <= -1160) {
				btn[1].readOnly = true;
				btn[1].style.color = "#bbb"
			} else {
				btn[0].readOnly = false;
				btn[0].style.color = "white"
				
				slide.style.left = parseInt(slide.style.left) - 290 + "px";
			}
		};

		for(var i=0; i<boxcheck.length; i++) {

			boxcheck[i].onclick = function() {
				
				for(var i=0; i<boxcheck.length; i++) {
					boxcheck[i].style.color = "#aaa";
				}
				
				this.style.color = "white";
				
			};
			
		}
		
		$("#rate").click(function() {
			$.ajax({
				
				url: "/movie/user/userMenuSel.action",
				type: "POST",
				data:"sort=rate",
				datatype: "json",
				success: function(data) {
					var result = JSON.parse(data);
					console.log(result);
					$(".posterbox").remove();
					
					$(result).each(function (index, t){
						if(t.avggrade == null) {
							t.avggrade = 0
						}
						if(t.rate == null) {
							t.rate = 0
						}
						 var row = "<div class='posterbox'>"
						+"<img src='/movie/resources/img/" + t.img + "' class='img'>"
						+"<div style='margin: 5px 0px; cursor: pointer;'>" + t.name + "</div>"
						+"<div style='font-size: 12px;'>예매율 " + t.rate
						+ "% ｜ <i class='fas fa-star' style='color: rgb(252, 220, 41);'></i> "
						+ t.avggrade
						+ "</div>" + "</div>"
						
					$("#slide").append(row);
					}); 
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
							
			});
		});
		
		$("#grade").click(function() {
			$.ajax({
				
				url: "/movie/user/userMenuSel.action",
				type: "POST",
				data:"sort=avggrade",
				datatype: "json",
				success: function(data) {
					var result = JSON.parse(data);
					console.log(result);
					$(".posterbox").remove();
					
					$(result).each(function (index, t){
						if(t.avggrade == null) {
							t.avggrade = 0
						}
						if(t.rate == null) {
							t.rate = 0
						}
						 var row = "<div class='posterbox'>"
							 +"<img src='/movie/resources/img/" + t.img + "' class='img'>"
						+"<div style='margin: 5px 0px; cursor: pointer;'>"+t.name+"</div>"
						+"<div style='font-size: 12px;'>예매율 " + t.rate
						+ "% ｜ <i class='fas fa-star' style='color: rgb(252, 220, 41);'></i> "
						+ t.avggrade
						+ "</div></div>"
						
					$("#slide").append(row);
					}); 
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
		});
		$("#audi").click(function() {
			$.ajax({
				
				url: "/movie/user/userMenuSel.action",
				type: "POST",
				data:"sort=rate",
				datatype: "json",
				success: function(data) {
					var result = JSON.parse(data);
					console.log(result);
					$(".posterbox").remove();
					
					$(result).each(function (index, t){
						if(t.avggrade == null) {
							t.avggrade = 0
						}
						if(t.rate == null) {
							t.rate = 0
						}
						 var row = "<div class='posterbox'>"
							 +"<img src='/movie/resources/img/" + t.img + "' class='img'>"
						+"<div style='margin: 5px 0px; cursor: pointer;'>" + t.name + "</div>"
						+"<div style='font-size: 12px;'>예매율 " + t.rate
						+ "% ｜ <i class='fas fa-star' style='color: rgb(252, 220, 41);'></i> "
						+ t.avggrade
						+ "</div>" + "</div>"
						
					$("#slide").append(row);
					}); 
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
				
			});
		});

		

   </script>
</body>
</html>