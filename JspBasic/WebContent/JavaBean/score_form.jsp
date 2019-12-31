<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		국어(kor), 영어(eng), 수학(math)점수를 입력받아 전송하는
		폼을 작성하세요.(score_bean_make.jsp)
	 --%>
	 <h3>자신의 성적을 입력하세요^^</h3>
	<form action = "score_bean_make.jsp">
		<p>﻿
		국어 : <input type = "text" name="kor" placeholder = "ex)100" style = "width:60px;height:20px;font-size:10px"><br>
		영어 : <input type = "text" name="eng" placeholder = "ex)100" style = "width:60px;height:20px;font-size:10px"><br>
		수학 : <input type = "text" name="math" placeholder = "ex)100" style = "width:60px;height:20px;font-size:10px">	
			 <input type = "submit" value = "전송">
		</p>
	</form>

</body>
</html>