<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <tiles:insertAttribute name="asset"></tiles:insertAttribute>


</head>

<body>
	<!-- layout/info.jsp -->
	<main>
		
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
 		<tiles:insertAttribute name="content"></tiles:insertAttribute>

		
	</main>
	
	<script src="/movie/resources/js/header.js"></script>
	<!-- <script src="/movie/resources/js/chart.js"></script> -->
	<script type="text/javascript">
	
		var bar = $(".bar").eq("${bar}");
		$(".bar").eq("${bar}").addClass("underbar");
	</script>
	
</body>
</html>
























