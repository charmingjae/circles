<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link index.css -->
	<link href="../css/main.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>
		<div class="container">
			<span> 우동 </span>
			<div class="main">
				<span>우리들의 동아리</span> <br/>
			</div>
			<div class="subBtn">
				<button type="button" onclick="location.href='selCircles.jsp'">시작하기</button>
			</div>
		</div>
</body>
</html>