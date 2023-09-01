<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>

	<link rel="stylesheet" href="/movie/resources/css/bootstrap.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

	<link rel="stylesheet" href="/movie/resources/SeatPreview/css/component.css">
		
	<script src="/movie/resources/SeatPreview/js/modernizr-custom.js"></script>
	<!-- <script src="/movie/resources/js/jquery-1.12.4.js"></script> -->
	<!-- <script src="/movie/resources/js/bootstrap.bundle.min.js"></script> -->

	<!-- 결제 api -->
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
	<script src="/movie/resources/js/jquery-1.12.4.js"></script>
	<script src="/movie/resources/js/bootstrap.bundle.min.js"></script>
	
    <script src="/movie/resources/js/mobiscroll.jquery.min.js"></script>
    <script src="/movie/resources/js/string.js"></script>

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
	.reserve_info {
		float: left;
		width: 370px;
		height: 100%;
		border-bottom: 1px solid #DDD;
		border-right: 1px solid #DDD;
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
	.pay_method {
		float: left;
		width: 660px;
		height: 100%;
		border-bottom: 1px solid #DDD;
		border-right: 1px solid #DDD;
	}

	.pay_action {
		float: left;
		width: 540px;
		height: 100%;
		border-bottom: 1px solid #DDD;
	}

	.inner {
		overflow: hidden;
		height: 845px;
	}

	.inner .group_inform {
		padding: 45px 30px 18px;
    		border-bottom: 1px solid #DDD;	
	}

	.inner .movie_poster {
		display: block;
		overflow: hidden;
		margin: 0px auto 30px;
		border-radius: 4px;
		width: 270px;
	}

	.inner .movie_poster img {
		border: none;
		vertical-align: top;
		width: 100%;
	}

	.inner .group_inform .movie_time_spot, .inner .group_inform .age_title {
		margin: 0px auto 10px;
		width: 270px;
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
		font-size: 18px;
		font-weight: bold;
	}

	.group_inform .info_subject {
		clear: both;
		float: left;
		min-width: 40px;
		font-size: 11px;
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

	.inner .count_people {
		float: right;
		width: 1050px;
		margin-top: 36px;
	}

	ul {
		list-style: none;
	}
	

	.inner .group_inform:nth-child(2) {
		padding: 30px 30px 18px;
	}

	.inner .group_inform .seat_subject {
		display: block;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
		font-size: 12px;
		width: 270px;
		margin: 0px auto 5px;
	}

	.title_screen {
		text-align: center;
		margin: 10px 0px 7px;
	}

	.row {
		width: 100%;
		margin: 0px auto;
	}

	.rows--mini {
		width: 150px;
	}

	.seat_area .rows--mini .row__seat {
		width: 5px;
		height: 5px;
	}

	.pay_method .inner {
		background-color: #F8F8F8;
	}

	.inner .group_discount {
		padding: 15px 30px;
		min-height: 400px;
		border-bottom: 1px solid #EEE;
		margin:10px 0 10px; 
		border-radius:4px; 
	}

	.inner .group_discount .title_payment {
		font-size: 16px;
	}

	.inner .group_discount ul {
		padding-left: 0px;
		display:flex;
		margin-bottom: 0px;
	}

	.inner .group_discount ul li {
		flex:2;
	}

	.inner .group_discount .point_text ul li:first-child button {
		border-radius:4px 0 0 0; 
		border-left:none;
	}

	.inner .group_discount .point_text ul li button {
		background-color: white;
	}

	.inner .group_discount .point_text .point_text_btn {
		background-color: white;
	}

	.inner .group_discount ul li .cine_point, .inner .group_discount ul li .point_text_btn {
		display:block; 
		position:relative; 
		width:100% ; 
		height:100%; 
		line-height:40px; 
		border:none; 
		border-left:1px solid #DDD; 
		font-size:14px; color:#666; 
		background-color:#F8F8F8;
	}

	.inner .group_discount ul li button .point {
		color: #2AA3FE;
	}

	.inner .group_discount .point_box {
		margin: 10px 0 10px;
		border-radius: 4px;
		border: 1px solid #DDD;
		background-color: #FFF;
	}


	.inner .group_discount .point_text {
		height: 100%;
	}

	.point_text_btn .point_input {
		width: 60%;
		display: inline-block;
		margin: 7px 10px;
	}

	.point_text_btn .point_btn {
		width: 30%;
		height: 34px;
		float: right;
		margin-top: 7px;
		margin-right: 8px;
		padding-top: 0px;
		box-sizing: border-box;
		border-radius: 5px;
		border: 1px solid #000000;
		font-size: 14px;
		color: #000000 !important;
		text-align: center;
		background-color: #ffffff;
	}
	
	.point_text_btn .point_btn .application {
		display: block;
		margin-top: -2px;
		width: 100%;
		height: 100%;
	}


	.coupon_box {
		width: 100%;
	}

	.coupon_box .coupons {
		width: 100%;
	}

	
	.coupon_box .coupons .list_coupons {
		margin: 0 -1%;
		list-style: none;
		width: 100%;
		display: inline-block;
	}


	.coupon_box .coupons .list_coupons li {
		width: 20%;
		margin: 0 21px 10px 1%;
		display: inline-block;
	}


	.coupon_box .coupons .list_coupons button {
		height: 60px;
		width: 140px;
		background-color: #FFF;
		border-radius: 2px;
		font-size: 11px;
		border: 1px solid #DDD;
		font-weight: bold;
	}

	.inner .group_payment {
		padding: 15px 30px;
		min-height: 400px;
		margin:10px 0 10px; 
		border-radius:4px; 
	}

	.inner .group_payment .title_payment {
		display: block;
		margin: 18px 0 16px;
		font-size: 16px;
	}

	.inner .group_payment .payment_box {
		width: 100%;
		height: 100px;
		margin: 18px 0 16px;
		display: block;
	}

	.inner .group_payment .payment_box .list_pay_item {
		margin: 0 -1%;
		list-style: none;
		width: 100%;
		display: flex;
		padding: 0;
	}

	.group_payment .payment_box .list_pay_item li {
		width: 20%;
		float: left;
		margin: 0 10px 10px;
		flex: 4;
	}

	.group_payment .payment_box .list_pay_item li button i {
		font-size: 30px;
		margin-bottom: 6px;
	}

	.group_payment .payment_box .list_pay_item li button {
		width: 120px;
		height: 80px;
		background-color: #FFF;
		border-radius: 5px;
		font-size: 14px;
		border: 1px solid #DDD;
	}

	.inner .group_payment .pay_cards {
		width: 100%;
		height: 100px;
		margin: 18px 0 16px;
		display: none;
	}

	.inner .group_payment .pay_cards .list_pay_cards {
		margin: 0 -1%;
		width: 98%;
		padding: 0;
	}

	.pay_cards .list_pay_cards {
		margin: 0 -1%;
	}

	.pay_cards .list_pay_cards li {
		width: 18%;
		float: left;
		margin: 0 1% 10px;
	}

	.pay_cards .list_pay_cards li button {
		position: relative;
		height: 55px;
		width: 100%;
		border-radius: 4px;
		background-color: #FFF;
		border: 1px solid #DDD;
	}

	.pay_cards .list_pay_cards li button img {
		position: absolute;
		left: 50%;
		top: 10px;
		margin-left: -9px;
		width: 18px;
		height: 18px;
	}

	.pay_cards .list_pay_cards li button .card_title {
		display: block;
		padding-top: 20px;
		font-size: 12px;
		margin-top: 10px;
	}

	.agreement_box {
		height: 600px;
	}

	.agreement {
		padding: 10px 0 25px 0;
		border-top: 1px solid #DDD;
		border-bottom: 1px solid #DDD;
		background-color: #FFF;
		display: none;
	}

	.agreement .whole_agreement {
		position: relative;
		padding: 15px 30px 10px 50px;
		font-size: 16px;
	}

	.agreement .whole_agreement input[type="checkbox"] {
		position: absolute;
	}

	.agreement .whole_agreement input[type="checkbox"] + label::before {
		width: 15px;
		height: 15px;
	}

	.agreement .whole_agreement input[type="checkbox"] + label::after {
		width: 15px;
		height: 15px;
	}

	.agreement .whole_agreement label {
	}

	.input_size {
		width: 50px;
		height: 50px;
		font-size: 20px;
	}

	label {
		font-weight: normal;
	}

	.agreement .agreement_detail {
		position: relative;
		padding: 0 30px;
	}

	.agreement .agreement_detail .detail_box {
		padding: 10px 15px;
		background-color: #F8F8F8;
	}

	.agreement .agreement_detail .detail_box .detail_list {
		margin-top: 10px;
		padding-left: 10px;
	}

	.agreement .agreement_detail .detail_box .detail_list li {
		margin-bottom: 10px;
		font-size: 16px;
	}

	.agreement_detail .detail_box .detail_list .details input[type="checkbox"] + label::before {
		width: 15px;
		height: 15px;
	}

	.agreement_detail .detail_box .detail_list .details input[type="checkbox"] + label::after {
		width: 15px;
		height: 15px;
	}

	.agreement_detail .detail_box .detail_list .details .detail_view_btn {
		float: right;
		margin-right: 20px;
		font-size: 12px;
		color: gray;
	}

	.payment_sum .payment_box {
		padding: 20px 30px;
		display: block;
		background-color: #414141;
		border-top: 1px solid #676767;
		font-size: 14px;
	}
	
	
	.payment_sum .payment_box .payment_title {
		color: white;
	}
	
	.payment_sum .payment_box .money_box {
		float: right;
		color: white;
		font-weight: bold;
	}
	
	.payment_sum .payment_box .payment_money {
		margin-left: 50px;
	}

	.sum_money {
		padding: 20px 30px;
		display: block;
		background-color: #1B315F;
		border-top: 1px solid #676767;
		font-size: 16px;
	}

	.sum_money button {
		border: none;
		display: block;
		background-color: #1B315F;
		color: white;
		width: 71px;
		margin: 0 auto;
	}
	
	.reserve_step > ul > li:first-child {
		cursor: pointer;
	}
	
	.reserve_step > ul > li:nth-child(2) {
		cursor: pointer;
	}


</style>
<script>

	$(document).ready(function() {
		
		seat_fill();

		var sinyong = $("#sinyong");
		var pay_cards = $(".pay_cards");

		sinyong.click(function() {

			// 신용카드 클릭시 카드 목록 출력
			if (pay_cards.css("display") == "none") {
				sinyong.css("border", "2px solid #1B315F").css("animation-duration", "4s");
				pay_cards.css("display", "block");
				$(".agreement").css("display", "block");
			} else {
				sinyong.css("border", "1px solid #DDD");
				pay_cards.css("display", "none");
				$(".agreement").css("display", "none");
			}

			//카드 목록 클릭시 효과
			var cards_btn = $(".list_pay_cards button");

			cards_btn.click(function() {

				$(this).css("border", "2px solid #1B315F");
			});

			// 목록 클릭시 약관 동의 보이기

			//모두 동의 클릭시 모두 동의 체크
			$("#check_whole").change(function() {

				if ($("#check_whole").is(":checked")) {
					$(".detail_list input").prop("checked", true);
					
				} else {
					$(".detail_list input").prop("checked", false);
				}

			});

		});

		// 천단위 콤마 넣기
		Number.prototype.format = function(){
			if(this==0) return 0;

			var reg = /(^[+-]?\d+)(\d{3})/;
			var n = (this + '');

			while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');

			return n;
			};

		// 문자열 타입에서 쓸 수 있도록 format() 함수 추가
		String.prototype.format = function(){
			var num = parseFloat(this);
			if( isNaN(num) ) return "0";

			return num.format();
		};


		//콤마 넣기
		$(".payment_money").text(function() {
			$(this).text(
				$(this).text().format()
			);
		});

		// 포인트 적용
		$(".point_btn").click(function() {
			var point_input = $(".point_input").val();
			$("#discount_money").html(point_input);

			var product_money =  $("#product_money").html();
			//alert(product_money);
			var calculation = product_money.replace(/,/g, '') - point_input.replace(/,/g, '');
			$("#pay_money").html(comma(calculation));
			

		});

		function comma(num) {
			return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		}
		
		var week = ['일', '월', '화', '수', '목', '금', '토'];

		var reserve_day = ${rdto.day.substring(0, 10)};

		var dayOfWeek = week[new Date(reserve_day).getDay()];

		$("#reserve_day").text(dayOfWeek);

		
		//결제하기
		
		//돈
		var money = $("#pay_money").text().replace(/,/g, '');

		$("#sum_money").click(function () {
			if ($("#check_whole").is(":checked")) { 

				var IMP = window.IMP; // 생략가능
				IMP.init('imp46418598');
				// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
				// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
				IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				/*
				'kakao':카카오페이,
				html5_inicis':이니시스(웹표준결제)
				'nice':나이스페이
				'jtnet':제이티넷
				'uplus':LG유플러스
				'danal':다날
				'payco':페이코
				'syrup':시럽페이
				'paypal':페이팔
				*/
				pay_method: 'card',
				/*
				'samsung':삼성페이,
				'card':신용카드,
				'trans':실시간계좌이체,
				'vbank':가상계좌,
				'phone':휴대폰소액결제
				*/
				merchant_uid: 'merchant_' + new Date().getTime(),
				/*
				merchant_uid에 경우
				https://docs.iamport.kr/implementation/payment
				위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				참고하세요.
				나중에 포스팅 해볼게요.
				*/
				name: '주문명:결제테스트',
				//결제창에서 보여질 이름
				amount: money,
				//amount: 1000,
				//가격
				buyer_email: 'iamport@siot.do',
				buyer_name: '구매자이름',
				buyer_tel: '010-1234-5678',
				buyer_addr: '서울특별시 강남구 삼성동',
				buyer_postcode: '123-456',
				m_redirect_url: 'https://www.myservice.com/payments/complete'
				/*
				모바일 결제시,
				결제가 끝나고 랜딩되는 URL을 지정
				(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
				*/
			}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					alert('결제가 완료되었습니다.');
					
					
					//넘길 input 태그 넣기
					if ($(".point_input").val() == null || $(".point_input").val() == "") {
						$("#reserve_ok_box").append("<input type='hidden' name='saleWay' value='1'>");
						$("#reserve_ok_box").append("<input type='hidden' name='discountPrice' value='0'>");
					} else {
						$("#reserve_ok_box").append("<input type='hidden' name='saleWay' value='2'>");
						$("#reserve_ok_box").append("<input type='hidden' name='discountPrice' value='" + $(".point_input").val() + "'>");
					}
					
					$("#reserve_ok_box").append("<input type='hidden' name='payWay' value='1'>");
					$("#reserve_ok_box").append("<input type='hidden' name='payPrice' value='" + $("#pay_money").text().replace(/,/g, '') + "'>");
					
					if ($("#discount_money").text() > 0) {
						$("#reserve_ok_box").append("<input type='hidden' name='detail' value='2'>");
						$("#reserve_ok_box").append("<input type='hidden' name='point' value='-" + $(".point_input").val() + "'>");
					} else {
						$("#reserve_ok_box").append("<input type='hidden' name='detail' value='1'>");
						$("#reserve_ok_box").append("<input type='hidden' name='point' value='0'>");
					}
					
					$("#reserve_ok").submit();
					
					//$(location).attr('href', 'http://localhost:8090/movie/reservation/movie_screen_time.action');
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					alert('결제에 실패하였습니다.');
					//location.href('https://www.naver.com/');
				}
				alert(msg);
				});
			} else {
				alert('약관 동의 후 결제가능합니다');
			}
		});

		
		var screen_time = $(".reserve_step li:first-child");
		var screen_seat = $(".reserve_step li:nth-child(2)");
		
		screen_time.click(function() {
			location.href='http://localhost:8090/movie/reservation/movie_screen_time.action';
		});
		
		screen_seat.click(function() {
			//location.href='http://localhost:8090/movie/reservation/movie_select_seat.action';
			history.back();
		});
		
		
		//좌석체크
		function seat_fill() {
			
			var seat = "";
			
			for (var i = 0; i < $(".row__seat").size(); i++) {
	             <c:forEach items="${seat}" var ="dto" varStatus = "status">
	                if($(".row__seat").eq(i).data('tooltip') == "${dto}"){
	                   console.log($(".row__seat").data('tooltip'));
	                  
	                   seat += $(".row__seat").eq(i).data('tooltip') + " ";
	                   
	                   $(".row__seat").eq(i).addClass("row__seat--reserved");
	                }
	               </c:forEach>
	             
	          
	          }
			
			//alert(seat);
			
			$("#reserve_ok_box").append("<input type='hidden' name='seat' value='" + seat + "'>");
		}
		
	});


</script>
<body>
	<!-- movie_reserve.htm -->
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
					<li class="disabled">
						<a href="#">
							<strong class="step_box">
								<span class="step_num">02</span><br>
								<span class="step_content">인원/좌석</span>
							</strong>
						</a>
					</li>
					<li class="active">
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

			<!-- 예매정보 -->
			<div class="reserve_info">
				<div class="group_top">
					<h4 class="reserve">예매정보</h4>
				</div>

				<div class="inner">
					<div class="group_inform">
						<!-- 포스터 -->
						<span class="movie_poster"><img src="/movie/resources/img/${rdto.img}"></span>

						<!-- 등급, 제목 -->
						<div class="age_title">
							<span class="age_limit"><img src="/movie/resources/img/${rdto.age}.png"></span>
							<span class="movie_title">${rdto.name}</span>
						</div>

						<!-- 일시, 시간, 관 -->
						<div class="movie_time_spot">
							<div class="movie_time">
								<span class="info_subject">일시</span>
								<span class="spot_date">${rdto.day.substring(2,10)}(<span id="reserve_day">xx</span>)</span><span class="stick">|</span><span class="spot_time">${rdto.startTime.substring(11,16)} ~ ${rdto.endTime.substring(11,16)}</span>
							</div>
							<div class="movie_time">
								<span class="info_subject">영화관</span>
								<span class="movie_area">${rdto.spot}</span>·<span class="movie_spot">${rdto.hall}</span>-<span class="time_movie_type">${rdto.dimension}D</span>
							</div>
							<div class="movie_time">
								<span class="info_subject">인원</span>
								<span class="adult_title">성인</span>
								<span class="adult_num">${rdto.adult}</span>
								<span class="teen_title">청소년</span>
								<span class="teen_num">${rdto.teen }</span>
								<span class="senior_title">시니어</span>
								<span class="senior_num">${rdto.senior}</span>
							</div>
						</div>
					</div>

					<!-- 좌석 명시 -->
					<div class="group_inform">
						<div class="seat_subject">
							<span class="info_subject">좌석</span>
							<span class="seat_num">${rdto.seat}</span>
						</div>
					</div>

					<!-- 좌석 미니맵 -->
					<div class="seat_minimap_wrap">
						<div class="small_screen">
							<div class="title_screen">SCREEN</div>
							<div class="minimap">
								<div class="floor_bx seatSet">

									<!-- 좌석 -->
									<div class="seat_area">
										<div class="rows rows--mini">
											<div class="row">
												<div class="row__seat" data-tooltip="A1"></div>
												<div class="row__seat" data-tooltip="A2"></div>
												<div class="row__seat" data-tooltip="A3"></div>
												<div class="row__seat" data-tooltip="A4"></div>
												<div class="row__seat" data-tooltip="A5"></div>
												<div class="row__seat" data-tooltip="A6"></div>
												<div class="row__seat" data-tooltip="A7"></div>
												<div class="row__seat" data-tooltip="A8"></div>
												<div class="row__seat" data-tooltip="A9"></div>
												<div class="row__seat" data-tooltip="A10"></div>
												<div class="row__seat" data-tooltip="A11"></div>
												<div class="row__seat" data-tooltip="A12"></div>
												<div class="row__seat" data-tooltip="A13"></div>
												<div class="row__seat" data-tooltip="A14"></div>
												<div class="row__seat" data-tooltip="A15"></div>
												<div class="row__seat" data-tooltip="A16"></div>
												<div class="row__seat" data-tooltip="A17"></div>
												<div class="row__seat" data-tooltip="A18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="B1"></div>
												<div class="row__seat" data-tooltip="B2"></div>
												<div class="row__seat" data-tooltip="B3"></div>
												<div class="row__seat" data-tooltip="B4"></div>
												<div class="row__seat" data-tooltip="B5"></div>
												<div class="row__seat" data-tooltip="B6"></div>
												<div class="row__seat" data-tooltip="B7"></div>
												<div class="row__seat" data-tooltip="B8"></div>
												<div class="row__seat" data-tooltip="B9"></div>
												<div class="row__seat" data-tooltip="B10"></div>
												<div class="row__seat" data-tooltip="B11"></div>
												<div class="row__seat" data-tooltip="B12"></div>
												<div class="row__seat" data-tooltip="B13"></div>
												<div class="row__seat" data-tooltip="B14"></div>
												<div class="row__seat" data-tooltip="B15"></div>
												<div class="row__seat" data-tooltip="B16"></div>
												<div class="row__seat" data-tooltip="B17"></div>
												<div class="row__seat" data-tooltip="B18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="C1"></div>
												<div class="row__seat" data-tooltip="C2"></div>
												<div class="row__seat" data-tooltip="C3"></div>
												<div class="row__seat" data-tooltip="C4"></div>
												<div class="row__seat" data-tooltip="C5"></div>
												<div class="row__seat" data-tooltip="C6"></div>
												<div class="row__seat" data-tooltip="C7"></div>
												<div class="row__seat" data-tooltip="C8"></div>
												<div class="row__seat" data-tooltip="C9"></div>
												<div class="row__seat" data-tooltip="C10"></div>
												<div class="row__seat" data-tooltip="C11"></div>
												<div class="row__seat" data-tooltip="C12"></div>
												<div class="row__seat" data-tooltip="C13"></div>
												<div class="row__seat" data-tooltip="C14"></div>
												<div class="row__seat" data-tooltip="C15"></div>
												<div class="row__seat" data-tooltip="C16"></div>
												<div class="row__seat" data-tooltip="C17"></div>
												<div class="row__seat" data-tooltip="C18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="D1"></div>
												<div class="row__seat" data-tooltip="D2"></div>
												<div class="row__seat" data-tooltip="D3"></div>
												<div class="row__seat" data-tooltip="D4"></div>
												<div class="row__seat" data-tooltip="D5"></div>
												<div class="row__seat" data-tooltip="D6"></div>
												<div class="row__seat" data-tooltip="D7"></div>
												<div class="row__seat" data-tooltip="D8"></div>
												<div class="row__seat" data-tooltip="D9"></div>
												<div class="row__seat" data-tooltip="D10"></div>
												<div class="row__seat" data-tooltip="D11"></div>
												<div class="row__seat" data-tooltip="D12"></div>
												<div class="row__seat" data-tooltip="D13"></div>
												<div class="row__seat" data-tooltip="D14"></div>
												<div class="row__seat" data-tooltip="D15"></div>
												<div class="row__seat" data-tooltip="D16"></div>
												<div class="row__seat" data-tooltip="D17"></div>
												<div class="row__seat" data-tooltip="D18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="E1"></div>
												<div class="row__seat" data-tooltip="E2"></div>
												<div class="row__seat" data-tooltip="E3"></div>
												<div class="row__seat" data-tooltip="E4"></div>
												<div class="row__seat" data-tooltip="E5"></div>
												<div class="row__seat" data-tooltip="E6"></div>
												<div class="row__seat" data-tooltip="E7"></div>
												<div class="row__seat" data-tooltip="E8"></div>
												<div class="row__seat" data-tooltip="E9"></div>
												<div class="row__seat" data-tooltip="E10"></div>
												<div class="row__seat" data-tooltip="E11"></div>
												<div class="row__seat" data-tooltip="E12"></div>
												<div class="row__seat" data-tooltip="E13"></div>
												<div class="row__seat" data-tooltip="E14"></div>
												<div class="row__seat" data-tooltip="E15"></div>
												<div class="row__seat" data-tooltip="E16"></div>
												<div class="row__seat" data-tooltip="E17"></div>
												<div class="row__seat" data-tooltip="E18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="F1"></div>
												<div class="row__seat" data-tooltip="F2"></div>
												<div class="row__seat" data-tooltip="F3"></div>
												<div class="row__seat" data-tooltip="F4"></div>
												<div class="row__seat" data-tooltip="F5"></div>
												<div class="row__seat" data-tooltip="F6"></div>
												<div class="row__seat" data-tooltip="F7"></div>
												<div class="row__seat" data-tooltip="F8"></div>
												<div class="row__seat" data-tooltip="F9"></div>
												<div class="row__seat" data-tooltip="F10"></div>
												<div class="row__seat" data-tooltip="F11"></div>
												<div class="row__seat" data-tooltip="F12"></div>
												<div class="row__seat" data-tooltip="F13"></div>
												<div class="row__seat" data-tooltip="F14"></div>
												<div class="row__seat" data-tooltip="F15"></div>
												<div class="row__seat" data-tooltip="F16"></div>
												<div class="row__seat" data-tooltip="F17"></div>
												<div class="row__seat" data-tooltip="F18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="G1"></div>
												<div class="row__seat" data-tooltip="G2"></div>
												<div class="row__seat" data-tooltip="G3"></div>
												<div class="row__seat" data-tooltip="G4"></div>
												<div class="row__seat" data-tooltip="G5"></div>
												<div class="row__seat" data-tooltip="G6"></div>
												<div class="row__seat" data-tooltip="G7"></div>
												<div class="row__seat" data-tooltip="G8"></div>
												<div class="row__seat" data-tooltip="G9"></div>
												<div class="row__seat" data-tooltip="G10"></div>
												<div class="row__seat" data-tooltip="G11"></div>
												<div class="row__seat" data-tooltip="G12"></div>
												<div class="row__seat" data-tooltip="G13"></div>
												<div class="row__seat" data-tooltip="G14"></div>
												<div class="row__seat" data-tooltip="G15"></div>
												<div class="row__seat" data-tooltip="G16"></div>
												<div class="row__seat" data-tooltip="G17"></div>
												<div class="row__seat" data-tooltip="G18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="H1"></div>
												<div class="row__seat" data-tooltip="H2"></div>
												<div class="row__seat" data-tooltip="H3"></div>
												<div class="row__seat" data-tooltip="H4"></div>
												<div class="row__seat" data-tooltip="H5"></div>
												<div class="row__seat" data-tooltip="H6"></div>
												<div class="row__seat" data-tooltip="H7"></div>
												<div class="row__seat" data-tooltip="H8"></div>
												<div class="row__seat" data-tooltip="H9"></div>
												<div class="row__seat" data-tooltip="H10"></div>
												<div class="row__seat" data-tooltip="H11"></div>
												<div class="row__seat" data-tooltip="H12"></div>
												<div class="row__seat" data-tooltip="H13"></div>
												<div class="row__seat" data-tooltip="H14"></div>
												<div class="row__seat" data-tooltip="H15"></div>
												<div class="row__seat" data-tooltip="H16"></div>
												<div class="row__seat" data-tooltip="H17"></div>
												<div class="row__seat" data-tooltip="H18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="I1"></div>
												<div class="row__seat" data-tooltip="I2"></div>
												<div class="row__seat" data-tooltip="I3"></div>
												<div class="row__seat" data-tooltip="I4"></div>
												<div class="row__seat" data-tooltip="I5"></div>
												<div class="row__seat" data-tooltip="I6"></div>
												<div class="row__seat" data-tooltip="I7"></div>
												<div class="row__seat" data-tooltip="I8"></div>
												<div class="row__seat" data-tooltip="I9"></div>
												<div class="row__seat" data-tooltip="I10"></div>
												<div class="row__seat" data-tooltip="I11"></div>
												<div class="row__seat" data-tooltip="I12"></div>
												<div class="row__seat" data-tooltip="I13"></div>
												<div class="row__seat" data-tooltip="I14"></div>
												<div class="row__seat" data-tooltip="I15"></div>
												<div class="row__seat" data-tooltip="I16"></div>
												<div class="row__seat" data-tooltip="I17"></div>
												<div class="row__seat" data-tooltip="I18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="J1"></div>
												<div class="row__seat" data-tooltip="J2"></div>
												<div class="row__seat" data-tooltip="J3"></div>
												<div class="row__seat" data-tooltip="J4"></div>
												<div class="row__seat" data-tooltip="J5"></div>
												<div class="row__seat" data-tooltip="J6"></div>
												<div class="row__seat" data-tooltip="J7"></div>
												<div class="row__seat" data-tooltip="J8"></div>
												<div class="row__seat" data-tooltip="J9"></div>
												<div class="row__seat" data-tooltip="J10"></div>
												<div class="row__seat" data-tooltip="J11"></div>
												<div class="row__seat" data-tooltip="J12"></div>
												<div class="row__seat" data-tooltip="J13"></div>
												<div class="row__seat" data-tooltip="J14"></div>
												<div class="row__seat" data-tooltip="J15"></div>
												<div class="row__seat" data-tooltip="J16"></div>
												<div class="row__seat" data-tooltip="J17"></div>
												<div class="row__seat" data-tooltip="J18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="K1"></div>
												<div class="row__seat" data-tooltip="K2"></div>
												<div class="row__seat" data-tooltip="K3"></div>
												<div class="row__seat" data-tooltip="K4"></div>
												<div class="row__seat" data-tooltip="K5"></div>
												<div class="row__seat" data-tooltip="K6"></div>
												<div class="row__seat" data-tooltip="K7"></div>
												<div class="row__seat" data-tooltip="K8"></div>
												<div class="row__seat" data-tooltip="K9"></div>
												<div class="row__seat" data-tooltip="K10"></div>
												<div class="row__seat" data-tooltip="K11"></div>
												<div class="row__seat" data-tooltip="K12"></div>
												<div class="row__seat" data-tooltip="K13"></div>
												<div class="row__seat" data-tooltip="K14"></div>
												<div class="row__seat" data-tooltip="K15"></div>
												<div class="row__seat" data-tooltip="K16"></div>
												<div class="row__seat" data-tooltip="K17"></div>
												<div class="row__seat" data-tooltip="K18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="L1"></div>
												<div class="row__seat" data-tooltip="L2"></div>
												<div class="row__seat" data-tooltip="L3"></div>
												<div class="row__seat" data-tooltip="L4"></div>
												<div class="row__seat" data-tooltip="L5"></div>
												<div class="row__seat" data-tooltip="L6"></div>
												<div class="row__seat" data-tooltip="L7"></div>
												<div class="row__seat" data-tooltip="L8"></div>
												<div class="row__seat" data-tooltip="L9"></div>
												<div class="row__seat" data-tooltip="L10"></div>
												<div class="row__seat" data-tooltip="L11"></div>
												<div class="row__seat" data-tooltip="L12"></div>
												<div class="row__seat" data-tooltip="L13"></div>
												<div class="row__seat" data-tooltip="L14"></div>
												<div class="row__seat" data-tooltip="L15"></div>
												<div class="row__seat" data-tooltip="L16"></div>
												<div class="row__seat" data-tooltip="L17"></div>
												<div class="row__seat" data-tooltip="L18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="M1"></div>
												<div class="row__seat" data-tooltip="M2"></div>
												<div class="row__seat" data-tooltip="M3"></div>
												<div class="row__seat" data-tooltip="M4"></div>
												<div class="row__seat" data-tooltip="M5"></div>
												<div class="row__seat" data-tooltip="M6"></div>
												<div class="row__seat" data-tooltip="M7"></div>
												<div class="row__seat" data-tooltip="M8"></div>
												<div class="row__seat" data-tooltip="M9"></div>
												<div class="row__seat" data-tooltip="M10"></div>
												<div class="row__seat" data-tooltip="M11"></div>
												<div class="row__seat" data-tooltip="M12"></div>
												<div class="row__seat" data-tooltip="M13"></div>
												<div class="row__seat" data-tooltip="M14"></div>
												<div class="row__seat" data-tooltip="M15"></div>
												<div class="row__seat" data-tooltip="M16"></div>
												<div class="row__seat" data-tooltip="M17"></div>
												<div class="row__seat" data-tooltip="M18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="N1"></div>
												<div class="row__seat" data-tooltip="N2"></div>
												<div class="row__seat" data-tooltip="N3"></div>
												<div class="row__seat" data-tooltip="N4"></div>
												<div class="row__seat" data-tooltip="N5"></div>
												<div class="row__seat" data-tooltip="N6"></div>
												<div class="row__seat" data-tooltip="N7"></div>
												<div class="row__seat" data-tooltip="N8"></div>
												<div class="row__seat" data-tooltip="N9"></div>
												<div class="row__seat" data-tooltip="N10"></div>
												<div class="row__seat" data-tooltip="N11"></div>
												<div class="row__seat" data-tooltip="N12"></div>
												<div class="row__seat" data-tooltip="N13"></div>
												<div class="row__seat" data-tooltip="N14"></div>
												<div class="row__seat" data-tooltip="N15"></div>
												<div class="row__seat" data-tooltip="N16"></div>
												<div class="row__seat" data-tooltip="N17"></div>
												<div class="row__seat" data-tooltip="N18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="O1"></div>
												<div class="row__seat" data-tooltip="O2"></div>
												<div class="row__seat" data-tooltip="O3"></div>
												<div class="row__seat" data-tooltip="O4"></div>
												<div class="row__seat" data-tooltip="O5"></div>
												<div class="row__seat" data-tooltip="O6"></div>
												<div class="row__seat" data-tooltip="O7"></div>
												<div class="row__seat" data-tooltip="O8"></div>
												<div class="row__seat" data-tooltip="O9"></div>
												<div class="row__seat" data-tooltip="O10"></div>
												<div class="row__seat" data-tooltip="O11"></div>
												<div class="row__seat" data-tooltip="O12"></div>
												<div class="row__seat" data-tooltip="O13"></div>
												<div class="row__seat" data-tooltip="O14"></div>
												<div class="row__seat" data-tooltip="O15"></div>
												<div class="row__seat" data-tooltip="O16"></div>
												<div class="row__seat" data-tooltip="O17"></div>
												<div class="row__seat" data-tooltip="O18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="P1"></div>
												<div class="row__seat" data-tooltip="P2"></div>
												<div class="row__seat" data-tooltip="P3"></div>
												<div class="row__seat" data-tooltip="P4"></div>
												<div class="row__seat" data-tooltip="P5"></div>
												<div class="row__seat" data-tooltip="P6"></div>
												<div class="row__seat" data-tooltip="P7"></div>
												<div class="row__seat" data-tooltip="P8"></div>
												<div class="row__seat" data-tooltip="P9"></div>
												<div class="row__seat" data-tooltip="P10"></div>
												<div class="row__seat" data-tooltip="P11"></div>
												<div class="row__seat" data-tooltip="P12"></div>
												<div class="row__seat" data-tooltip="P13"></div>
												<div class="row__seat" data-tooltip="P14"></div>
												<div class="row__seat" data-tooltip="P15"></div>
												<div class="row__seat" data-tooltip="P16"></div>
												<div class="row__seat" data-tooltip="P17"></div>
												<div class="row__seat" data-tooltip="P18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="Q1"></div>
												<div class="row__seat" data-tooltip="Q2"></div>
												<div class="row__seat" data-tooltip="Q3"></div>
												<div class="row__seat" data-tooltip="Q4"></div>
												<div class="row__seat" data-tooltip="Q5"></div>
												<div class="row__seat" data-tooltip="Q6"></div>
												<div class="row__seat" data-tooltip="Q7"></div>
												<div class="row__seat" data-tooltip="Q8"></div>
												<div class="row__seat" data-tooltip="Q9"></div>
												<div class="row__seat" data-tooltip="Q10"></div>
												<div class="row__seat" data-tooltip="Q11"></div>
												<div class="row__seat" data-tooltip="Q12"></div>
												<div class="row__seat" data-tooltip="Q13"></div>
												<div class="row__seat" data-tooltip="Q14"></div>
												<div class="row__seat" data-tooltip="Q15"></div>
												<div class="row__seat" data-tooltip="Q16"></div>
												<div class="row__seat" data-tooltip="Q17"></div>
												<div class="row__seat" data-tooltip="Q18"></div>
											</div>
											<div class="row">
												<div class="row__seat" data-tooltip="R1"></div>
												<div class="row__seat" data-tooltip="R2"></div>
												<div class="row__seat" data-tooltip="R3"></div>
												<div class="row__seat" data-tooltip="R4"></div>
												<div class="row__seat" data-tooltip="R5"></div>
												<div class="row__seat" data-tooltip="R6"></div>
												<div class="row__seat" data-tooltip="R7"></div>
												<div class="row__seat" data-tooltip="R8"></div>
												<div class="row__seat" data-tooltip="R9"></div>
												<div class="row__seat" data-tooltip="R10"></div>
												<div class="row__seat" data-tooltip="R11"></div>
												<div class="row__seat" data-tooltip="R12"></div>
												<div class="row__seat" data-tooltip="R13"></div>
												<div class="row__seat" data-tooltip="R14"></div>
												<div class="row__seat" data-tooltip="R15"></div>
												<div class="row__seat" data-tooltip="R16"></div>
												<div class="row__seat" data-tooltip="R17"></div>
												<div class="row__seat" data-tooltip="R18"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>

			<!-- 결제수단 -->
			<div class="pay_method">
				<div class="group_top">
					<h4 class="method">결제수단</h4>
				</div>


				<div class="inner">
						<!-- 할인/포인트 -->
						<div class="group_discount">
							<h3 class="title_payment">할인/포인트</h3>
							<!-- 포인트 -->
							<div class="point_box">
								<div class="point_text">
									<ul>
										<li>
											<button class="cine_point">
												CINE.POINT
												<strong class="point">1000P</strong>
											</button>
										</li>
										<li>
											<div class="point_text_btn">
												<input type="text" class="form-control point_input" placeholder="포인트 입력">
												<button class="point_btn"><span class="application">적용</span></button>
											</div>
										</li>
									</ul>
								</div>
							</div>


									<div class="coupon_box">
										<div class="coupons">
											<ul class="list_coupons">
												<li>
													<button>관람권(0)</button>
												</li>
												<li>
													<button>모바일 관람권</button>
												</li>
												<li>
													<button>모바일 금액권</button>
												</li>
												<li>
													<button>롯데모바일상품권</button>
												</li>
												<li>
													<button>기프티엘(금액권)</button>
												</li>
												<li>
													<button>기프팅</button>
												</li>
												<li>
													<button>삼성 Gift 관람권</button>
												</li>
												<li>
													<button>신한Combo무료관람</button>
												</li>
												<li>
													<button>모니터링</button>
												</li>
											</ul>
										</div>
									</div>
								</div>
								

								<!-- 최종 결제수단 -->
								<div class="group_payment">
									<h5 class="title_payment">최종 결제수단</h5>
		
									<div class="payment_box">
										<ul class="list_pay_item">
											<li>
												<button type="button" id="sinyong" class="cards">
													<i class="fab fa-cc-mastercard"></i><br>
													신용카드
												</button>
											</li>
											<li>
												<button type="button" class="cards">
													<i class="fab fa-cc-apple-pay"></i><br>
													c.pay
												</button>
											</li>
											<li>
												<button type="button" class="cards">
													<i class="fas fa-money-check"></i><br>
													간편결제
												</button>
											</li>
											<li>
												<button type="button" class="cards">
													<i class="fas fa-mobile-alt"></i><br>
													휴대폰
												</button>
											</li>
										</ul>
									</div>

									<!--.pay_cards .list_pay_cards-->

									<!-- 카드목록 -->
									<div class="pay_cards">
										<ul class="list_pay_cards">
											<li>
												<button><img src="/movie/resources//img/lotte.png"><div class="card_title">롯데카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/kb.png"><div class="card_title">국민카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/kakaobank.png"><div class="card_title">카카오뱅크</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/sinhan.png"><div class="card_title">신한카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/samsung.png"><div class="card_title">삼성카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/hyundai.png"><div class="card_title">현대카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/hana.png"><div class="card_title">하나카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/keb.png"><div class="card_title">외환카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/woori.png"><div class="card_title">우리BC카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/bc.png"><div class="card_title">BC카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/city.png"><div class="card_title">씨티카드</div></button>
											</li>
											<li>
												<button><img src="/movie/resources//img/nh.png"><div class="card_title">NH카드</div></button>
											</li>
										</ul>
									</div>
					</div>
				</div>
			</div>







			<!-- 결제하기 -->
			<div class="pay_action">
				<div class="group_top">
					<h4 class="pay">결제하기</h4>
				</div>

				<div class="inner">
					<div class="agreement_box">
				<div class="agreement form-group">
					<div class="custom-control custom-checkbox whole_agreement">
					  <input type="checkbox" class="custom-control-input input_size" id="check_whole">
					  <label class="custom-control-label" for="check_whole">&nbsp;&nbsp;결제대행서비스 약관 동의</label>
					</div>
					

					<div class="agreement_detail">
						<div class="detail_box">
							<ul class="detail_list">
								<li>
									<div class="custom-control custom-checkbox details">
										<input type="checkbox" class="custom-control-input" id="check_agreement1">
										<label class="custom-control-label" for="check_agreement1">&nbsp;전자금융거래 이용약관 동의</label>
										<span class="detail_view_btn">약관보기 ></span>
									</div>
								</li>
								<li>
									<div class="custom-control custom-checkbox details">
										<input type="checkbox" class="custom-control-input" id="check_agreement2">
										<label class="custom-control-label" for="check_agreement2">&nbsp;고유식별정보 수집 및 이용안내</label>
										<span class="detail_view_btn">약관보기 ></span>
									</div>
								</li>
								<li>
									<div class="custom-control custom-checkbox details">
										<input type="checkbox" class="custom-control-input" id="check_agreement3">
										<label class="custom-control-label" for="check_agreement3">&nbsp;개인정보 수집 및 이용동의</label>
										<span class="detail_view_btn">약관보기 ></span>
									</div>
								</li>
								<li>
									<div class="custom-control custom-checkbox details">
										<input type="checkbox" class="custom-control-input" id="check_agreement4">
										<label class="custom-control-label" for="check_agreement4">&nbsp;개인정보 제3자 제공/위탁동의</label>
										<span class="detail_view_btn">약관보기 ></span>
									</div>
								</li>
							</ul>
						</div>
					</div>
					</div>
				</div>


				<!-- 결제 금액 -->
				<div class="payment_sum">
					<div class="payment_box">
						<span class="payment_title">상품금액</span>
						<span class="money_box"><span class="payment_money" id="product_money">${rdto.totalPrice}</span>원</span>
					</div>
					<div class="payment_box">
						<span class="payment_title">할인금액</span>
						<span class="money_box">- <span class="payment_money" id="discount_money">0</span>원</span>
					</div>
					<div class="payment_box">
						<span class="payment_title">결제금액</span>
						<span class="money_box"><span class="payment_money" id="pay_money">${rdto.totalPrice}</span>원</span>
					</div>

					<!-- 결제하기 -->
					<div class="sum_money">
						<button id="sum_money">결제하기</button>
					</div>
				</div>
				
				<form id="reserve_ok" method="POST" action="/movie/reservation/reserve_ok.action">
					
					<div id="reserve_ok_box">
					
						<input type="hidden" name="screenTimeSeq" value="${rdto.screenTimeSeq}">
						<input type="hidden" name="adult" value="${rdto.adult}">
						<input type="hidden" name="teen" value="${rdto.teen}">
						<input type="hidden" name="senior" value="${rdto.senior}">
						<input type="hidden" name="total" value="${rdto.total}">
						<input type="hidden" name="totalPrice" value="${rdto.totalPrice}">
						
					</div>
					
				</form>


			</div>

			</div>

		</div>
	</div>



</body>
</html>





















