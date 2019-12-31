<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	StringBuffer reqUrl= request.getRequestURL();
	String reUri = request.getRequestURI();
	String protocol = request.getProtocol();
	String conPath = request.getContextPath();
	int serverPort = request.getServerPort();
	String userIP = request.getRemoteAddr();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		# 요청 URL : <%= reqUrl  %><br>
		# 요청 URI : <%= reUri  %><br>
		# 요청 프로토콜 : <%= protocol  %><br>
		# 요청 컨텍스트 루트 경로 : <%= conPath  %><br>
		# 요청 포트번호 : <%= serverPort  %><br>
		# 요청 ip 주소 : <%= userIP  %><br>
</body>
</html>