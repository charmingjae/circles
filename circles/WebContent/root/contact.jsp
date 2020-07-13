<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOJUK</title>

	<!-- Link contact.css -->
	<link href="../css/contact.css" rel="stylesheet" type="text/css">
	
	<!-- font-awesome link -->
	 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>
	
	<!-- 연락처 페이지. 동아리 임원 명부 넣을 예정 :-) -->

	<form onsubmit="return false;" action="wrInfo.jsp" class="container" method="post" name="frmStuNo">
		<div class="container">
			<span id="head"> Contact </span>
			<div class="main">
				<span id="showEtc"> </span>
				<span id="showEtc" style="font-weight:bold;"> 차민재 </span>
				<i class="fa fa-google fa-2x" aria-hidden="true"></i>
				<span id="showEtc"> VBLOADCOM@GMAIL.COM  </span>
				<i class="fa fa-github fa-2x" aria-hidden="true"></i>
				<span id="showEtc"> https://github.com/charmingjae</span>
			</div>
		</div>
	</form>
</body>
</html>