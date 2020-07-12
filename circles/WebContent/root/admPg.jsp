<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="connection.dbConnection" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOJUK</title>

	<!-- Link admPg.css -->
	<link href="../css/admPg.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>
	
	<%
		dbConnection dbCon = new dbConnection();
		String sql = "SELECT * FROM newb order by _id desc";
		dbCon.select(sql);
	%>
	<!-- 
	2020. 07. 08.
	writer : minjae 
	
	2020. 07. 09.
	memo : form tag 추가
	writer : minjae
	-->
	<div class="container">
		<span> 신청 현황 </span>
		<div class="main">
			<table border="1">
				<tr>
					<th>번호</th>
					<th>학번</th>
					<th>이름</th>
					<th>연락처</th>
					<th>학년/반</th>
					<th>관심사</th>
				</tr>
				<%
				while(dbCon.rs.next()){
				%>
				<tr>
					<td><%=dbCon.rs.getString("_id") %></td>
					<td><%=dbCon.rs.getString("stuNo") %></td>
					<td><%=dbCon.rs.getString("stuName") %></td>
					<td><%=dbCon.rs.getString("stuPhone") %></td>
					<td><%=dbCon.rs.getString("stuGrade") %> - <%=dbCon.rs.getString("stuClass") %></td>
					<td><%=dbCon.rs.getString("stuInterest") %></td>
				</tr>
				<%
				}
				%>
			</table>
			
		</div>
	</div>
</body>
</html>