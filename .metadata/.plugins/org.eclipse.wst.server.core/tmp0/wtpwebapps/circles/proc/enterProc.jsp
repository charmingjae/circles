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

		String getStuNo = request.getParameter("stuNo");
		if(getStuNo == null){
			PrintWriter outs = response.getWriter();
			outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='index.jsp';</script>");
			outs.flush();
		}
		
		String getStuName = request.getParameter("stuName");
		String getStuPhone = request.getParameter("stuPhone");
		String getStuGrade = request.getParameter("stuGrade");
		String getStuClass = request.getParameter("stuClass");
		String[] getStuInterest = request.getParameterValues("interest");
		String getInterest = "";
		
		System.out.println("학번 : " + getStuNo);
		System.out.println("이름 : " + getStuName);
		System.out.println("번호 : " + getStuPhone);
		System.out.println("반 - 번호 : " + getStuGrade + "-" + getStuClass);
		for(int i = 0; i < getStuInterest.length; i++)
		{
			if(i == (getStuInterest.length -1)){
				getInterest = getInterest + getStuInterest[i];
			}
			else{
				getInterest = getInterest + getStuInterest[i] + ", ";
			}
			
		}
		System.out.println("관심사 변수 : " + getInterest);
		System.out.println(" ");
		
		
		/* Insert Part */
		dbConnection dbCon = new dbConnection();
		
		dbCon.connect();
		
		String sql = "Insert into newb(stuNo, stuName, stuPhone, stuGrade, stuClass, stuInterest) " + 
					"Values('" + getStuNo + "', '" + getStuName + "', '" + getStuPhone + "', '" + getStuGrade + "', '" + getStuClass + "', '" + getInterest + "')";
		
		dbCon.insert(sql);
		
		dbCon.close();
		
		
		response.sendRedirect("../root/exit.jsp");
		
	%>

</body>
</html>