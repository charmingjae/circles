<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link index.css -->
	<link href="../css/resStatus.css" rel="stylesheet" type="text/css">
</head>
<body>

	<%
		
		String getStuNo = (String)request.getAttribute("inputStuNo");
	%>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<div class="container">
		<span> <%=getStuNo %>의 신청 정보 </span>
		
		<div class="spanBox">
			<span style="font-size:20px"> 이름 </span>
		</div>
		<div class="main">
		</div>
		
		<div class="spanBox">
			<span style="font-size:20px"> 학번 </span>
		</div>
		<div class="main">
		</div>
		
		<div class="spanBox">
			<span style="font-size:20px"> 학년 - 반 </span>
		</div>
		<div class="main">
		</div>
		
		<div class="spanBox">
			<span style="font-size:20px"> 연락처 </span>
		</div>
		<div class="main">
		</div>
		
		<div class="spanBox">
			<span style="font-size:20px"> 관심사 </span>
		</div>
		<div class="main">
			
		</div>
		
	</div>
</body>
</html>