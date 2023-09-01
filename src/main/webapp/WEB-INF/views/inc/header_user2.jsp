<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/movie/resources/css/bootstrap.css">
<script src="/movie/resources/js/jquery-1.12.4.js"></script>

<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css); .jejugothic * { font-family: 'Jeju Gothic', sans-serif; }	
/* Navbar */
.site-navbar {
  margin-bottom: 0px;
  z-index: 1999;
  position: absolute;
  top: 0;
  width: 100%;
  padding: 1rem; }
  @media (max-width: 991.98px) {
    .site-navbar {
      padding-top: 3rem;
      padding-bottom: 3rem; } }
  
  .site-navbar .toggle-button {
    position: absolute;
    right: 0px; }
  .site-navbar .site-logo {
    margin: 0;
    padding: 0;
    font-size: 1.7rem; }
    .site-navbar .site-logo a {
      color: #fff; }
    @media (max-width: 991.98px) {
      .site-navbar .site-logo {
        float: left;
        position: relative; } }
   
  .site-navbar .site-navigation.border-bottom {
    border-bottom: 1px solid white !important; }
   
  .site-navbar .site-navigation .site-menu {
    margin: 0;
    padding: 0;
    margin-bottom: 0; 

    }
    
    
   .site-navbar .site-navigation .site-menu .active {
     color: #ff5533 !important; }
    
   .site-navbar .site-navigation .site-menu a {
     text-decoration: none !important;
     display: inline-block; }
    
   .site-navbar .site-navigation .site-menu > li {
     display: inline-block; }
    
   .site-navbar .site-navigation .site-menu > li > a {
     margin-left: 15px;
     margin-right: 15px;
     padding: 20px 0px;
     color: black !important;
     display: inline-block;
     text-decoration: none !important;
      }
      
   .site-navbar .site-navigation .site-menu > li > a:hover {
     color: #ff5533; }
     .site-navbar .site-navigation .site-menu > li.active > a {
       color: #ff5533 !important; }
   .site-navbar .site-navigation .site-menu .has-children {
     position: relative; }
     .site-navbar .site-navigation .site-menu .has-children > a {
       position: relative;
       padding-right: 20px; }
       .site-navbar .site-navigation .site-menu .has-children > a:before {
         position: absolute;
         content: "\e313";
         font-size: 16px;
         top: 50%;
         right: 0;
         -webkit-transform: translateY(-50%);
         -ms-transform: translateY(-50%);
         transform: translateY(-50%);
         font-family: 'Jeju Gothic'; }
     .site-navbar .site-navigation .site-menu .has-children .dropdown {
       visibility: hidden;
       opacity: 0;
       top: 100%;
       position: absolute;
       text-align: left;
       border-top: 2px solid #ff5533;
       -webkit-box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.1);
       box-shadow: 0 2px 10px -2px rgba(0, 0, 0, 0.1);
       padding: 0px 0;
       margin-top: 20px;
       margin-left: 0px;
       background: #fff;
       -webkit-transition: 0.2s 0s;
       -o-transition: 0.2s 0s;
       transition: 0.2s 0s; }
       .site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top {
         position: absolute; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top:before {
           display: none;
           bottom: 100%;
           left: 20%;
           border: solid transparent;
           content: " ";
           height: 0;
           width: 0;
           position: absolute;
           pointer-events: none; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown.arrow-top:before {
           border-color: rgba(136, 183, 213, 0);
           border-bottom-color: #fff;
           border-width: 10px;
           margin-left: -10px; }
       .site-navbar .site-navigation .site-menu .has-children .dropdown a {
         text-transform: none;
         letter-spacing: normal;
         -webkit-transition: 0s all;
         -o-transition: 0s all;
         transition: 0s all;
         color: #000 !important; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown a.active {
           color: #ff5533 !important;
           background: #f8f9fa; }
       .site-navbar .site-navigation .site-menu .has-children .dropdown > li {
         list-style: none;
         padding: 0;
         margin: 0;
         min-width: 200px; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown > li > a {
           padding: 9px 20px;
           display: block; }
           .site-navbar .site-navigation .site-menu .has-children .dropdown > li > a:hover {
             background: #f8f9fa;
             color: #ced4da; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children > a:before {
           content: "\e315";
           right: 20px; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children > .dropdown, .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children > ul {
           left: 100%;
           top: 0; }
         .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children:hover > a, .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children:active > a, .site-navbar .site-navigation .site-menu .has-children .dropdown > li.has-children:focus > a {
           background: #f8f9fa;
           color: #ced4da; }
     .site-navbar .site-navigation .site-menu .has-children:hover > a, .site-navbar .site-navigation .site-menu .has-children:focus > a, .site-navbar .site-navigation .site-menu .has-children:active > a {
       color: #ff5533; }
     .site-navbar .site-navigation .site-menu .has-children:hover, .site-navbar .site-navigation .site-menu .has-children:focus, .site-navbar .site-navigation .site-menu .has-children:active {
       cursor: pointer; }
       .site-navbar .site-navigation .site-menu .has-children:hover > .dropdown, .site-navbar .site-navigation .site-menu .has-children:focus > .dropdown, .site-navbar .site-navigation .site-menu .has-children:active > .dropdown {
         -webkit-transition-delay: 0s;
         -o-transition-delay: 0s;
         transition-delay: 0s;
         margin-top: 0px;
         visibility: visible;
         opacity: 1; }

.site-mobile-menu {
  width: 300px;
  position: fixed;
  right: 0;
  z-index: 2000;
  padding-top: 20px;
  background: #fff;
  height: calc(100vh);
  -webkit-transform: translateX(110%);
  -ms-transform: translateX(110%);
  transform: translateX(110%);
  -webkit-box-shadow: -10px 0 20px -10px rgba(0, 0, 0, 0.1);
  box-shadow: -10px 0 20px -10px rgba(0, 0, 0, 0.1);
  -webkit-transition: .3s all ease-in-out;
  -o-transition: .3s all ease-in-out;
  transition: .3s all ease-in-out; }
  .offcanvas-menu .site-mobile-menu {
    -webkit-transform: translateX(0%);
    -ms-transform: translateX(0%);
    transform: translateX(0%); }
  .site-mobile-menu .site-mobile-menu-header {
    width: 100%;
    float: left;
    padding-left: 20px;
    padding-right: 20px; }
    .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-close {
      float: right;
      margin-top: 8px; }
      .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-close span {
        font-size: 30px;
        display: inline-block;
        padding-left: 10px;
        padding-right: 0px;
        line-height: 1;
        cursor: pointer;
        -webkit-transition: .3s all ease;
        -o-transition: .3s all ease;
        transition: .3s all ease; }
        .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-close span:hover {
          color: #ced4da; }
    .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo {
      float: left;
      margin-top: 10px;
      margin-left: 0px; }
      .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo a {
        display: inline-block;
        text-transform: uppercase; }
        .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo a img {
          max-width: 70px; }
        .site-mobile-menu .site-mobile-menu-header .site-mobile-menu-logo a:hover {
          text-decoration: none; }
  .site-mobile-menu .site-mobile-menu-body {
    overflow-y: scroll;
    -webkit-overflow-scrolling: touch;
    position: relative;
    padding: 0 20px 20px 20px;
    height: calc(100vh - 52px);
    padding-bottom: 150px; }
  .site-mobile-menu .site-nav-wrap {
    padding: 0;
    margin: 0;
    list-style: none;
    position: relative; }
    .site-mobile-menu .site-nav-wrap a {
      padding: 10px 20px;
      display: block;
      position: relative;
      color: #212529; }
      .site-mobile-menu .site-nav-wrap a:hover {
        color: #ff5533; }
    .site-mobile-menu .site-nav-wrap li {
      position: relative;
      display: block; }
      .site-mobile-menu .site-nav-wrap li .nav-link.active {
        color: #ff5533; }
      .site-mobile-menu .site-nav-wrap li.active > a {
        color: #ff5533; }
    .site-mobile-menu .site-nav-wrap .arrow-collapse {
      position: absolute;
      right: 0px;
      top: 10px;
      z-index: 20;
      width: 36px;
      height: 36px;
      text-align: center;
      cursor: pointer;
      border-radius: 50%; }
      .site-mobile-menu .site-nav-wrap .arrow-collapse:hover {
        background: #f8f9fa; }
      .site-mobile-menu .site-nav-wrap .arrow-collapse:before {
        font-size: 12px;
        z-index: 20;
        font-family: "icomoon";
        content: "\f078";
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%) rotate(-180deg);
        -ms-transform: translate(-50%, -50%) rotate(-180deg);
        transform: translate(-50%, -50%) rotate(-180deg);
        -webkit-transition: .3s all ease;
        -o-transition: .3s all ease;
        transition: .3s all ease; }
      .site-mobile-menu .site-nav-wrap .arrow-collapse.collapsed:before {
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%); }
    .site-mobile-menu .site-nav-wrap > li {
      display: block;
      position: relative;
      float: left;
      width: 100%; }
      .site-mobile-menu .site-nav-wrap > li > a {
        padding-left: 20px;
        font-size: 20px; }
      .site-mobile-menu .site-nav-wrap > li > ul {
        padding: 0;
        margin: 0;
        list-style: none; }
        .site-mobile-menu .site-nav-wrap > li > ul > li {
          display: block; }
          .site-mobile-menu .site-nav-wrap > li > ul > li > a {
            padding-left: 40px;
            font-size: 16px; }
          .site-mobile-menu .site-nav-wrap > li > ul > li > ul {
            padding: 0;
            margin: 0; }
            .site-mobile-menu .site-nav-wrap > li > ul > li > ul > li {
              display: block; }
              .site-mobile-menu .site-nav-wrap > li > ul > li > ul > li > a {
                font-size: 16px;
                padding-left: 60px; }
    .site-mobile-menu .site-nav-wrap[data-class="social"] {
      float: left;
      width: 100%;
      margin-top: 30px;
      padding-bottom: 5em; }
      .site-mobile-menu .site-nav-wrap[data-class="social"] > li {
        width: auto; }
        .site-mobile-menu .site-nav-wrap[data-class="social"] > li:first-child a {
          padding-left: 15px !important; }

.sticky-wrapper {
  position: relative;
  z-index: 100;
  width: 100%;
  position: absolute;
  top: 0; }
  .sticky-wrapper .site-navbar {
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
  .sticky-wrapper .site-navbar {
    background: #fff; }
    .sticky-wrapper .site-navbar ul li a {
      color: rgba(255, 255, 255, 0.7) !important; }
      .sticky-wrapper .site-navbar ul li a.active {
        color: #fff !important; }
  .sticky-wrapper.is-sticky .site-navbar {
    background: #fff;
    -webkit-box-shadow: 4px 0 20px -5px rgba(0, 0, 0, 0.2);
    box-shadow: 4px 0 20px -5px rgba(0, 0, 0, 0.2); }
    .sticky-wrapper.is-sticky .site-navbar .site-logo a {
      color: #ff5533; }
    .sticky-wrapper.is-sticky .site-navbar ul li a {
      color: #000; }
      .sticky-wrapper.is-sticky .site-navbar ul li a.active {
        color: #ff5533 !important; }
  .sticky-wrapper .shrink {
    padding-top: 0px !important;
    
    padding-bottom: 0px !important; }
    @media (max-width: 991.98px) {
      .sticky-wrapper .shrink {
        padding-top: 30px !important;
        padding-bottom: 30px !important; } }

	/* 직접손댐  */

	#header{
		
		/* border: 1px solid white; */
		height: 100px;
		background-color: white;
		position:relative;
		top:0px;
		border-bottom: 1px solid black;
	}
	#logo{

		/* border: 1px solid black; */
		width: 80px;
		height: 80px;
	}
	#logofont{
		/* border: 1px solid black; */
		width: 180px;
		height: 180px;
		position:relative;
		left: -40px;
		top: -3px;
	}
	.site-logo{
		/* border: 1px solid black; */
		position:relative;
		top: -46px;
		left: 8px;
	}
	
	.site-navbar .site-navigation .site-menu > li{
		position:relative;
		top: 12px;
		margin-right: 20px;
		
	}
	
	.text-right{
		/* border: 1px solid white; */
		position:relative;
		left: 26px;
		top: -56px;
	}
	.text-left{
		/* border: 1px solid white; */
		position:relative;
		left: -18px;
		top: -56px;
		width: 500px;
		
	}

	#login-sign{
		/* border: 1px solid white; */
		display: inline-block;
		position: absolute;
		top: 40px;
		left: 1400px;
	}
	.sign{
		position: relative;
		left: -26px;
		
	}
	.sign, .login{
		font-size: 10px;
	}


	
	.underbar{
		height: 56px;
		border-bottom:5px solid #285894;
	
	}


</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

		
	  <div id="header">
	      <header class="site-navbar site-navbar-target" role="banner">
	
	        <div class="container">
	          <div class="row align-items-center position-relative">
	          
	          	
	            <div class="col-lg-4">
	              <nav class="site-navigation text-right ml-auto " role="navigation">
	                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
	                  <li class="bar underbar"><a href="#!" class="nav-link">홈</a></li>
	                  <li class="bar"><a href="#!" class="nav-link">예매</a></li>
	                  <li class="bar"><a href="#!" class="nav-link">영화</a></li>
	                  <li class="bar"><a href="#!" class="nav-link">영화관</a></li>
	                </ul>
	              </nav>
	            </div>
	            
	            <div class="col-lg-4 text-center">
	              <div class="site-logo">
	 
	              	<img src="/movie/resources/img/logo2.png" id="logo">
	        		<img src="/movie/resources/img/logo_font2.png" id="logofont">
	        
	              </div>
	
	
	              <div class="ml-auto toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-white"><span class="icon-menu h3 text-white"></span></a></div>
	            </div>
	            
	            
	            <div class="col-lg-4">
	              <nav class="site-navigation text-left mr-auto " role="navigation">
	                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
	                  <li class="bar"><a href="#!" class="nav-link">스토어</a></li>
	                  <li class="bar"><a href="#!" class="nav-link">이벤트</a></li>
	                  <li class="bar"><a href="#!" class="nav-link">VOD</a></li>
	                  <li class="bar"><a href="#!" class="nav-link">고객센터</a></li>
	                </ul>
	              </nav>
	            </div>
	            
	
	          </div>
	        </div>
			<div id="login-sign">
				<nav class="site-navigation text-left mr-auto " role="navigation">
				<ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
					<li><a href="#!" class="nav-link login">로그인</a></li>
					<li><a href="#!" class="nav-link sign">회원가입</a></li>
				</ul>
				</nav>
			</div>
	      </header>
	  </div>
	  
	<script type="text/javascript">
	

		$(".sign").mouseover(function() {
			$(this).addClass("active");
		});
		
		$(".sign").mouseout(function() {
			$(this).removeClass("active");
		});
		
		$(".login").mouseover(function() {
			$(this).addClass("active");
		});
		
		$(".login").mouseout(function() {
			$(this).removeClass("active");
		});
		
		var bar;
		
		$(".bar").click(function() {
			bar=$(this);
			$(".bar").removeClass("underbar");
			$(this).addClass("underbar");
			
		});
		
		$(".bar").mouseover(function() {
			
			$(this).addClass("underbar");
			
		});
		
		$(".bar").mouseout(function() {
			$(".bar").removeClass("underbar");
			bar.addClass("underbar");
			
		});
		
	
	</script>
</body>
</html>