<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

	<!-- Link navbar.css -->
	<link href="../css/navbar.css" rel="stylesheet" type="text/css">
</head>
	<%
		String getSession = (String)session.getAttribute("userID");
	%>
<body>
	<ul id="main-menu">
		<li class="headName" id="main-menu1"><a href="../root/index.jsp" class="headName">우동</a></li>
		<%
			if((getSession != null) && (getSession.isEmpty() == false)){
				%>
				<li style="float:right" id="main-menu2"><a class="active" href="../root/admPg.jsp"><%=getSession %>님 환영합니다.</a>
					<ul id="sub-menu">
						<li><a class="subAct" href="../mojuk/member.jsp">🍀동아리원🍀</a></li>
						<li><a class="subAct" href="../proc/logout.jsp">로그아웃</a></li>
					</ul>
				</li>
				<%
			}
			else{
				
				%>
				<li style="float:right"><a class="active" href="../root/status.jsp">STATUS</a></li>
				<%
			}
		%>
		<li style="float:right"><a class="active" href="../root/contact.jsp">Contact</a></li>
	</ul>
</body>
</html>