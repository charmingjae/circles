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
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		
		dbConnection objDB = new dbConnection();
		
		int result;
	
		try{
			objDB.select("SELECT COUNT(*) FROM admTbl WHERE userID = '" + userID + "' and userPW = '" + userPW + "'" );
			
			if(objDB.rs.next() == false || (userID.isEmpty()) == true){
				/* 수정 해야함 */
			 	return;
			}
			else{
				if(objDB.rs.getString(1).equals("1")){
					System.out.println("로그인 성공");
					session.setAttribute("userID", userID);
					response.sendRedirect("../root/index.jsp");
				}
				else{
					%>
					<script>
						alert("로그인 실패");
						history.go(-1);
					</script>
					<%
					
					System.out.println("로그인 실패");
				}
			}
		}
		catch(Exception e)
		{
			System.out.println("SQL Exception : " + e);
		}
	%>

</body>
</html>