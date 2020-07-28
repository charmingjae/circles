<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link chkInterest.css -->
	<link href="../css/chkInterest.css" rel="stylesheet" type="text/css">
	<script>
	
	/* 
		validForm() : 체크박스 선택 여부 확인 func
		isInterChk : 체크 여부 변수
		arr_Inter : 체크 박스 요소 변수
	*/
	function validForm(){
		var isInterChk = false;
		var arr_Inter = document.getElementsByName("interest");
		var frmInfo = document.frmInfo;
		for(var i=0; i<arr_Inter.length; i++){
			if(arr_Inter[i].checked == true){
				isInterChk = true;
				break;
			}
		}
		
		if(!isInterChk){
			alert("관심 분야를 1개 이상 선택해주세요.");
			return false;
		}
		else{
			frmInfo.submit();
		}
	}
	</script>
	
</head>
<body>
	<%
	
		request.setCharacterEncoding("UTF-8");

		/*
			getStuNo : index에서 입력한 학번 저장 변수
			getStuName : 학생 이름 저장 변수
			getStuPhone : 학생 연락처 저장 변수
			getStuGrade : 학년 저장 변수
			getStuClass : 반 저장 변수
		*/
		
		String getStuNo = request.getParameter("stuNo");
		if(getStuNo == null){
			PrintWriter outs = response.getWriter();
			outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='index.jsp';</script>");
			outs.flush();
		}
		
		String getStuName = request.getParameter("stuName");
		String getStuPhone = request.getParameter("stuPhone");
		String getStuGrade = request.getParameter("grade");
		String getStuClass = request.getParameter("stuClass");

		/* 메시지 출력용 */
		System.out.println("학번 : " + getStuNo);
		System.out.println("이름 : " + getStuName);
		System.out.println("번호 : " + getStuPhone);
		System.out.println("반 - 번호 : " + getStuGrade + "-" + getStuClass);
		System.out.println("");
	%>
	
	
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

	<form onsubmit="return false;" action="../mojuk/inputPw.jsp" class="container" method="post" name="frmInfo">
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
				<input type="hidden" name="stuNo" value="<%=getStuNo %>" />
				<input type="hidden" name="stuName" value="<%=getStuName %>" />
				<input type="hidden" name="stuPhone" value="<%=getStuPhone %>" />
				<input type="hidden" name="stuGrade" value="<%=getStuGrade %>" />
				<input type="hidden" name="stuClass" value="<%=getStuClass %>" />
				<button type="button" onclick="validForm()">체크 했어요!</button>
			</div>
		</div>
	</form>
	
</body>
</html>