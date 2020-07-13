<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOJUK</title>

	<!-- Link index.css -->
	<link href="../css/index.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
		function validForm(){
			var frmStuNo = document.frmStuNo;
			var stuNo = frmStuNo.inputStuNo.value;
			
			if(!stuNo){
				alert('학번을 입력해주세요.');
				return;
			}
			else if(stuNo.length > 9 || stuNo.length < 9){
				alert('학번을 정확히 입력해주세요.');
				return;
			}
			else{
				frmStuNo.submit();
			}
		}
		
		function entValidForm(e){
			if(event.keyCode == 13){
				validForm();
			}
		}
		
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
	<!-- 
	2020. 07. 08.
	writer : minjae 
	
	2020. 07. 09.
	memo : form tag 추가
	writer : minjae
	-->
	<form onsubmit="return false;" action="../proc/chkDupStuNo.jsp" class="container" method="post" name="frmStuNo">
		<div class="container">
			<span> 모죽! </span>
			<div class="main">
				<input type="number" oninput="maxLengthCheck(this)" onkeydown="entValidForm()" maxlength="9" name="inputStuNo" placeholder="학번을 입력하세요.">
				<button type="button" onclick="validForm()">확인</button>
			</div>
		</div>
	</form>
</body>
</html>