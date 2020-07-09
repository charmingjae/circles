<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOJUK</title>

	<!-- Link wrInfo.css -->
	<link href="../css/wrInfo.css" rel="stylesheet" type="text/css">
	
	<!-- Include js file -->
	<!-- <script type="text/javascript" src="../js/wrInfo.js"></script> -->
	<script>

	function inputPhoneNumber(obj) {
	    var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";
	    if(number.length < 4) {
	        return number;
	    } else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
	    } else if(number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	    obj.value = phone;
	}
	</script>
	
</head>
<body>
	<!-- 
	2020. 07. 08.
	writer : minjae 
	-->
	<div class="container">
		<span id="showWelcome"> 🍀 환영합니다 🍀 </span>
		<span id="showEtc"> 여러분을 알고싶어요!</span>
		<div class="main">
			<input type="text" placeholder="이름">
		</div>
		<div class="main">
			<input type="text" onkeyup="inputPhoneNumber(this)" class="phoneNum" maxlength="13" placeholder="📞">
		</div>
		<div class="main">
			<select name=class>
				<option value="" disabled selected>반을 선택하세요</option>
				<option value=1>A
				<option value=2>B
				<option value=3>C
			</select>
		</div>
		
		<div class="subBtn">
			<button>다 작성했어요!</button>
		</div>
	</div>
	
</body>
</html>