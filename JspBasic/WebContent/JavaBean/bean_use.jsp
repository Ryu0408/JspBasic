<%@page import="kr.co.stephen.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="kr.co.stephen.user.UserBean" scope="request"/>
	# 아이디 : <jsp:getProperty name="user" property="id"/>
	# 비밀번호 : <jsp:getProperty name="user" property="pw"/>
	# 이름 : <jsp:getProperty name="user" property="name"/>
	# 이메일 : <jsp:getProperty name="user" property="email"/>
		<%--변수로 사용하고 싶을 경우에는!!! 아래와 같이 사용 --%>
<%
	UserBean user2 = (UserBean)request.getAttribute("user");	
%>
	<%--변수로 사용하고 싶을 경우에는!!! 아래와 같이 사용 --%>
	# 아이디 : <%= user.getId() %>
	# 비밀번호 : <%= user.getPw()%>
	# 이름 : <%= user.getName() %>
	# 이메일 : <%= user.getEmail() %>
	
</body>
</html>