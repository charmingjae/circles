<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="connection.dbConnection" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

</head>
<body>
	<%
	
		request.setCharacterEncoding("UTF-8");
	
		/* 버튼 아이디 가져옴 */
		String getBtnId = request.getParameter("btn");
		System.out.println(getBtnId);
	
		String[] getStuList = request.getParameterValues("selChk");
		String getList = "";
		for(int i = 0; i < getStuList.length; i++)
		{
			if(i == (getStuList.length -1)){
				getList = getList + "'"+getStuList[i]+"'";
			}
			else{
				getList = getList + "'"+getStuList[i]+"'" + ", ";
			}
		}
		System.out.println(getList);
		
		try{
			dbConnection objDB = new dbConnection();
			
			if(getBtnId.equals("ent")){
				String sql = "INSERT INTO coms_mojuk(stuNo, stuName, stuPhone, stuGrade, stuClass, stuInterest) " +
								"SELECT stuNo, stuName, stuPhone, stuGrade, stuClass, stuInterest FROM newb WHERE stuNo IN("+getList+");";
				
								
				String delSql = "DELETE FROM newb WHERE stuNo IN ("+getList+");";
				objDB.update(sql);
				objDB.update(delSql);
				
				objDB.close();
				%>
				<script>
					alert("동료가 늘었다!!");
					location.href="../root/admPg.jsp";
				</script>
				<%
				
			}else if(getBtnId.equals("del")){
				String sql = "DELETE FROM newb WHERE stuNo IN ("+getList+");";
				
				objDB.update(sql);
				
				objDB.close();
				%>
				<script>
					alert("삭제 완료!");
					location.href="../root/admPg.jsp";
				</script>
				<%
			}
			else{
				String sql = "DELETE FROM coms_mojuk WHERE stuNo IN ("+getList+");";
				
				objDB.update(sql);
				
				objDB.close();
				%>
				<script>
					alert("즐거웠습니다..!");
					location.href="../root/admPg.jsp";
				</script>
				<%
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		
	%>
</body>
</html>