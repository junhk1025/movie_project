<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="/movie/resources/js/jquery-1.12.4.js"></script>
<script src="/movie/resources/js/jquery-ui.js"></script>
<script src="/movie/resources/js/tagify.js"></script>

<link rel="stylesheet" href="/movie/resources/css/bootstrap.css" />
<link rel="stylesheet" href="/movie/resources/css/adminRegister.css" />
<link rel="stylesheet" href="/movie/resources/css/jquery-ui.css" />
<link rel="stylesheet" href="/movie/resources/css/tagify.css">

</head>

<body>

<div id="bg">
	<div class="insertContent">
		<div id="navLeft">
			<ul>
				<li class="active"><a href="#">영화 등록</a></li>
				<li class="disabled"><a href="#">상영 영화 등록</a></li>
				<li class="disabled"><a href="#">상영 영화 삭제</a></li>
			</ul>
		</div>


		<div id="divHead">
			<h4>영화 등록</h4>
		</div>

		<div id="divAdd">
		
			<!-- enctype="multipart/form-data" -->
			
			<form name= "addMovie" id="addMovie" method="POST" action="/movie/admin/addMovieOK.action" enctype="multipart/form-data" >   
			<table class="table table-bordered add">
				<tr>
					<th>영화 제목</th>
					<td><input type="text" name="MVname" id="name" required
						class="form-control" placeholder="영화 제목을 입력해주세요."></td>
					<th>장르</th>
					<td colspan="2">
						<select name="genreSeq" id="genre" class="form-control">
							<c:forEach items="${genre}" var="dto">
								<option value="${dto.genreSeq}">${dto.genre}</option>
							</c:forEach>		
						</select>
					</td>
				</tr>
				<tr>
					<th>개봉일</th>
					<td><input type="text" name="MVopenday" id="datepicker" required
						class="form-control"></td>
					<th>나라</th>
					<td colspan="2">
						<select name="countrySeq" id="country" class="form-control">
							<c:forEach items="${country}" var="dto">
								<option value="${dto.countrySeq}">${dto.country}</option>
							</c:forEach>	
						</select>
					</td>
				</tr>
				
				
				<tr>
					<th>런타임</th>
					<td>
						<input type="number" name="MVruntime" id="runtime" required class="form-control">
					</td>
					
					<th>연령</th>
					<td colspan="2">
						<select name="MVage" id="age" class="form-control">
							<option value='0'>전체</option>
							<option value='12'>12세</option>
							<option value='15'>15세</option>
							<option value='1'>청소년 관람 불가</option>
						</select>
					</td>
				</tr>
				
				
				<tr>
					<th rowspan="2">줄거리</th>
					<td rowspan="2"><textarea name="MVstory" id="content" required
							class="form-control" placeholder="줄거리를 입력해주세요."></textarea></td>
					<th>감독</th>
					<td colspan="2">
					
						<input type="text" name="MVdirector" id="director" required class="form-control" />
					
					</td>
				</tr>
				<tr>
					<th>출연진</th>
					<td colspan="2"><input type="text" name="actor" id="actor" required
						class="form-control" placeholder="출연진 입력후 엔터"></td>
				</tr>
				
				
				<tr>
					<th>포스터</th>
					<td>
						<input type="file" name="MVimg" id="poster" class="form-control inputImg" required>
					</td>
					<th>스틸컷</th>
					
					<td>
						<a href="#this" class="btn filebtn leftca" id="addFile">추가</a>
					</td>
					
					<td id="tdSteel">
						<p>							
							<input type="file" name="steelImg" id="moreImg_0" class="form-control inputImg steelCut leftca">
							<a href="#this" class="btn filebtn leftca" id="delete" name="delete">삭제</a>
						</p>
					</td>


					
				</tr>
				<tr>
					<th>포스터 사진</th>
					<td id="posterImg">
						<img src="">
					</td>


					<th>스틸컷 사진</th>
					<td id="steelImg" colspan="2">
						<img src="" id="moreImg_0">
					</td>
					
				</tr>
			
				<tr id="reg">
				
					<th>등록</th>

					<td colspan="4">
						<div id="bottomAdd">
							<input type="submit" value="등록" class="btn btn-info insertBtn" />
							<input type="button" value="취소" class="btn btn-warning insertBtn"
								onclick="location.href='#';" />
						</div>
					</td>
				</tr>
				
			</table>
			</form>
		</div>
	</div>
</div>


<script>


        $(function() {
        //input을 datepicker로 선언
        $("#datepicker").datepicker({
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
                ,minDate: "0" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+2M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
                // ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                // ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                // ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                // ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트   
                
        });                    
        
        //초기값을 오늘 날짜로 설정
        $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
        // $("#txt_prodStart" ).datepicker();  
        // $('img.ui-datepicker-trigger').css({'cursor':'pointer', 'margin-left':'5px'});  //아이콘(icon) 위치
        // $('.ui-datepicker ').css({ "margin-left" : "141px", "margin-top": "-223px"});  //달력(calendar) 위치
        // $('img.ui-datepicker-trigger').attr('align', 'absmiddle');

        });

        new Tagify(document.getElementById("actor"));


		var num = 0;
		var test = "";
				
		$("#addFile").on("click", function(e){ //파일 추가 버튼
			
			num++;
			
			e.preventDefault();
			
			var str = "<p><input type='file' name='steelImg' id='moreImg_"+(num)+"' class='form-control inputImg steelCut leftca'><a href='#this' class='btn filebtn leftca' name='delete'>삭제</a></p>";
			$("#tdSteel").append(str);
			
			var img = "<img src='' id='moreImg_"+(num)+"'>";
			$("#steelImg").append(img);
			
			
			$("a[name='delete']").off('click').on("click", function(e){ //삭제 버튼

				e.preventDefault();
				fn_deleteFile($(this));
				
				num--;

			});

		});
		

		function fn_deleteFile(obj){
			
			var test = obj.prev().attr('id');
			
			$("#steelImg").find("img#"+test).remove();
			obj.parent().remove();

		}
		
		
		$(".steelCut").each(function(){
			var filename = $(this);

			$(document).on('change', '.steelCut', function handleImgFileSelect(e) {
				
				var temp = $(this).attr('id'); 

			    var files = e.target.files;
			    var filesArr = Array.prototype.slice.call(files);

			    filesArr.forEach(function(f) {
			        if(!f.type.match("image.*")) {
			            alert("확장자는 이미지 확장자만 가능합니다.");
			            return;
			        }
			        
			        sel_file = f;

			        var reader = new FileReader();
			        
			        reader.onload = function(e) {
				           $("#steelImg").find("img#"+temp).attr("src", e.target.result).width(125);
			        }
			        
			        reader.readAsDataURL(f);
			        
			    });
			});
		});
		
		
		$("#poster").change(function() {
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(f) {
					$("#posterImg img").attr("src", f.target.result).width(200);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});

        
</script>

</body>
