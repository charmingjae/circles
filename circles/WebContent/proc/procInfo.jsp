<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="connection.dbConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOJUK</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	/*
	* 2020. 07. 09
	* memo : index.jsp에서 입력한 학번을 받는 변수 생성
	* 변수 명 : getStuNo
	* 타입 : String
	* writer : minjae
	*/
	String getStuNo = request.getParameter("inputStuNo");
	
	if(getStuNo == null){
		 
		PrintWriter outs = response.getWriter();
		 
		outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='../root/status';</script>");
		 
		outs.flush();

		
	}
	
	request.setAttribute("inputStuNo", getStuNo);
	request.getRequestDispatcher("../root/resStatus.jsp").forward(request, response);

%>

</body>
</html>