<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOJUK</title>

	<!-- Link wrInfo.css -->
	<link href="../css/wrInfo.css" rel="stylesheet" type="text/css">

	<script>

	
	/*
		inputPhoneNumber() : 연락처 폼 하이픈 입력 func
	*/
	function inputPhoneNumber(obj) {
	    var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";
	    if(number.length < 4) {
	        return number;
	    } else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
	    } else if(number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	    obj.value = phone;
	}
	
	/*
		validForm() : 항목 입력 검증 func
	*/
	function validForm(){
		var frmInfo = document.frmInfo;
		var stuName = frmInfo.stuName.value;
		var stuPhone = frmInfo.stuPhone.value;
		var stuGrade = frmInfo.grade.value;
		var stuClass = frmInfo.stuClass.value;
		
		if(!stuName||!stuPhone||!stuGrade||!stuClass){
			alert('모든 항목을 입력해주세요.');
			return;
		}
		else{
			frmInfo.submit();
		}
	}
	
	/*
		entValidForm() : 엔터키 입력 처리 func
	*/
	function entValidForm(e){
		if(event.keyCode == 13){
			validForm();
		}
	}
	</script>
	
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		/* 
			getStuNo : index에서 입력한 학번
		*/
		String getStuNo = (String)request.getAttribute("inputStuNo");

		if(getStuNo == null){
			PrintWriter outs = response.getWriter();
			outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='index.jsp';</script>");
			outs.flush();
		}
	%>
	
	
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>


	<form onsubmit="return false;" action="../root/chkInterest.jsp" class="container" method="post" name="frmInfo">
		<div class="container">
			<span id="showWelcome">🍀<%=getStuNo %> 님 환영합니다🍀</span>
			<span id="showRetIndex" onClick="javascript:location.href='index.jsp'" style="cursor:hand" onfocus="blur();"> >학번 다시 입력하기< </span>
			<span id="showEtc"> 당신에 대해 알고싶어요!</span>
			<div class="main">
				<input type="text" onkeydown="entValidForm()" name="stuName" placeholder="이름">
			</div>
			<div class="main">
				<input type="text" name="stuPhone" onkeyup="inputPhoneNumber(this)" onkeydown="entValidForm()" class="phoneNum" maxlength="13" placeholder="📞">
			</div>
			<div class="main">
				<select name="grade">
					<option value="" disabled selected>학년을 선택하세요</option>
					<option value=1>1
					<option value=2>2
					<option value=3>3
				</select>
			</div>
			<div class="main">
				<select name="stuClass">
					<option value="" disabled selected>반을 선택하세요</option>
					<option value="A">A
					<option value="B">B
					<option value="C">C
				</select>
			</div>
			
			<div class="subBtn">
				<input type="hidden" name="stuNo" value="<%=getStuNo %>" />
				<button type="button" onclick="validForm()">다 작성했어요!</button>
			</div>
		</div>
	</form>
	
</body>
</html>