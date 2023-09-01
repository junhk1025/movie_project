<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/movie/resources/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="/movie/resources/slick/slick-theme.css">
    <link rel="stylesheet" href="/movie/resources/css/movieInfo.css">
     
   
</head>

<body>
    <!-- 슬라이드 시작 -->
     <div class="slider lazy" >
      <c:forEach items="${list2}" var="dto">
         <div class="imgback">
           <img src="/movie/resources/img/${dto.simg}" style="height: 500px">
         </div>
       </c:forEach>
    </div>
      <!-- 슬라이드 끝 -->

      <!-- 컨테이너 -->
      <div class="containerBox">
          <div class="detail">
            <div class="poster_info">
              <img src="/movie/resources/img/${dto.img}" alt="${dto.name}">
            </div>
            <div class="title_info">
              <span class="grade"><img class="age" src="/movie/resources/img/${dto.age}.png" alt=""></span>
              <strong>${dto.name}</strong>
            </div>
            <ul class="detail_info1">
              <li class="sub_info1" style="cursor: pointer;">
                <em>관람객 평점</em>
                <strong class="ic_star">
                   <img src="/movie/resources/img/star.png" style="width: 20px; margin-left: 3px; margin-right: -3px;" alt="">
                  <strong>${dto.totalgrade}</strong>
                </strong>
              </li>
              <li class="sub_info2">
                <em>예매율 ${dto.seq-1}위</em>
                <strong>${dto.rate}%</strong>
              </li>
              <li class="sub_info3">
                <em>누적관객수</em>
                <strong>${dto.total}</strong>
                <em>명</em>
              </li>
            </ul>
            <ul class="detail_info2">
              <li class="sub_info1">
                <em>장르</em>
                <strong>
                  <em>${list[0].genre}/${list[0].country}</em>
                  <em class="time_info">${list[0].runtime}분</em>
                </strong>
              </li>
              <li class="sub_info2">
                <em>감독</em>
                <strong>${list[0].director}</strong>
              </li>
              <li class="sub_info3">
                <em>출연</em>
                <strong>
                <c:forEach items="${list}" var="dto" varStatus="status" >
                  ${dto.actor} <c:if test="${!status.last}">,</c:if>
                </c:forEach>
                </strong>
              </li>
            </ul>
            <div class="reserve">
              <a href="#"><button type="button" class="btn btn-primary" style="border-radius: 5px; width: 150px;">예매하기</button></a>
            </div>
          </div>
          <ul class="tab_wrap outer">
            <li>
              <button id="tab1" class="tab_tit active" style="width: 50%; left: 0%;">
                <span>영화정보</span>
              </button>
              <div class="tab_con">
                <div class="movi_tab_info1">
                  <div class="left_con">
                    <strong class="tit_info">시놉시스</strong>
                    <div class="story" style="overflow:auto; width:460px; height:115px;">
                      <p class="txt_info">
                        <span>
                          ${list[0].story}
                        </span>
                      </p>
                    </div>
                  </div>
                  <div class="right_con">
                    <strong class="tit_info">관람 선호도</strong>
                    <div class="group_chart">
                      <div class="group_chart1" style="float: left; width: 30%; margin-left: -10px;">
                        <figure class="highcharts-figure">
                          <div id="chart1"></div>
                      </figure>
                      </div>
                      <div class="group_chart2" style="float: right; width: 70%; margin-left: 10px; ">
                        <figure class="highcharts-figure" style="margin-left: 10px; padding-left: 35px;">
                          <div id="chart2"></div>
                        </figure>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="movi_tab_info2">
                  <h5 class="tit_info">
                    포스터 · 스틸컷 (${fn: length(list2)})
                    <div class="slider slider-for">
                    <c:forEach items="${list2}" var="dto">
                      <div>
                        <img src="/movie/resources/img/${dto.simg}">
                      </div>
                     </c:forEach>
                    </div>
                    <div class="slider slider-nav">
                    <c:forEach items="${list2}" var="dto">
                      <div>
                        <img src="/movie/resources/img/${dto.simg}">
                      </div>
                     </c:forEach>
                    </div>               
                  </h5>
                </div>
              </div>
            </li>
            <li>
              <button id="tab2" class="tab_tit" style="width: 50%; left: 50%; position: absolute; top: 50px;">
                <span>평점 및 관람평</span>
                <span id="tab2_total">(${fn: length(list4)})</span>
              </button>
            </li>
          </ul>

          <div class="tab_con2" style="display: none; margin-top: -100px;">
            <div class="movi_score_box">
                <span class="txt_ic_score2">
                    <em>총 평점</em>
                    <img src="/movie/resources/img/star.png" style="width: 25px; margin-left: 3px; margin-right: -3px;" alt="">
                    <span style=" position: relative; top: 8px;">
                        <strong style="margin-left: -30px;" id="avg">${list3[0].avgrade}</strong>
                        <span style="margin-left: -10px;">/10</span>
                        <!-- <span>10</span> -->
                    </span>
                </span>
                <p class="txt_info">
                    <span>
                        영화 관람 후 관람평을 작성해주세요.
                    </span>
                </p>
            </div>
            
            <div class="movi_review_box">
                <div class="star_score_box">
                    <div class="star_rate" style="margin-top: 12px;">
                        <span class="star-input" style="text-align: center;">
                            <span style="display: block; margin-bottom: 10px;">
                                <output for="star-input" style="font-size: 20px;"><b id="star_grade">0</b>점</output>
                            </span>
                            <span class="input">
                              <input type="radio" name="star-input" id="p1" value="1"><label for="p1">1</label>
                              <input type="radio" name="star-input" id="p2" value="2"><label for="p2">2</label>
                              <input type="radio" name="star-input" id="p3" value="3"><label for="p3">3</label>
                              <input type="radio" name="star-input" id="p4" value="4"><label for="p4">4</label>
                              <input type="radio" name="star-input" id="p5" value="5"><label for="p5">5</label>
                              <input type="radio" name="star-input" id="p6" value="6"><label for="p6">6</label>
                              <input type="radio" name="star-input" id="p7" value="7"><label for="p7">7</label>
                              <input type="radio" name="star-input" id="p8" value="8"><label for="p8">8</label>
                              <input type="radio" name="star-input" id="p9" value="9"><label for="p9">9</label>
                              <input type="radio" name="star-input" id="p10" value="10"><label for="p10">10</label>
                            </span>
                          </span>
                    </div>
                </div>
                <div class="review_write_box">
                    <textarea id="txtComment" placeholder="평점 및 영화 관람평을 작성해주세요."></textarea>
                    <span id="byte_info"></span>
                </div>
                <button type="submit" id="btnComment" class="btn_submit">관람평 작성</button>
            </div>
            
            <div class="movi_review_list">
                <div class="review_top">
                    <div class="total_info" style="display: block;">
                        총
                        <em id="total">${fn: length(list4)}</em>
                        건
                    </div>
                </div>
                    <ul class="review_con_list">
                		<c:forEach items="${list3}" var="dto">
                        <li>
                            <span class="img_info">
                                <img src="/movie/resources/img/${dto.fimg}" alt="">
                            </span>
                            <div class="top_info">
                                <span class="name_info">
                                    ${dto.id}
                                </span>
                                <span style="color: #eee; padding-right: 20px;">|</span>
                                <span class="txt_ic_score" style="margin-left: -15px;">
                                    <img src="/movie/resources/img/star.png" alt="">
                                    <em>평점</em>
                                    <strong>${dto.grade}</strong>
                                </span>
                            </div>
                            <div class="review_info">
                                ${dto.content}
                            </div>
                            <div class="btm_info">
                                <span class="date_info">
                                ${dto.day}
                                </span>
                            </div>
                        </li>
                    	</c:forEach>
                    </ul>
                
	            <button type="button" class="btn_more" style="width: 960px">
	              <span>펼쳐보기<span class="glyphicon glyphicon-chevron-down" style="margin-left: 5px; padding:8px 0;"></span></span>
	            </button>
	            
            </div>
        </div>

      </div>

      
   <script src="/movie/resources/js/jquery-1.12.4.js"></script>
   <script src="/movie/resources/js/bootstrap.js"></script>
   <script src="/movie/resources/slick/slick.js" type="text/javascript" charset="utf-8"></script>
   <script src="/movie/resources/js/string.js"></script>

   <!-- 차트 -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>

      

    <!-- 스크립트  -->
    <script type="text/javascript">
        $(document).ready(function(){
        	 $('.lazy').slick({
                 
           	  lazyLoad: 'ondemand', // ondemand progressive anticipated
                 infinite: true,
                 autoplay: true,
                 autoplaySpeed: 1000,
                 speed: 1000
           	  //dots: true,
           	  //infinite: true,
           	  //speed: 300,
           	  //slidesToShow: 1,
           	  //adaptiveHeight: true
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
              dots: false,
              centerMode: true,
              focusOnSelect: true
            });
            $('.one-time').slick({
              dots: true,
              infinite: true,
              speed: 300,
              slidesToShow: 1,
              adaptiveHeight: true
            });
        });

        $('#tab2').click(function(){
          $("#tab2").addClass("active");
          $("#tab1").removeClass("active");
          $('.tab_con2').css('display', '');
          $('.tab_con').css('display', 'none');
         

        });

        $('#tab1').click(function(){
          $("#tab1").addClass("active");
          $("#tab2").removeClass("active");
          $('.tab_con').css('display', '');
          $('.tab_con2').css('display', 'none');
         

        });




        /* 차트1 성별*/
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

// Build the chart
Highcharts.chart('chart1', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: ''
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    credits:{
       enabled:false
 
        }, 
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            colors: pieColors,
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
                distance: -10,
                fontSize: 9,
                filter: {
                    property: 'percentage',
                    operator: '>',
                    value: 4
                }
            }
        }
    },

    series: [{
        name: 'Share',
        data: [
            { name: '남성', y: ${dto2.man} },
            { name: '여성', y: ${dto2.woman} }
            
        ],
        credits:{
          enabled:false
    
       }

    }]
});
        

        /* 차트2 연령별*/
        Highcharts.chart('chart2', {
          chart: {
              type: 'column',
              width: '220',
              height: '120'
          },
          title: {
              text: ''
          },
          subtitle: {
              text: ''
          },
          accessibility: {
              announceNewData: {
                  enabled: true
              }
          },
          xAxis: {
              type: 'category'
          },
          yAxis: {
              title: {
                  text: ''
              }

          },
          credits:{
       enabled:false
 
        }, 
          legend: {
              enabled: false
          },
          plotOptions: {
              
              series: {
                  borderWidth: 0,
                  dataLabels: {
                      enabled: true,
                      format: '{point.y:.1f}%'
                  }
              }
          },

          tooltip: {
              headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
              pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
          },

          series: [
              {
                  name: "Browsers",
                  colorByPoint: true,
                  data: [
                      {
                          name: "10대",
                          y: ${dto3.gen10}
                        
                      },
                      {
                          name: "20대",
                          y: ${dto3.gen20}
                          
                      },
                      {
                          name: "30대",
                          y: ${dto3.gen30}
                          
                      },
                      {
                          name: "40대",
                          y: ${dto3.gen40}
                        
                      }
                      
                  ]
              }
          ]
                    
              
      });

      // star rating
      var starRating = function(){
            var $star = $(".star-input"),
                $result = $star.find("output>b");
            $(document)
                .on("focusin", ".star-input>.input", function(){
                $(this).addClass("focus");
            })
                .on("focusout", ".star-input>.input", function(){
                var $this = $(this);
                setTimeout(function(){
                if($this.find(":focus").length === 0){
                    $this.removeClass("focus");
                }
                }, 100);
            })
                .on("change", ".star-input :radio", function(){
                $result.text($(this).next().text());
            })
                .on("mouseover", ".star-input label", function(){
                $result.text($(this).text());
            })
                .on("mouseleave", ".star-input>.input", function(){
                var $checked = $star.find(":checked");
                if($checked.length === 0){
                $result.text("0");
                } else {
                $result.text($checked.next().text());
                }
            });
        };
        starRating();

        /* 별점 */
        $(function() {
            $('#txtComment').keyup(function (e){
                var content = $(this).val();
                /* $(this).height(((content.split('\n').length + 1) * 1.5) + 'em'); */
                $('#byte_info').html(content.length + '/220');
            });
            $('#txtComment').keyup();
        });
        
        /*ajax more*/
       var begin = 1;
         
        $(".btn_more").click(function(){
        	console.log("dd");
        	begin += 10;
        	
        	$.ajax({
        		
        		type:"POST",
        		url: "/movie/info/rmore.action",
        		data: "begin=" + begin+"&seq="+${seq},
        		dataType: "json",
        		//----------------------------요청
        		success: function(data){
        			$(data).each(function(index, t){
        				var row = String.format("<li>"
        						+"<span class='img_info'>"
        						+"<img src='/movie/resources/img/{0}' alt=''>"
        						+"</span>"
        						+"<div class='top_info'>"
        						+"<span class='name_info'>"
        						+"{1}"
        						+"</span>"
        						+"<span style='color: #eee; padding-right: 20px;'>|</span>"
        						+"<span class='txt_ic_score' style='margin-left: -15px;'>"
        						+"<img src='/movie/resources/img/star.png' alt=''>"
        						+"<em>평점</em>"
        						+"<strong>{2}</strong>"
        						+"</span>"
        						+"</div>"
        						+"<div class='review_info'>"
        						+"{3}"
        						+"</div>"
        						+"<div class='btm_info'>"
        						+"<span class='date_info'>"
        						+"{4}"
        						//+"<fmt:parseDate value='{4}' var='noticePostDate' pattern='yyyy-MM-dd'/>"
        						//+"<fmt:formatDate value='${noticePostDate}' pattern='yyyy.MM.dd'/>"
        						+"</span>"
        						+"</div>"
        						+"</li>", t.fimg, t.id, t.grade, t.content, t.day);
        							console.log(row);
        							 $(".review_con_list").append(row);
        			});
        			
        		}
        		
        	});
  
             	
             	
        	
        });
      	
   	 $(".btn_submit").click(function(){
        	console.log("dd");
        	console.log($("#star_grade").text());
        	console.log($("#txtComment").val());
        	
        	var grade = $("#star_grade").text();
        	var review = $("#txtComment").val();
	$.ajax({
        		
        		type:"POST",
        		url: "/movie/info/addok.action",
        		data: "userseq=7&grade=" + grade +"&review="+review + "&movieseq="+${seq},
        		dataType: "json",
        		//----------------------------요청
        		success: function(data){
        			var row = String.format("<li>"
    						+"<span class='img_info'>"
    						+"<img src='/movie/resources/img/{0}' alt=''>"
    						+"</span>"
    						+"<div class='top_info'>"
    						+"<span class='name_info'>"
    						+"{1}"
    						+"</span>"
    						+"<span style='color: #eee; padding-right: 20px;'>|</span>"
    						+"<span class='txt_ic_score' style='margin-left: -15px;'>"
    						+"<img src='/movie/resources/img/star.png' alt=''>"
    						+"<em>평점</em>"
    						+"<strong>{2}</strong>"
    						+"</span>"
    						+"</div>"
    						+"<div class='review_info'>"
    						+"{3}"
    						+"</div>"
    						+"<div class='btm_info'>"
    						+"<span class='date_info'>"
    						+"{4}"
    						//+"<fmt:parseDate value='{4}' var='noticePostDate' pattern='yyyy-MM-dd'/>"
    						//+"<fmt:formatDate value='${noticePostDate}' pattern='yyyy.MM.dd'/>"
    						+"</span>"
    						+"</div>"
    						+"</li>", data.fimg, data.id, data.grade, data.content, data.day);
    							console.log(row);
    							 $(".review_con_list").prepend(row);
    							 console.log( $(".review_con_list:last-child"));
    							 $(".review_con_list > li").last().remove();
    							 
    							 $("#total").text(Number($("#total").text())+1);
    							 $("#tab2_total").text(Number($("#tab2_total").text())+1);
    							 
    							 
        		}
        		
        	});
        	
			
   	});
        
        
    </script>

</body>
</html>