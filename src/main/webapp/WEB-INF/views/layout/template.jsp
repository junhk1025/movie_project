<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- tiles.xml에 등록해야 사용 가능 -->
<tiles:insertAttribute name="asset"></tiles:insertAttribute>

</head>
<body>
	<!-- layout/info.jsp -->
	<main>
		
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		<tiles:insertAttribute name="content"></tiles:insertAttribute>

		
	</main>

</body>
</html>