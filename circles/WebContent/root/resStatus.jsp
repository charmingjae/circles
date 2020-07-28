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
		/* Get student Info */
		String getStuNo = (String)request.getAttribute("stuNo");
		String getStuName = (String)request.getAttribute("stuName");
		String getStuPhone = (String)request.getAttribute("stuPhone");
		String getStuGrade = (String)request.getAttribute("stuGrade");
		String getStuInter = (String)request.getAttribute("stuInter");
		
	%>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<div class="container">
		<span> <%=getStuNo %>의 신청 정보 </span>
		
		<div class="spanBox">
			<span style="font-size:20px"> 이름  > <%=getStuName %></span>
		</div>
		
		<div class="spanBox">
			<span style="font-size:20px"> 학번 > <%=getStuNo %></span>
		</div>

		
		<div class="spanBox">
			<span style="font-size:20px"> 학년 - 반 > <%=getStuGrade %></span>
		</div>

		
		<div class="spanBox">
			<span style="font-size:20px"> 연락처 > <%=getStuPhone %></span>
		</div>
		
		<div class="spanBox">
			<span style="font-size:20px"> 관심사 </span><br/><br/>
			<span style="font-size:20px"><%=getStuInter %></span>
		</div>
		
	</div>
</body>
</html>