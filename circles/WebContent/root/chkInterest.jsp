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
	<%@include file ="../../navbar/navbar.jsp" %>

	<!-- 
	2020. 07. 08.
	writer : minjae 
	-->
	<form action="exit.jsp" class="container" method="post" name="frmInfo">
		<div class="container">
			<span id="showWelcome"> 몇 가지만 더 물어볼게요!🥰</span>
			<span id="showRetIndex" onClick="javascript:history.back();" style="cursor:hand" onfocus="blur();"> >정보 다시 입력하기< </span>
			<span id="showEtc"> 당신이 관심 있어 하는 분야는? </span>
			<div class="main">
				<input type="checkbox" name="interest" value="웹">웹
				<input type="checkbox" name="interest" value="인공지능">인공지능
				<input type="checkbox" name="interest" value="모바일">모바일
				<input type="checkbox" name="interest" value="IOT">IOT
				<input type="checkbox" name="interest" value="블록체인">블록체인
				<input type="checkbox" name="interest" value="기타"><label class="inter">기타</label>
			</div>
			<div class="subBtn">
				<button type="submit">체크 했어요!</button>
			</div>
		</div>
	</form>
	
</body>
</html>