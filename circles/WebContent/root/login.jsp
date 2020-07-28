<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link login.css -->
	<link href="../css/login.css" rel="stylesheet" type="text/css">

</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<form action="../proc/loginProc.jsp" class="container" method="post" name="frmInfo">
		<div class="container">
			<span id="showLogin"> 관리자 롸긴 </span>
			<div class="main">
				<input type="text" name="userID" placeholder="아디">
			</div>
			<div class="main">
				<input type="password" name="userPW" class="passwd" placeholder="패썰드">
			</div>
			<div class="subBtn">
				<button type="submit">로그인</button>
			</div>
			
		</div>
	</form>
	
</body>
</html>