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
		 
		outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='index.jsp';</script>");
		 
		outs.flush();

		
	}
	
	dbConnection dbCon = new dbConnection();
	
	String sql = "SELECT COUNT(*) FROM newb WHERE stuNo = '" + getStuNo + "'";
	
	dbCon.select(sql);
	
	
	
	if((dbCon.rs.next() == false) || (getStuNo.isEmpty() == true))
	{
		return;
	}
	else{
		if(dbCon.rs.getString(1).equals("1")){
			%>
				<script>
					alert("이미 가입신청을 한 학번입니다.");
					history.go(-1);
				</script>
			<%
		}
		else{
			request.setAttribute("inputStuNo", getStuNo);
			request.getRequestDispatcher("../mojuk/wrInfo.jsp").forward(request, response);
		}
	}

%>

</body>
</html>