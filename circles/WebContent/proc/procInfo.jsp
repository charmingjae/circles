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
	String getStuPw = request.getParameter("inputStuPw");
	
	if(getStuNo == null){
		 
		PrintWriter outs = response.getWriter();
		 
		outs.println("<script>alert('정상적으로 학번을 입력하세요.'); location.href='../root/status';</script>");
		 
		outs.flush();

		
	}
	
	/* dbConnection */
	
	dbConnection dbCon = new dbConnection();
	
	
	/* Valid Student Number*/
	
	String valStuNo = "SELECT COUNT(*) FROM newb WHERE stuNo = '" + getStuNo +"' and stuPw = '" + getStuPw + "'";
	try{
		dbCon.select(valStuNo);
		
		if((dbCon.rs.next() == false) || (getStuNo.isEmpty() == true))
		{
			return;
		}
		else{
			if(!dbCon.rs.getString(1).equals("1")){
				%>
					<script>
						alert("해당 학번의 정보가 없거나, 비밀번호룰 확인하세요.");
						history.go(-1);
					</script>
				<%
			}
			else{
				/* Get the Every Info */
				String sql = "SELECT * FROM newb WHERE stuNo = '" + getStuNo +"'";
				
				dbCon.select(sql);
				
				if((dbCon.rs.next() == false) || (getStuNo.isEmpty() == true))
				{
					return;
				}
				else{
					/* 넘겨야 할 자료
						1. 학번
						2. 이름
						3. 연락처
						4. 학년-반
						5. 관심사
					*/
					request.setAttribute("stuNo", dbCon.rs.getString(2));
					request.setAttribute("stuName", dbCon.rs.getString(3));
					request.setAttribute("stuPhone", dbCon.rs.getString(4));
					request.setAttribute("stuGrade", dbCon.rs.getString(5)+"-"+dbCon.rs.getString(6));
					request.setAttribute("stuInter", dbCon.rs.getString(7));
					request.getRequestDispatcher("../root/resStatus.jsp").forward(request, response);
				}
				
				
			}
		}
		
	}catch(Exception e)
	{
		System.out.println(e.getMessage());
	}


%>

</body>
</html>