<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link index.css -->
	<link href="../css/status.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
	
		/*
			validForm() : 학번 검증 func
			stuNo : 입력한 학번 저장 변수
		*/
		function validStuNo(){
			var frmStuNo = document.frmStuInfo;
			var stuNo = frmStuInfo.inputStuNo.value;
			
			if(!stuNo){
				alert('학번을 입력해주세요.');
				return;
			}
			else if(stuNo.length > 9 || stuNo.length < 9){
				alert('학번을 정확히 입력해주세요.');
				return;
			}
			else if(stuNo < 0){
				alert('학번은 음수일 수가 음습니다 :-)');
				return;
			}
			else{
				document.getElementById("inputStuPw").style.display="block";
				document.getElementById("nextButton").style.display="none";
			}
		}
		
		function validForm(){
			var frmStuNo = document.frmStuInfo;
			var stuPw = frmStuInfo.inputStuPw.value;
			if(stuPw == ""){
				alert('비밀번호를 입력하세요.');
				return;
			}
			else{
				frmStuInfo.submit();
			}
		}
		
		/*
			entValidForm() : 엔터키 입력 발생했을 때 처리 func
		*/
		function entValidForm(e){
			if(event.keyCode == 13){
				validForm();
			}
		}
		
		/*
			maxLengthCheck() : 최대 길이 검증 func
		*/
		function maxLengthCheck(object){
			if(object.value.length > object.maxLength){
				object.value = object.value.slice(0, object.maxLength);
			}
		}
		
	</script>
</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<form onsubmit="return false;" action="../proc/procInfo.jsp" class="container" method="post" name="frmStuInfo">
		<div class="container">
			<span> 내 정보 </span>
			<div class="main">
				<input type="number" oninput="maxLengthCheck(this)" maxlength="9" name="inputStuNo" placeholder="학번을 입력하세요.">
				<button type="button" onclick="validStuNo()" id="nextButton">다음</button>
			</div>
			<div class="main" id="inputStuPw" style="display:none;">
				<input type="password" onkeydown="entValidForm()" maxlength="9" name="inputStuPw" placeholder="비밀번호를 입력하세요.">
				<button type="button" onclick="validForm()">확인</button>
			</div>
		</div>
	</form>
</body>
</html>