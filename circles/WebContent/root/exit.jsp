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
		/*
		* 2020. 07. 09
		* memo : index.jsp에서 입력한 학번을 받는 변수 생성
		* 변수 명 : getStuNo
		* 타입 : String
		* writer : minjae
		*/
		String getStuNo = request.getParameter("inputStuNo");
	%>
	
	
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<!-- 
	2020. 07. 08.
	writer : minjae 
	-->
	<div class="container">
		<span id="showWelcome"> 감사합니다! </span>
		<span id="showWelcome"> 검토 후에 연락 드리겠습니다! </span>
		<div class="subBtn">
			<button>체크 했어요!</button>
		</div>
	</div>
	
</body>
</html>