<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>우동</title>

	<!-- Link index.css -->
	<link href="../css/selCircles.css" rel="stylesheet" type="text/css">
	
	
	<script type="text/javascript">
		function select(value){
			if(value="computerScience"){
				document.getElementById("selNextCircles").style.display="block";
			}
			else{
				document.getElementById("selNextCircles").style.display="none";;
			}
		}
		
 		function selectNext(value){
			if(value == " "){
				location.href="index.jsp";
			}
			else{
				location.href="../"+value+"/"+value+".jsp";
			}
		}
	</script>
</head>
<body>
	<!-- include header -->
	<%@include file ="../navbar/navbar.jsp" %>

		<div class="container">
			<div class="main">
				<select id="selMajor" name="selCircles" onChange="select(this.value);">
					<option value="" disabled selected>학과를 선택하세요</option>
					<option value="computerScience">컴퓨터정보과
				</select>
			</div>
			
			
			<div class="nextCircles" id="selNextCircles">	
				<select name="selCircles" onChange="selectNext(this.value);">
					<option value="" disabled selected>동아리를 선택하세요</option>
					<option value="mojuk">모죽
				</select>
			</div>
		</div>
</body>
</html>