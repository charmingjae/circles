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
		/* String[] getStuInterest = request.getParameterValues("interest"); */
		String getStuPw = request.getParameter("inputPw");
		String getInterest = request.getParameter("stuInter");
		
		System.out.println("학번 : " + getStuNo);
		System.out.println("이름 : " + getStuName);
		System.out.println("번호 : " + getStuPhone);
		System.out.println("반 - 번호 : " + getStuGrade + "-" + getStuClass);
		System.out.println("관심사 변수 : " + getInterest);
		System.out.println(" ");
		
		
		/* Insert Part */
		dbConnection dbCon = new dbConnection();
		dbCon.connect();
		
		String validStuNo = "SELECT COUNT(*) FROM newb WHERE stuNo = '" + getStuNo + "'";
		
		dbCon.select(validStuNo);
		
		if((dbCon.rs.next() == false) || (getStuNo.isEmpty() == true))
		{
			return;
		}
		else{
			if(dbCon.rs.getString(1).equals("1")){
				%>
					<script>
						alert("이미 가입신청을 한 학번입니다.");
						location.href="../root/index.jsp";
					</script>
				<%
			}
			else{
				String sql = "Insert into newb(stuNo, stuName, stuPhone, stuGrade, stuClass, stuInterest, stuPw) " + 
						"Values('" + getStuNo + "', '" + getStuName + "', '" + getStuPhone + "', '" + getStuGrade + "', '" + getStuClass + "', '" + getInterest + "', '" + getStuPw +"');";
				dbCon.insert(sql);
				dbCon.close();
				response.sendRedirect("../mojuk/exit.jsp");
			}
		}
		
		
	%>

</body>
</html>