<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOJUK</title>

	<!-- Link chkInterest.css -->
	<link href="../css/chkInterest.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		/* 
			접수 마지막 페이지
		*/
	%>
	
	
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>


	<div class="container">
		<span id="showWelcome"> 감사합니다! </span>
		<span id="showWelcome"> 검토 후에 연락 드리겠습니다! </span>
		<div class="subBtn">
			<button onclick="location.href='index.jsp'">메인으로</button>
		</div>
	</div>
	
</body>
</html>