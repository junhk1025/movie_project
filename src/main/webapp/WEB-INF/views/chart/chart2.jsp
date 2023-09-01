<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<script src="/movie/resources/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/movie/resources/css/bootstrap.css">


</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css); .jejugothic * { font-family: 'Jeju Gothic', sans-serif; }
body {
	font-family: 'Jeju Gothic';
}


.highcharts-figure, .highcharts-data-table table {
    min-width: 360px; 
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}


#content{
	margin-top: 20px;
	font-family: 'Jeju Gothic'; 
	/* border: 1px solid black; */
	height: 840px;
	background-color: #fffffo;
}
#background{
	border-radius: 10px;
	/* border: 1px solid blue;  */
	padding-top: 5px;
	padding-bottom: 5px;
	width: 1750px;
	margin: 0px auto;
	background-color: #A2A1A1;
}

#wrap1, #wrap2{
	margin: 0px auto;
	width: 1700px;
	height: 400px;
	position: relative;
	top: 0px;
	left: 26px;

	/* border: 1px solid tomato;*/

}
#wrap1 > div { float: left;}
#wrap1 > div > div{ float: left;}
#btn1, #btn2{
	font-family: 'Jeju Gothic'; 
	color: white;
	background-color: #5A5A5A;
	width: 50px;
	height: 200px;

	
}


#section-1 > .btn-active{
	background-color: #192246;
}


#section-1, #section-2{

/* 	border: 1px solid blue; */
	display: inline-block;
	height: 400px;
	
}
#section-1{
	width: 50px;
	
}
#section-2{

	width: 1600px;
	margin-left: 30px;


}



#chart1,#chart2, #movie-sales, #snack-sales{
	width: 370px;
	height: 370px;
	border: 1px solid black;
	display: inline-block;
	margin-top: 10px;
	border-radius: 10px;

}
#chart1{position: relative; left: 0px;}
#chart2{position: relative; left: 30px;}
#movie-sales{ position: relative; left: 60px; text-align: center; }
#snack-sales{ position: relative; left: 90px; text-align: center; }
#movie-sales, #snack-sales{ background-color: #3A3A3A;} 	

#movie-sales-m1, #snack-sales-m1{
	width:150px;
	margin: 20px auto;
	font-family: 'Jeju Gothic'; 
	font-size: 1.5em;
	color: white;
	
	
}
.movie-sales-m2, .snack-sales-m2{
	display:inline-block;
	width:80%;
	text-align: left;
 	/* box-shadow:  5px 5px 2px black; */ 
	/* border: 0.5px solid black; */ 
 	/* background-color: #5A5A5A; */
	font-family: 'Jeju Gothic'; 
	font-size: 1.3em;
	margin-bottom: 18px;
	
	border-radius: 10px;
	padding: 10px;
	color: white;
}
.price {
	color:gold;
	font-size: 0.8em;
	font-family: 'Jeju Gothic'; 
	float: right;
}


/*범진*/
.movie_select {
      float: left;
      width: 450px;
      height: 90%;
      border-bottom: 1px solid #DDD;
   }

.group_top {
      background-color: black;
      height: 38px;
      text-align: center;
      padding-top: 8px;
      border-bottom: 2px solid #CCC;
      z-index:1;
   }

.movie_area {
   color: white;
}
.movie_list > ul > li > a{
	color: black;
	text-decoration: none;
}
.movie_list > ul > li > a:hover {
      color: gray;

   }

 .movie_list {
	  
	  margin-top: -1px;
   	  z-index:2;
      background-color: #F5F5F5;
      height: 336px;
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
   
   .movieLi a {
      padding-top: -10px;
   }

   .movie_list_active {
      border: 2px solid black;
   }
   
   .check {
      color: #6F5D98;
      float: right;
      margin-right: 30px;
      display: none;
   }
   
   
   
   .highcharts-figure, .highcharts-data-table table {
    min-width: 310px; 
    max-width: 800px;
    margin: 1em auto;
}



.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

#chart3, #chart4, #chart5 {
	width: 370px;
	height: 370px;
	border: 1px solid black;
	display: inline-block;
	margin-top: 10px;
	border-radius: 10px;
	margin-left: 30px;
}


.highcharts-figure, .highcharts-data-table table {
    min-width: 320px; 
    max-width: 660px;
    margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}



</style>
<body>


<div id="content">
	<div id="background">
	<div id="wrap1">
		<div id="section-1">
			
			<button id="btn1" class="btn-active">금액</button>
			<button id="btn2">수량</button>
		</div>
		
		<div id="section-2">
			
			<div id="chart1"></div>
			<div id="chart2"></div>
			<div id="movie-sales">
				<div id="movie-sales-m1">영화 매출 순위</div>
				
				<c:forEach items="${rank}" var ="dto" varStatus = "status" begin="0" end="4">
					<div class="movie-sales-m2">${status.count}. ${dto.itemName} <span class="price"><fmt:formatNumber value="${dto.totalPrice}" pattern="###,###,###,###" />원</span></div>
	        	</c:forEach>
			
	
			</div>
			<div id="snack-sales">
				<div id="snack-sales-m1">스낵 매출 순위</div>
				<c:forEach items="${rank2}" var ="dto" varStatus = "status" begin="0" end="4">
					<div class="movie-sales-m2">${status.count}. ${dto.itemName} <span class="price"><fmt:formatNumber value="${dto.totalPrice}" pattern="###,###,###,###" />원</span></div>
				
	        	</c:forEach>


			</div>
		</div>
	</div>
	




	<br>
	<div id="wrap2">
	
	  <div class="movie_select">
	       <div class="group_top">
	          <h4 class="movie_area">${list.get(0).name}</h4>
	         
	       </div>
	 
			
	          <div class="movie_list">
	          
	             <ul>

	             	<c:forEach items="${list}" var ="dto" varStatus = "status">
		             	<li class="movieLi">
		                   <a href="#">
		                      <span class="age_limit"><img src="/movie/resources/img/${dto.age}.png"></span>
		                      <span class="movie_title">${dto.name}</span><span class="check"><i class="fas fa-check"></i></span>
		                   </a>
		                   <input type="hidden" value="${dto.seq}">
		                </li> 
	        		</c:forEach>
	             
	                
	               
	             </ul>
	          </div>
	          
	       </div>
	       
	       
	       <div id="chart3"></div>
	 	
	       <div id="chart4"></div>
	       <div id="chart5"></div>
	    </div> <!-- wrap2 -->
		</div> 
	</div> <!-- content -->
	


<script src="/movie/resources/js/themes/gray.js"></script>

<script type="text/javascript">
var data1 =[];
var categories1 = [];
var data2 = [];
var categories2 = [];
var data3 =[];
var categories3 =[];
var data4 =[];
var data5 =[];

var movieLi = $(".movieLi");

var movieTitle = $(".movieLi .movie_title")


function init() {

	data1 = [
		
		<c:forEach items="${map1.keySet()}" var ="key" varStatus = "status">
		
			<c:if test="${key != 'name' && key!= 'day'}">
			
				{ name : '${key}', data : ${map1.get(key)}},
		
			</c:if>

		</c:forEach>
		
		];
	categories1 = [

		<c:forEach items="${map1.get('day')}" var ="day" varStatus = "status">
		'${fn:substring(day,5,10)}'
		<c:if test="${!status.last}">
			,
		</c:if>
		</c:forEach>

	]
	
	data2 = [	
		
		<c:forEach items="${map3.keySet()}" var ="key" varStatus = "status">
		
		<c:if test="${key != 'name' && key!= 'day'}">
		
			{ name : '${key}', data : ${map3.get(key)}},
	
		</c:if>

		</c:forEach>
		
		];
	categories2 = [
		
		<c:forEach items="${map3.get('day')}" var ="day" varStatus = "status">
		'${fn:substring(day,5,10)}'
		<c:if test="${!status.last}">
			,
		</c:if>
		</c:forEach>
	

    ]

	data3 =[
		{
	        name: 'totalAttendance',
	        data: 
	        	[
	
	        		<c:forEach items="${map5.get('total')}" var ="cnt" varStatus = "status">
	        		Number('${cnt}')
	        		<c:if test="${!status.last}">
	        			,
	        		</c:if>
	        		</c:forEach>
	        		
	        	]
	    }];
	
	categories3 =[

		<c:forEach items="${map5.get('day')}" var ="day" varStatus = "status">
		'${day}'
		<c:if test="${!status.last}">
			,
		</c:if>
		</c:forEach>

	];
	data4 =[
		{
	        name: 'gender',
	        data: [
	            { name: '남자', y: ${rate.man} },
	            { name: '여자', y: ${rate.woman} }

	        ]
	    }];
	data5 =[
		{
	        name: 'age',
	        data: [${generation.gen10}, ${generation.gen20}, ${generation.gen30}, ${generation.gen40}, ${generation.gen50}, ${generation.gen60}]

	    }];
	
	 
	$(".movieLi").eq(0).addClass('movie_list_active');
	$(".movieLi").eq(0).children(".check").css("display", "inline-block");
	$(".movieLi").eq(0).children("a").children(".check").css("display", "inline-block");
	
	 
	 //console.log("init", data2);
}
init();

	





$("#btn1").click(function() {
	$("#btn2").removeClass("btn-active");
	$("#btn1").addClass("btn-active");
	
	data1 = [
		
		<c:forEach items="${map1.keySet()}" var ="key" varStatus = "status">
		
			<c:if test="${key != 'name' && key!= 'day'}">
			
				{ name : '${key}', data : ${map1.get(key)}},
		
			</c:if>

		</c:forEach>
		
		];
	categories1 = [

		<c:forEach items="${map1.get('day')}" var ="day" varStatus = "status">
		'${fn:substring(day,5,10)}'
		<c:if test="${!status.last}">
			,
		</c:if>
		</c:forEach>

	]
	
	data2 = [	
		
		<c:forEach items="${map3.keySet()}" var ="key" varStatus = "status">
		
		<c:if test="${key != 'name' && key!= 'day'}">
		
			{ name : '${key}', data : ${map3.get(key)}},
	
		</c:if>

		</c:forEach>
		
		];
	categories2 = [
		
		<c:forEach items="${map3.get('day')}" var ="day" varStatus = "status">
		'${fn:substring(day,5,10)}'
		<c:if test="${!status.last}">
			,
		</c:if>
	</c:forEach>
	

    ];
	
	var str = '<div id="movie-sales-m1">영화 매출 순위</div><c:forEach items="${rank}" var ="dto" varStatus = "status" begin="0" end="4"><div class="movie-sales-m2">${status.count}. ${dto.itemName} <span class="price"><fmt:formatNumber value="${dto.totalPrice}" pattern="###,###,###,###" />원</span></div></c:forEach>';
	var str2 = '<div id="snack-sales-m1">스낵 매출 순위</div><c:forEach items="${rank2}" var ="dto" varStatus = "status" begin="0" end="4"><div class="movie-sales-m2">${status.count}. ${dto.itemName} <span class="price"><fmt:formatNumber value="${dto.totalPrice}" pattern="###,###,###,###" />원</span></div></c:forEach>';	



	$("#movie-sales").html(str);
	$("#snack-sales").html(str2);


	chart1();
	
	
	

	
});
$("#btn2").click(function() {
	$("#btn1").removeClass("btn-active");
	$("#btn2").addClass("btn-active");
	data1 = [
		
		<c:forEach items="${map2.keySet()}" var ="key" varStatus = "status">
		
			<c:if test="${key != 'name' && key!= 'day'}">
			
				{ name : '${key}', data : ${map2.get(key)}},
		
			</c:if>

		</c:forEach>
		
		];
	categories1 = [

		<c:forEach items="${map2.get('day')}" var ="day" varStatus = "status">
		'${fn:substring(day,5,10)}'
		<c:if test="${!status.last}">
			,
		</c:if>
		</c:forEach>

	]
	
	data2 = [	
		
		<c:forEach items="${map4.keySet()}" var ="key" varStatus = "status">
		
		<c:if test="${key != 'name' && key!= 'day'}">
		
			{ name : '${key}', data : ${map4.get(key)}},
	
		</c:if>

		</c:forEach>
		
		];
	categories2 = [
		
		<c:forEach items="${map4.get('day')}" var ="day" varStatus = "status">
		'${fn:substring(day,5,10)}'
		<c:if test="${!status.last}">
			,
		</c:if>
	</c:forEach>
	

    ];
	
	


	var str = '<div id="movie-sales-m1">영화 매출 순위</div><c:forEach items="${rank3}" var ="dto" varStatus = "status" begin="0" end="4"><div class="movie-sales-m2">${status.count}. ${dto.itemName} <span class="price">${dto.cnt}개</span></div></c:forEach>';
	var str2 = '<div id="snack-sales-m1">스낵 매출 순위</div><c:forEach items="${rank4}" var ="dto" varStatus = "status" begin="0" end="4"><div class="movie-sales-m2">${status.count}. ${dto.itemName} <span class="price">${dto.cnt}개</span></div></c:forEach>';	

	


	$("#movie-sales").html(str);
	$("#snack-sales").html(str2);
	chart1();

	
	
});

//천단위 콤마 넣기
function comma(num) {
		return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}

function chart1() {

	Highcharts.chart('chart1', {

	    title: {
	        text: '영화 매출'
	    },

	   

	    yAxis: {
	        title: {
	            text: '금액 ( 원 )'
	        }
	    },

	    xAxis: {
	    	categories: categories1,
	        crosshair: true
	    },

	    legend: {
	    	enabled: false,


	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            }
	        }
	    },

	    series: data1,

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    },
	    credits:{
	    	enabled:false
	 
	    },
	    //메뉴박스 삭제
	    exporting: {
	    	enabled : false
	    }

	});
	
	Highcharts.chart('chart2', {

	    title: {
	        text: '스낵 매출'
	    },

	   

	    yAxis: {
	        title: {
	            text: '금액 ( 원 )'
	        }
	    },

	    xAxis: {
	    	categories: categories2,
	        crosshair: true
	    },

	    legend: {
	    	enabled: false,
	    	layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle',
	        borderWidth: 0

	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            }
	        }
	    },

	    series: data2,

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    },
	    credits:{
	    	enabled:false
	 
	    },
	    //메뉴박스 삭제
	    exporting: {
	    	enabled : false
	    }


	});
}

function chart2() {
	//console.log(data3);
	Highcharts.chart('chart3', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: '일별 관람객 수'
	    },

	    xAxis: {
	        categories: categories3,
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: '인원 수 ( 명 )'
	        }
	    
	    },
	    
	    legend: {
	    	enabled: false,


	    },
	    
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        },
		    series: {
		        color: '#6F5898',
		        dataLabels: {
	                enabled: true,
	                format: '{point.y}명'
	            }
		    }
	    },
	    series: data3,
	    credits:{
	    	enabled:false
	 
	    },
	    //메뉴박스 삭제
	    exporting: {
	    	enabled : false
	    }

	});
	
	// Build the chart
	Highcharts.chart('chart4', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie'
	    },
	    title: {
	        text: '관람객 성비율'
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            colors: pieColors,
	            dataLabels: {
	                enabled: true,
	                format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
	                distance: -50,
	                filter: {
	                    property: 'percentage',
	                    operator: '>',
	                    value: 4
	                }
	            }
	        }
	    },
	    series: data4,
	    credits:{
	    	enabled:false
	 
	    },
	    //메뉴박스 삭제
	    exporting: {
	    	enabled : false
	    }

	});


	Highcharts.chart('chart5', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: '연령별 관람객 비율'
	    },

	    xAxis: {
	        categories: [
	            '10대',
	            '20대',
	            '30대',
	            '40대',
	            '50대',
	            '60대'
	        ],
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        max: 50,
	        title: {
	            text: '비율 ( % )'
	        }
	    },
	    
	    legend: {
	    	enabled: false,


	    },
	    
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            pointPadding: 0.2,
	            borderWidth: 0
	        },
		    series: {
		        color: 'tomato',
		        dataLabels: {
		            enabled: true,
		            format: '{point.y:.1f}%'
		        }
		    }
	    },
	    series: data5,
	    credits:{
	    	enabled:false
	 
	    },
	    //메뉴박스 삭제
	    exporting: {
	    	enabled : false
	    }

	});
	
	
}




Highcharts.setOptions(Highcharts.theme);
Highcharts.setOptions({
    colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4']
});

//Make monochrome colors
var pieColors = (function () {
    var colors = ['cornflowerblue', '#e83e8c', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4'];
/*         base = Highcharts.getOptions().colors[0],
        i;

    for (i = 0; i < 10; i += 1) {
        // Start out with a darkened base color (negative brighten), and end
        // up with a much brighter color
        colors.push(Highcharts.color(base).brighten((i - 3) / 7).get());
    } */
    return colors;
}());


chart1();
chart2();


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
   
   
   var movieSeq = $(this).children().last().val();

   $.ajax({
	   type: "POST",
       url: "/movie/chart/moviechart.action",
       dataType: "json",
       data: "movieSeq=" + movieSeq,
       success: function(result) {
/*     	    console.log(result.day)
	       	console.log(result.total)
	       	console.log(result.rate)
	       	console.log(result.generation) */
			
	       
	       	
	       	//console.log(result.total);
			//console.log(JSON.stringify(result.total).replace(/\"/gi, ""));
	       	
			
			temp = []
			result.total.forEach(item => {
				temp.push(Number(item));
			});
			
			
	     	data3 =[
    		{
    	        name: 'totalAttendance',
    	        data: temp
    	    }];
	     
	     	console.log(temp)
	     	console.log(result.day)
	     	
			categories3 = result.day
			
			


	       	
	       	data4 =[
    		{
    	        name: 'gender',
    	        data: [
    	            { name: '남자', y: Number(result.rate.man) },
    	            { name: '여자', y: Number(result.rate.woman) }

    	        ]
    	    }]; 
	       	
 	       	data5 =[
	    		{
	    	        name: 'age',
	    	        data: [ Number(result.generation.gen10), Number(result.generation.gen20), Number(result.generation.gen30), Number(result.generation.gen40), Number(result.generation.gen50), Number(result.generation.gen60)]
				
	    	    }];
	       	
    		chart2();
    	    
       },
       error: function(a, b, c) {
           console.log(a, b, c);
       }
       
   });
   
});



</script>

</body>
</html>