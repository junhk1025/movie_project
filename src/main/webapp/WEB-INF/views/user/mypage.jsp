<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" crossorigin="anonymous">
<link rel="stylesheet" href="/movie/resources/css/jquery-ui.css" />
<link rel="stylesheet" href="/movie/resources/css/bootstrap.css" />
<script src="/movie/resources/js/jquery-1.12.4.js"></script>
<script src="/movie/resources/js/jquery-ui.js"></script>
<script src="/movie/resources/js/string.js"></script>
<style>

   	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);   .jejugothic * { font-family: 'Jeju Gothic', sans-serif; }

	body {
		background-color: #333;
		font-family: 'Jeju Gothic';
	}

	#topbox {
		width: 1000px;
		height: 350px;
		background-color: white;
		border-radius: 10px;

		margin: 200px auto 0px;
	}
	#topbox::after {
		content: "";
		display: block;
		clear: both;
	}

	#myinfo1 {
		/* border: 1px solid black; */
		width: 530px;
		height: 300px;
		float: left;
		position: relative;
		top: 25px;
		border-right: 1px solid #ccc;
	}
	#humanpic {
		width: 180px;
		height: 180px;
		margin: 50px 30px 30px 50px;
		float: left;
	}
	#intro > h3 {
		float: left;
		position: relative;
		top: 110px;
	}
	#intro::after {
		content: "";
		display: block;
		clear: both;
	}
	#myinfo1 > div:last-child {
		border-top: 1px solid #ccc;
		width: 470px;
		text-align: center;
		padding-top: 20px;
		position: relative;
		left: 30px;
	}

	#myinfo2 {
		/* border: 1px solid black; */
		width: 450px;
		height: 300px;
		float: left;
		position: relative;
		top: 25px;
		/* border-right: 1px solid #ccc; */
	}
	.mytitle {
		font-size: 23px;
		margin-bottom: 20px;
	}
	#mypoint {
		/* border: 1px solid green; */
		width: 390px;
		height: 120px;
		margin-left: 30px;
		margin-top: 30px;
		border-bottom: 1px solid #ccc;
	}
	#point {
		font-size: 40px;
		color: #285894;
	}
	#mycinema {
		/* border: 1px solid pink; */
		width: 390px;
		height: 120px;
		margin-left: 30px;
		margin-top: 30px;
	}
	.addcinema {
		border: 1px solid black;
		border-radius: 5px;
		font-size: 20px;
		text-align: center;
		width: 80px;
		height: 45px;
		margin: 0px 5px;
		float: left;
		padding-top: 10px;
	}
	.addcinema:hover {
		cursor: pointer;
	}

	#mymenubar {
		/* border: 1px solid white; */
		width: 1000px;
		height: 70px;
		margin: 50px auto 20px;
	}
	#mymenubar::after {
		content: "";
		display: block;
		clear: both;
	}
	.mymenu {
		/* border: 1px solid yellow; */
		border-bottom: 1px solid white;
		width: 166px;
		height: 40px;
		padding-top: 5px;
		color: #ccc;
		font-size: 20px;
		text-align: center;
		float: left;
		margin-top: 5px;
	}
	.mymenu:hover {
		color: white !important;
		border-bottom: 3px solid white !important;
		cursor: pointer;
	}
	.mymenu:hover .mymenudetail {
		display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
	}

	ul, li {
		padding: 0px;
		list-style: none;
	}

	.mymenudetail {
		/* border: 1px solid white; */
		width: 80px;
		height: 20px;
		margin: 15px auto 0px;
		font-size: 15px;
		float: left;
		color: #ccc;
		display: none;
	}
	.mymenudetail:hover { cursor: pointer; color: white; }
	.mymenu ul::after {
		content: "";
		display: block;
		clear: both;
	}

	.mycontent {
		width: 1000px;
		min-height: 1500px;
		background-color:white;
		margin: 0px auto;
		border-radius: 2px;
		padding: 40px;
	}
	#hideEditInfo {
		width: 1000px;
		height: 1500px;
		background-color:white;
		margin: 0px auto;
		border-radius: 2px;
		padding: 40px;
	}
	/* 결제/취소내역 css */
	#listseach1 {
		/* border: 1px solid black; */
		width: 920px;
		height: 90px;
		background-color: #eee;
		padding-top: 20px;
		padding-left: 25px;
		margin-bottom: 20px;
	}
	#listseach1 table tr th {
		padding-right: 20px;
	}
	#listseach1 table tr td .radiola  {
		margin-right: 10px;
	}

	/* 포인트내역 css */
	#listseach2 {
		/* border: 1px solid black; */
		width: 920px;
		height: 70px;
		background-color: #eee;
		padding-top: 20px;
		padding-left: 25px;
		margin-bottom: 20px;
	}
	#listseach2 table tr th {
		padding-right: 20px;
	}
	#listseach2 table tr td .radiola  {
		margin-right: 10px;
	}

	/* 할인/쿠폰함 css */
	#couponregist {
		/* 쿠폰등록버튼 */
		width: 100px;
		height: 40px;
		border: 1px solid rgb(27, 13, 102);
		color: rgb(27, 13, 102);
		border-radius: 5px;
		background-color: white;
		font-size: 16px;
		/* float: right; */	
		margin: 30px 0px;
	}
	#couponregist:hover {
		background-color: #ccc;
	}
	#listseach3 {
		/* border: 1px solid black; */
		width: 920px;
		height: 70px;
		background-color: #eee;
		padding-top: 20px;
		padding-left: 25px;
		margin-bottom: 20px;
	}
	#listseach3 table tr th {
		padding-right: 20px;
	}
	#listseach3 table tr td .radiola  {
		margin-right: 10px;
	}

	#period {
		float: left;
	}
	.btnperiod {
		border: 1px solid #ccc;
		color: #666;
		background-color: white;
		float: left;
		height: 31px;
	}
	#date {
		float: left;
		margin-left: 20px;
		
	}
	.datebox {
		padding-left: 5px;
		height: 30px;
		font-size: 16px;
	}
	.btnsearch {
		border: 1px solid #ccc;
		color: #666;
		background-color: white;
		height: 31px;
	}

	
	#contentlist {
		/* border: 1px solid palevioletred; */
	}
	#listcount {
		font-size: 16px;
		margin-bottom: 10px;
	}
	#listcount span {
		color: cornflowerblue;
	}
	.listbar thead tr th, .listbar tbody tr td {
		text-align: center;
		font-size: 16px;
	}
	.listbar tbody tr td {
		padding: 20px 0px;
	}

	#cautiontxtbox {
		border: 1px solid #eee;
		padding: 20px;
		margin-top: 50px;
	}
	.list_inner_box > .tit {
		display: block;
		color: #e5153c;
		margin-bottom: 15px;
		font-size: 15px;
	}
	.list_define dd::before {
		content: '-';
		margin-right: 3px;
	}

	#changemyinfo {
		/* border: 1px solid black; */
		height: 160px;
		text-align: center;
		padding-top: 20px;
		border-top: 2px solid black;
		border-bottom: 1px solid rgb(155, 155, 155);
		margin-bottom: 30px;
	}
	#infopw {
		width: 300px;
		height: 40px;
		font-size: 16px;
	}
	#btnbox1, #btnbox2 {
		text-align: center;
	}
	#btncancel1, #btncancel2 {
		width: 100px;
		height: 45px;
		font-size: 16px;
		border: 1px solid rgb(27, 13, 102);
		background-color: white;
		border-radius: 7px;
		outline: none;
	}
	#btnok1, #btnok2 {
		width: 100px;
		height: 45px;
		font-size: 15px;
		border: 1px;
		background-color: rgb(27, 13, 102);
		color: white;
		border-radius: 7px;
		outline: none;
	}

	#profile1 {
		border-top: 1px solid black;
		border-bottom: 1px solid #ccc;
		/* height: 112px; */
	}
	#profile1::after {
		content: "";
		display: block;
		clear: both;
	}
	#profilepic {
		/* border: 1px solid brown; */
		width: 200px;
		height: 110px;
		padding-top: 45px;
		padding-left: 30px;
		float: left;
		background-color: #f7f8f9;
	}
	#btnprofile {
		/* border: 1px solid pink; */
		height: 110px;
		padding-top: 5px;
		padding-left: 20px;
		float: left;
	}
	#profile2 {
		border-bottom: 1px solid #ccc;
	}
	#profile2::after {
		content: "";
		display: block;
		clear: both;
	}
	#proId1 {
		/* border: 1px solid green; */
		background-color: #f7f8f9;
		width: 200px;
		height: 50px;
		float: left;
		padding-top: 13px;
		padding-left: 30px;
	}
	#proId2 {
		/* border: 1px solid gold; */
		height: 50px;
		float: left;
		padding-top: 13px;
		padding-left: 30px;
	}
	.infolist {
		border-bottom: 1px solid #ccc;
	}
	.infolist::after {
		content: "";
		display: block;
		clear: both;
	}
	.infohead {
		/* border: 1px solid red; */
		background-color: #f7f8f9;
		width: 200px;
		height: 50px;
		float: left;
		padding-left: 30px;
		padding-top: 15px;
	}
	.infocon {
		/* border: 1px solid blue; */
		height: 50px;
		float: left;
		padding-left: 30px;
		padding-top: 15px;
	}
	.infocon::after {
		content: "";
		display: block;
		clear: both;
	}

	.btninfo {
		/* width: 100px;
		height: 40px; */
		border: 1px solid rgb(27, 13, 102);
		color: rgb(27, 13, 102);
		border-radius: 5px;
		background-color: white;
	}
	.btninfo:hover {
		background-color: #ccc;
	}


</style>
</head>
<body>
	
	<div id="topbox">
		<c:forEach items="${mplist}" var="dto">
		<div id="myinfo1">
			<div id="intro">
				<img src="/movie/resources/img/증사.jpg" id="humanpic">
				<h3>${dto.id}님 반갑습니다!</h3>
			</div>
			<div>회원님의 등급은 <strong>일반회원</strong> 입니다.</div>
		</div>

		<div id="myinfo2">
			<div id="mypoint">
				<div class="mytitle">총 보유 포인트</div>
				<div id="point">${dto.point}P</div>
			</div>
			<div id="mycinema">
				<div class="mytitle">MY영화관</div>
				<div class="addcinema">종로</div>
				<div class="addcinema"><i class="fas fa-plus"></i></div>
				<div class="addcinema"><i class="fas fa-plus"></i></div>
			</div>
		</div>
		</c:forEach>
	</div>

	<div id="mymenubar">
		<ul>
			<li class="mymenu" onclick="hideandshow(0)" style="color: white !important;	border-bottom: 3px solid white !important;">
				예매/취소내역
				<!-- <ul>
					<li class="mymenudetail">예매내역</li>
					<li class="mymenudetail">취소내역</li>
				</ul> -->
			</li>
			<li class="mymenu" onclick="hideandshow(1)">포인트내역</li>
			<li class="mymenu" onclick="hideandshow(2)">할인/쿠폰함</li>
			<li class="mymenu" onclick="hideandshow(3)">MY이벤트</li>
			<li class="mymenu" onclick="hideandshow(4)">MY정보관리</li>
			<li class="mymenu" onclick="hideandshow(5)">MY문의내역</li>
		</ul>
	</div>

	<div class="mycontent" class="active">
		<h2>예매/취소내역</h2>
		<div id="listseach1">
			<table>
				<tr>
					<th>구분</th>
					<td>
						<input type="radio" id="ra01" name="ra" checked><label for="ra01" class="radiola">전체</label>
						<input type="radio" id="ra02" name="ra"><label for="ra02" class="radiola">예매</label>
						<input type="radio" id="ra03" name="ra"><label for="ra03" class="radiola">취소</label>
					</td>
				</tr>
				<tr>
					<th>조회기간</th>
					<td>
						<div id="period">
							<input type="button" class="btnperiod" value="1주일">
							<input type="button" class="btnperiod" value="1개월">
							<input type="button" class="btnperiod" value="3개월">
							<input type="button" class="btnperiod" value="6개월">
						</div>
						<div id="date">
							<input type="text" class="datepicker datebox dpicker1" id="datebox1">
							<span>~</span>
							<input type="text" class="datepicker datebox dpicker2" id="datebox2">
							<button type="button" class="btnsearch" onclick="searchReserve(); test();"><i class="fas fa-search"></i> 조회</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div id="contentlist">
			<div id="listcount">전체 <span id="countnum">0</span>건</div>
			<table class="table listbar" id="re_table">
				<thead>
					<tr>
						<th>상영일시</th>
						<th>극장</th>
						<th>상영관</th>
						<th>영화명</th>
						<th>상영시간</th>
						<th>결제금액</th>
					</tr>
				</thead>
				<tbody>
					
					<tbody id="abab">
					<tr style="display: '';" id="nexist">
						<td colspan="6">결제 내역이 없습니다.</td>
					</tr>
					
					<tr style="display: none;" id="exist">
						<td class="reservedate">${dto.day}</td>
						<td>${dto.spot}</td>
						<td>${dto.hall}</td>
						<td>${dto.name}</td>
						<td>${dto.starttime}</td>
						<td>${dto.payprice}원</td>
					</tr>
					
					</tbody>
				</tbody>
			</table>
		</div>

		<div id="cautiontxtbox">
			<h5><i class="fas fa-exclamation-circle"></i> 유의사항</h5>
			<hr>
			<div class="list_inner_box">
				<strong class="tit">환불 안내</strong>
				<dl class="list_define">
					<dt>신용카드</dt>
					<dd>결제 후 3일 이내 취소 시 승인 취소 가능합니다.</dd>
					<dd>3일 이후 예매 취소 시 영업일 기준 3일 ~ 7일 이내 카드사에서 환불됩니다.</dd>
				</dl>
				<dl class="list_define">
					<dt>체크카드</dt>
					<dd>결제 후 3일 이내 취소 시 당일 카드사에서 환불 처리됩니다.</dd>
					<dd>3일 이후 예매 취소 시 카드사에 따라 3일 ~ 10일 카드사에서 환불됩니다.</dd>
				</dl>
				<dl class="list_define">
					<dt>휴대폰 결제</dt>
					<dd>결제 일자 기준 당월(1일 ~ 말일까지) 취소만 가능합니다.</dd>
					<dd>익월 취소의 경우 시네큐브 고객센터(1544-8855)로 문의 주시기 바랍니다.</dd>
					<dd>모바일캐시비/티머니</dd><dd>모바일캐시비(선불형): 모바일캐시비 APP 선물함으로 취소금액이 충전됩니다.</dd>
					<dd>모바일티머니(선불형): 환불 SMS 수신 후 URL 클릭하시면 모바일티머니 APP이 자동으로 실행되어 취소금액이 충전됩니다.</dd>
					<dd>모바일캐시비/티머니(후불형): 취소금액은 환불되지 않고, 신용카드 대금에서 청구 취소됩니다. (취소일 7일 이내 카드사 청구내역에서 확인 가능합니다.)</dd>
					<dd>모바일캐시비/티머니(플라스틱카드): 교통카드충전결제 APP 실행 후, [환불내역]에서 카드 태깅하여 카드로 충전됩니다.</dd>
				</dl>
				<dl class="list_define">
					<dt>예매취소 안내</dt>
					<dd>온라인 예매 취소는 상영 20분 전까지 가능하며, 20분 이전부터는 현장 취소만 가능합니다.(단, 무대인사 취소는 영화 시작 24시간 전 까지만 가능합니다.)</dd>
					<dd>온라인 예매 후 현장에서 티켓 발권 시 온라인으로 예매 취소는 불가능하며, 현장 취소만 가능합니다.</dd>
					<dd>예고편과 광고 상영으로 실제 영화 시작 시간이 10분 정도 차이 날 수 있습니다.</dd>
					<dd>SMS 수신을 이용하시면 예매내역을 휴대폰으로 받을 수 있습니다.</dd>
				</dl>
				<dl class="list_define">
					<dt>상품취소 안내</dt>
					<dd>스토어 상품의 취소기한은 구매일로부터 70일입니다. (취소 관련문의 : 고객센터 1544-8855)</dd>
					<dd>구매취소는 취소기한 내 마이시네마 &gt; 예매/구매내역에서만 가능합니다.(현장취소 불가)</dd>
					<dd>구매하신 상품은 부분환불 및 현금환불이 되지 않습니다.</dd>
					<dd>좌석 구매 시 함께 구매한 매점 상품은 영화 관람 완료 후에는 취소가 불가합니다.</dd>
					<dd>얼리버드 상품은 특별관람권이므로 구매 후 7일 이내 환불 가능합니다.</dd>
				</dl>
			</div>
		</div>
	</div>

	<div class="mycontent" style="display: none;">
		<h2>포인트내역</h2>
		<div id="listseach2">
			<table>
				<tr>
					<th>조회기간</th>
					<td>
						<div id="period">
							<input type="button" class="btnperiod" value="1주일">
							<input type="button" class="btnperiod" value="1개월">
							<input type="button" class="btnperiod" value="3개월">
							<input type="button" class="btnperiod" value="6개월">
						</div>
						<div id="date">
							<input type="text" class="datepicker datebox dpicker1">
							<span>~</span>
							<input type="text" class="datepicker datebox dpicker2">
							<button type="button" class="btnsearch"><i class="fas fa-search"></i> 조회</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div id="contentlist">
			<div id="listcount">전체 <span>0</span>건</div>
			<table class="table listbar">
				<thead>
					<tr>
						<th>일자</th>
						<th>구분</th>
						<th>내용</th>
						<th>지점</th>
						<th>포인트</th>
					</tr>
				</thead>
				<tbody>
					
					<tr>
						<td colspan="5">조회된 내역이 없습니다.</td>
						<!-- <td>2020-03-01</td>
						<td>적립/ 티켓구입</td>
						<td>인비저블맨</td>
						<td>강동</td>
						<td>+ 1800</td> -->
					</tr>
					
				</tbody>
			</table>
		</div>

		<div id="cautiontxtbox">
			<h5><i class="fas fa-exclamation-circle"></i> 유의사항</h5>
			<hr>
			<div class="list_inner_box">
				<strong class="tit">쿠폰 관련 안내</strong>
				<dl class="list_define">
					<dt>쿠폰</dt>
					<dd>등록하신 쿠폰은 영화 예매 시 결제수단 > 포인트/할인쿠폰 > 시네큐브 할인쿠폰에서 사용 가능합니다.</dd>
					<dd>특정 영화/상품/극장 전용 쿠폰일 경우, 지정 영화 및 상품, 극장에서 명시된 사용기간 내에만 사용이 가능합니다.</dd>
					<dd>매점 전용 쿠폰은 모바일앱을 통해 쿠폰을 매점에 제시 후 사용 가능합니다.</dd>
					<dd>온라인 전용으로 발행된 쿠폰의 경우에는 현장 사용이 불가능합니다.</dd>
					<dd>취소 시 현금 환불은 되지 않으며, 기존 쿠폰으로 유효기간 중에 재사용 하실 수 있습니다.</dd>
					<dd>기타 할인쿠폰에 대한 문의사항이 있으실 경우, 1544-0000 또는 홈페이지를 이용해 주시기 바랍니다.</dd>
				</dl>
				
			</div>
		</div>
	</div>
	</div>

	<div class="mycontent" style="display: none;">
		<h2>할인/쿠폰함</h2>
		<input type="button" id="couponregist" value="쿠폰 등록">
		<div id="listseach3">
			<table>
				<tr>
					<th>쿠폰종류</th>
					<td>
						<div id="period">
							<input type="button" class="btnperiod" value="1주일">
							<input type="button" class="btnperiod" value="1개월">
							<input type="button" class="btnperiod" value="3개월">
							<input type="button" class="btnperiod" value="6개월">
						</div>
						<div id="date">
							<input type="text" class="datepicker datebox dpicker1">
							<span>~</span>
							<input type="text" class="datepicker datebox dpicker2">
							<button type="button" class="btnsearch"><i class="fas fa-search"></i> 조회</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div id="contentlist">
			<div id="listcount">전체 <span>0</span>건</div>
			<table class="table listbar">
				<thead>
					<tr>
						<th>일자</th>
						<th>구분</th>
						<th>내용</th>
						<th>지점</th>
						<th>포인트</th>
					</tr>
				</thead>
				<tbody>
					
					<tr>
						<td colspan="5">조회된 내역이 없습니다.</td>
						<!-- <td>2020-03-01</td>
						<td>적립/ 티켓구입</td>
						<td>인비저블맨</td>
						<td>강동</td>
						<td>+ 1800</td> -->
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>

	<div class="mycontent" style="display: none;">
		<h2>MY이벤트</h2>
		<div id="contentlist">
			<div id="listcount">전체 <span>0</span>건</div>
			<table class="table listbar">
				<thead>
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>이벤트명</th>
						<th>응모일</th>
						<th>당첨자발표</th>
					</tr>
				</thead>
				<tbody>
					
					<tr>
						<!-- <td colspan="5">조회된 내역이 없습니다.</td> -->
						<td>1</td>
						<td>시네큐브</td>
						<td>예술의 전당 &lt;람메르무어의 루치아&gt; 클래식 소사이어티 회원 초대 이벤트</td>
						<td>2020-03-12</td>
						<td>당첨</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>

	<div class="mycontent" style="display: none;">
		<h2 style="margin-bottom: 30px;">MY정보관리</h2>
		
		<div id="changemyinfo">
			<h4>회원님의 개인정보 보호를 위해 비밀번호를 입력하셔야 합니다.</h4>
			<h5>시네큐브 로그인시 사용하시는 비밀번호를 입력해 주세요</h5>
			<input type="text" id="infopw">
		</div>
		<div id="btnbox1">
			<input type="button" id="btncancel1" value="취소">
			<input type="button" id="btnok1" value="확인">
		</div>
	</div>

	<div id="hideEditInfo" style="display: none;">
		<h2 style="margin-bottom: 30px;">MY정보수정</h2>
		
		<div style="font-size: 16px; margin-bottom: 50px;">
			<div id="profile1">
				<div id="profilepic">프로필 사진</div>
				<div id="btnprofile">
					<img src="../images/사람픽토그램.png" style="width: 100px; height: 100px;">
					<input type="button" value="이미지 등록" class="btninfo" style="width: 100px; height: 30px; margin-left: 10px;">
				</div>
			</div>
			<div id="profile2">
				<div id="proId1">아이디</div>
				<div id="proId2">hong123</div>
			</div>
		</div>

		<h3>기본정보</h3>
		<div style="font-size: 16px; margin-bottom: 30px;">
			<div class="infolist" style="border-top: 1px solid black">
				<div class="infohead">이름</div>
				<div class="infocon">
					<div style="float: left; margin-right: 20px;">박민선</div>
					<input type="button" value="이름변경" class="btninfo" style="width: 80px; height: 30px; float: left; margin-top: -5px;">
				</div>
			</div>
			<div class="infolist">
				<div class="infohead">생년월일</div>
				<div class="infocon">
					1997년 01월 01일
				</div>
			</div>
			<div class="infolist">
				<div class="infohead">휴대폰</div>
				<div class="infocon">
					<div style="float: left; margin-right: 20px;">010-9293-5343</div>
					<input type="button" value="휴대폰번호 변경" class="btninfo" style="width: 140px; height: 30px; float: left; margin-top: -5px;">
				</div>
			</div>
			<div class="infolist">
				<div class="infohead">이메일</div>
				<div class="infocon">
					<input type="text" style="width: 500px; margin-top: -5px;">
				</div>
			</div>
			<div class="infolist">
				<div class="infohead">비밀번호</div>
				<div class="infocon">
					<input type="button" value="비밀번호 변경" id="infobtn3" class="btninfo">
				</div>
			</div>
			<div class="infolist">
				<div class="infohead">주소</div>
				<div class="infocon">
					<input type="button" value="우편번호 검색" id="infobtn4" class="btninfo">
				</div>
			</div>
		</div>

		<div id="btnbox2">
			<input type="button" id="btncancel2" value="취소">
			<input type="button" id="btnok2" value="등록">
		</div>
	</div>

	<div class="mycontent" style="display: none;">
		<h2 style="margin-bottom: 30px;">MY문의내역</h2>

		<div id="contentlist">
			<div id="listcount">전체 <span>0</span>건</div>
			<table class="table listbar">
				<thead>
					<tr>
						<th>번호</th>
						<th>극장</th>
						<th>유형</th>
						<th>제목</th>
						<th>답변상태</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					
					<tr>
						<!-- <td colspan="6">조회된 내역이 없습니다.</td> -->
						<td>1</td>
						<td>강동</td>
						<td>Q&A</td>
						<td style="cursor:pointer;">영화 개봉일 관련문의드립니다.</td>
						<td>미답변</td>
						<td>2020-03-12</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>


	<!-- <div id="couponModal" style="">
		<div style="">
			<div>쿠폰 등록</div>
			<button type="button">x</div>
		</div>
		<div style="">

		</div>
	</div> -->
	
	
	<script>

		var mycontent = document.getElementsByClassName("mycontent");
		
		var btnperiod = document.getElementsByClassName("btnperiod");
		var mymenu = document.getElementsByClassName("mymenu");
		
		var btncancel1 = document.getElementById("btncancel1");
		var btnok1 = document.getElementById("btnok1");
		var infopw = document.getElementById("infopw");
		var hideEditInfo = document.getElementById("hideEditInfo");
		
		btnok1.onclick = function() {

			if(infopw.value == '1234') {
				hideEditInfo.style.display = '';
				mycontent[4].style.display = 'none';
			}
		
		}
				
		
		function hideandshow(num) {
			for(var i=0; i<mycontent.length; i++) {
				mycontent[i].style.display = 'none';
			}
			hideEditInfo.style.display = 'none';
			mycontent[num].style.display = '';

			for(var i=0; i<mymenu.length; i++) {
				mymenu[i].style.color = "#ccc";
				mymenu[i].style.borderBottom = "1px solid #ccc";
			}
			mymenu[num].style.color = "white";
			mymenu[num].style.borderBottom = "3px solid white";
		}

		for(var i=0; i<btnperiod.length; i++) {
			btnperiod[i].onclick = function() {
				for(var i=0; i<btnperiod.length; i++) {
					btnperiod[i].style.color = "#666";
				}	
				
				this.style.color = "#01738b";
			}
		}

	   	$(function() {
			//input을 datepicker로 선언
			$(".datepicker").datepicker({
					dateFormat: 'yy-mm-dd' //Input Display Format 변경
					,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
					,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
					,changeYear: true //콤보박스에서 년 선택 가능
					,changeMonth: true //콤보박스에서 월 선택 가능                            
					,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
					,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
					,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
					,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
					,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
					// ,minDate: "-2M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
					,maxDate: "+2M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)             
			});                    
			
			//초기값을 오늘 날짜로 설정
			// $('.datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, +1M:한달후, +1Y:일년후) 
			//$('.dpicker1').datepicker('setDate', 'today');
			$('.dpicker2').datepicker('setDate', 'today');
		});

		$('.btnperiod').click(function() {

			if($(this).val() == '1주일') {
				$('.dpicker1').datepicker('setDate', '-7D');
			} else if($(this).val() == '1개월') {
				$('.dpicker1').datepicker('setDate', '-1M');
			} else if($(this).val() == '3개월') {
				$('.dpicker1').datepicker('setDate', '-3M');
			} else if($(this).val() == '6개월') {
				$('.dpicker1').datepicker('setDate', '-6M');
			}

		});
		
		function searchReserve() {
			
			var starttime = $("#datebox1").val()
			var endtime = $("#datebox2").val();
			var jason = {"starttime":starttime,"endtime":endtime};
				
			$.ajax({
				
				url: "/movie/user/list.action",
				type: "POST",
				data: JSON.stringify(jason),
				dataType: "json",
				contentType: "application/json",
				success: function(data) {
					
					$("#abab").html("");
		  				
		  			$(data).each(function(index, item){
		                    
		  				var row = String.format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td></tr>",
		  		                  					item.day, item.spot, item.hall, item.name, item.starttime, item.payprice);
							
						$("#abab").append(row);
		  			})
		  				
					if(data.length <1){
						$("#abab").html("");
						
						var row2 = "<tr><td colspan='6'>결제 내역이 없습니다.</td></tr>";
						
						$("#abab").append(row2);
					}
					
					$("#countnum").html("");
					$("#countnum").html(data.length);
		
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
			
			});
			
			
						
		};
		
		
			
			
			

			
		


   </script>
</body>
</html>