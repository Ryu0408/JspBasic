<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("user_name");
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	String gender = request.getParameter("gender");
	String[] hobbys = request.getParameterValues("hobby");
	String region = request.getParameter("region");
	String intro = request.getParameter("introduce");
%>
    
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		# 이름 : <%= name %><br>
		# ID : <%= id %><br>
		# PW : <%= pw %><br>
		# 성별 : <%= gender %><br>
		# 취미 : <%= Arrays.toString(hobbys) %><br>
		# 지역 : <%= region%><br>
		# 자기소개 : <%= intro %><br>
</body>
</html>