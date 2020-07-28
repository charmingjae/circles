<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link index.css -->
	<link href="../css/index.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
	
		/*
			validForm() : 학번 검증 func
			stuNo : 입력한 학번 저장 변수
		*/
		function validForm(){
			var frmStuNo = document.frmStuNo;
			var stuNo = frmStuNo.inputPw.value;
			
			if(!stuNo){
				alert('비밀번호를 입력해주세요.');
				return;
			}
			else{
				frmStuNo.submit();
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
		
		
	</script>
</head>
<body>
	<%
	
		request.setCharacterEncoding("UTF-8");
	
		String getStuNo = request.getParameter("stuNo");
		String getStuName = request.getParameter("stuName");
		String getStuPhone = request.getParameter("stuPhone");
		String getStuGrade = request.getParameter("stuGrade");
		String getStuClass = request.getParameter("stuClass");
		String[] getStuInterest = request.getParameterValues("interest");
		String getInterest = "";
		for(int i = 0; i < getStuInterest.length; i++)
		{
			if(i == (getStuInterest.length -1)){
				getInterest = getInterest + getStuInterest[i];
			}
			else{
				getInterest = getInterest + getStuInterest[i] + ", ";
			}
		}
		System.out.println(getInterest);
	%>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<form onsubmit="return false;" action="../proc/enterProc.jsp" class="container" method="post" name="frmStuNo">
		<div class="container">
			<span> PW </span><br/><br/>
			<span style="font-size:15px; color:red;"> !!! CAUTION !!! <br/> 테스트 중! 평소에 사용하는 비밀번호를 절대 사용하지 마세요. </span>
			<div class="main">
				<input type="hidden" name="stuNo" value="<%=getStuNo %>" />
				<input type="hidden" name="stuName" value="<%=getStuName %>" />
				<input type="hidden" name="stuPhone" value="<%=getStuPhone %>" />
				<input type="hidden" name="stuGrade" value="<%=getStuGrade %>" />
				<input type="hidden" name="stuClass" value="<%=getStuClass %>" />
				<input type="hidden" name="stuInter" value="<%=getInterest %>" />
				<input type="password" onkeydown="entValidForm()" maxlength="9" name="inputPw" placeholder="비밀번호를 입력하세요.">
				<button type="button" onclick="validForm()">확인</button>
			</div>
		</div>
	</form>
</body>
</html>