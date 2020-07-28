<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="connection.dbConnection" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link admPg.css -->
	<link href="../css/admPg.css" rel="stylesheet" type="text/css">
	
</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>
	
	<%
		/*
			관리자 페이지 [신청 현황 확인]
			getSess : 세션 값
			total : 게시글 수
			cnt : 게시글 수 쿼리
			sql : 정보 쿼리
		*/
	
		String getSess = (String)session.getAttribute("userID");
		if(getSess == null){
			PrintWriter outs = response.getWriter();
			outs.println("<script>alert('로그인이 필요합니다.'); location.href='login.jsp';</script>");
			outs.flush();
		}
		else{
		int total = 0;
		dbConnection dbCon = new dbConnection();
		String cnt = "SELECT COUNT(*) FROM newb";
		String sql = "SELECT * FROM newb order by _id desc";
		dbCon.select(cnt);
		while(dbCon.rs.next())
		{
			total = Integer.parseInt(dbCon.rs.getString(1));
		}
		dbCon.select(sql);
	%>
	<div class="container">
		<span> 신청 현황 </span><br/>
		<span class="spanTotal"> 총 <%=total %>명 </span>
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
				if(total == 0){
				%>
					<tr>
						<td colspan="6">등록한 사람이 없습니다.</td>
					</tr>
				<%
				}
				else{
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
				}
				%>
			</table>	
		</div>
	</div>
		<%
		}
		%>
</body>
</html>