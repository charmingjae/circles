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
	<link href="../css/member.css" rel="stylesheet" type="text/css">
	<script
	  src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script type="text/javascript">
	
		/* 체크박스 전체 선택 */
		$(document).ready(function(){
		    //최상단 체크박스 클릭
		    $("#selAll").click(function(){
		        //클릭되었으면
		        if($("#selAll").prop("checked")){
		            //input태그의 name이 selAll인 태그들을 찾아서 checked옵션을 true로 정의
		            $("input[name=selChk]").prop("checked",true);
		            //클릭이 안되있으면
		        }else{
		            //input태그의 name이 selAll인 태그들을 찾아서 checked옵션을 false로 정의
		            $("input[name=selChk]").prop("checked",false);
		        }
		    })
		})
		
		
		/* 체크박스 선택 */
		$(document).ready(function(){
			$("input[name=selChk]").click(function(){
				if($("#selAll").prop("checked")){
					$("#selAll").prop("checked",false);
				}
			})
		})
		
		
		/* 폼 전송 */
		function subList(e){
			var btnId = e.id;
			var isInterChk = false;
			var arr_Inter = document.getElementsByName("selChk");
			var frmEntryInfo = document.frmEntryInfo;
			for(var i=0; i<arr_Inter.length; i++){
				if(arr_Inter[i].checked == true){
					isInterChk = true;
					break;
				}
			}
			
			if(!isInterChk){
				alert("대상을 선택해주세요.");
				return false;
			}
			else if(btnId=="mojDel"){
				frmEntryInfo.action="../proc/admProc.jsp?btn=mojDel";
				frmEntryInfo.submit();
			}
			else{

			}
		}
		
	</script>
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
		String cnt = "SELECT COUNT(*) FROM coms_mojuk";
		String sql = "SELECT * FROM coms_mojuk order by _id desc";
		dbCon.select(cnt);
		while(dbCon.rs.next())
		{
			total = Integer.parseInt(dbCon.rs.getString(1));
		}
		dbCon.select(sql);
	%>
	<form onsubmit="return false;" action="../proc/admProc.jsp" class="container" method="post" name="frmEntryInfo">
	<div class="container">
		<span> 동아리원😎 </span><br/><br/>
		<span class="spanTotal"> 총 <%=total %>명 </span>
		<div class="main">
			<div class="subBtn">
				<button type="button" id="mojDel" onclick="subList(this)" value="del">삭 ! 제</button>
			</div>
			<table border="1">
				<tr>
					<th>번호</th>
					<th>학번</th>
					<th>이름</th>
					<th>연락처</th>
					<th>학년/반</th>
					<th>관심사</th>
					<th><input type="checkbox" id="selAll"></th>
				</tr>
				<%
				if(total == 0){
				%>
					<tr>
						<td colspan="7">등록한 사람이 없습니다.</td>
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
						<td><input type="checkbox" name="selChk" value="<%= dbCon.rs.getString("stuNo")%>"></td>
					</tr>
					<%
					}
				}
				%>
			</table>
			<div class="subBtn">
				<button type="button" id="btnEnt" onclick="test(this)" value="enter">너, 내 동료가 되어라.</button>
			</div>
		</div>
	</div>
		<%
		}
		%>
	</form>
</body>
</html>