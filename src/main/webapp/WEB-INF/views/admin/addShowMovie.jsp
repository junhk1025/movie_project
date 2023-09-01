<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>

<link rel="stylesheet" href="/movie/resources/css/bootstrap.css" />
<link rel="stylesheet" href="/movie/resources/css/adminRegister.css" />

<script src="/movie/resources/js/jquery-1.12.4.js"></script>
<script src="/movie/resources/js/jquery-ui.js"></script>
<link rel="stylesheet" href="/movie/resources/css/jquery-ui.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous" />

<link rel="stylesheet" href="/movie/resources/css/mobiscroll.jquery.min.css" />
<script src="/movie/resources/js/mobiscroll.jquery.min.js"></script>

</head>

<body>
	<div id="bg">
		<div class="content">
			<nav id="navLeft">
				<ul>
					<li class="disabled"><a href="#">영화 등록</a></li>
					<li class="active"><a href="#">상영 영화 등록</a></li>
					<li class="disabled"><a href="#">상영 영화 삭제</a></li>
				</ul>
			</nav>

			<!-- 상단 지역 -->
			<div class="cinema_info">
				<div class="group_top">
					<h4 class="cinema_area">영화관</h4>
				</div>
				<div class="inner">
					<div class="inner_top">전체</div>
					<div class="areaSpot">
						<div class="area">
							<ul>
								<li class="areaLi"><a href="#">MY 영화관(0)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">서울(23)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">경기/인천(43)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">충청/대전(10)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">전라/광주(9)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">경북/대구(17)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">경남/부산/울산(22)</a><span
									class="check"><i class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">강원(3)</a><span class="check"><i
										class="fas fa-check"></i></span></li>
								<li class="areaLi"><a href="#">제주(3)</a><span class="check"><i
										class="fas fa-check"></i></span></li>
							</ul>
						</div>

						<div class="spot">
							<ul>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
								<li class="spotLi"><a href="#">가산디지털</a></li>
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
							<span id="hamburg"><i class="fas fa-bars"></i></span> <span
								id="cube"><i class="fas fa-th-large"></i></span>
						</div>
					</div>

					<div class="movie_list">
						<ul>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/15.png" /></span> <span class="movie_title">인비저블맨</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/12.png" /></span> <span class="movie_title">정직한 후보</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/all.png" /></span> <span class="movie_title">작은 아씨들</span><span
									class="check"><i class="fas fa-check"></i></span>
							</a></li>
							<li class="movieLi"><a href="#"> <span class="age_limit"><img
										src="/movie/resources/img/ban18.png" /></span> <span class="movie_title">지푸라기라도
										잡고 싶은 짐승들</span><span class="check"><i class="fas fa-check"></i></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>

			<!-- 시간 선택 -->
			<div class="day_select">
				<div class="group_top">
					<h4 class="movie_day">시간</h4>
				</div>

				<div class="time_inner">
					<div class="time_top">
						<div id="demo-one-week"></div>
					</div>
				</div>

				<div class="group_time_select">
					<div>
						<span class="age_limit"><img src="/movie/resources/img/15.png" /></span> <span
							class="movie_title">1917</span>
					</div>

					<div class="time_list">
						<ul>
							제 1관 (60석)
							<div class="time_depth">
								<li><a href="#">10:30</a></li>
								<li><a href="#">12:30</a></li>
								<li><a href="#">14:30</a></li>
								<li><a href="#">16:30</a></li>
							</div>
						</ul>

						<ul>
							제 2관 (60석)
							<div class="time_depth">
								<li><a href="#">10:30</a></li>
								<li><a href="#">12:30</a></li>
								<li><a href="#">14:30</a></li>
								<li><a href="#">16:30</a></li>
							</div>
						</ul>

						<ul>
							제 3관 (60석)
							<div class="time_depth">
								<li><a href="#">10:30</a></li>
								<li><a href="#">12:30</a></li>
								<li><a href="#">14:30</a></li>
								<li><a href="#">16:30</a></li>
							</div>
						</ul>

						<ul>
							제 4관 (60석)
							<div class="time_depth">
								<li><a href="#">10:30</a></li>
								<li><a href="#">12:30</a></li>
								<li><a href="#">14:30</a></li>
								<li><a href="#">16:30</a></li>
							</div>
						</ul>

						<ul>
							제 5관 (60석)
							<div class="time_depth">
								<li><a href="#">10:30</a></li>
								<li><a href="#">12:30</a></li>
								<li><a href="#">14:30</a></li>
								<li><a href="#">16:30</a></li>
							</div>
						</ul>

						<ul>
							제 6관 (60석)
							<div class="time_depth">
								<li><a href="#">10:30</a></li>
								<li><a href="#">12:30</a></li>
								<li><a href="#">14:30</a></li>
								<li><a href="#">16:30</a></li>
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		var areaLi = $(".areaLi");

		areaLi.click(function() {
			areaLi.removeClass("area_active");
			areaLi.children(".check").css("display", "none");

			if ($(this).hasClass("area_active")) {
				$(this).removeClass("area_active");
				$(this).children(".check").css("display", "none");
			} else {
				$(this).addClass("area_active");
				$(this).children(".check").css("display", "inline-block");
			}
		});

		var spotLi = $(".spotLi");

		var spotLiA = $(".spotLi a");

		spotLi.click(function() {
			//alert($(this));

			//$(this).addClass('spot_active');

			spotLiA.removeClass("spot_active");

			$(".cinema_area").html($(this).children("a").text());

			if ($(this).hasClass("spot_active")) {
				$(this).children("a").removeClass("spot_active");
			} else {
				$(this).children("a").addClass("spot_active");
			}
		});

		var movieLi = $(".movieLi");

		var movieTitle = $(".movieLi .movie_title");

		movieLi
				.click(function() {
					movieLi.removeClass("movie_list_active");
					movieLi.children("a").children(".check").css("display",
							"none");

					$(".movie_area").html($(this).text());

					if ($(this).hasClass("movie_list_active")) {
						$(this).removeClass("movie_list_active");
						$(this).children(".check").css("display", "none");
						$(this).children("a").children(".check").css("display",
								"none");
					} else {
						$(this).addClass("movie_list_active");
						$(this).children(".check").css("display",
								"inline-block");
						$(this).children("a").children(".check").css("display",
								"inline-block");
					}
				});

		
		
		
		mobiscroll.settings = {
			lang : "ko", // Specify language like: lang: 'pl' or omit setting to use default
			theme : "ios", // Specify theme like: theme: 'ios' or omit setting to use default
			themeVariant : "light" // More info about themeVariant: https://docs.mobiscroll.com/4-10-3/calendar#opt-themeVariant
		};

		$(function() {
			// Mobiscroll Calendar initialization
			$("#demo-one-week").mobiscroll().calendar({
				display : "inline", // Specify display mode like: display: 'bottom' or omit setting to use default
				weeks : 1
			// More info about weeks: https://docs.mobiscroll.com/4-10-3/calendar#opt-weeks
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
			});
		});
	</script>