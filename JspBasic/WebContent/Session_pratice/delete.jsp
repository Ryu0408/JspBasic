<%@page import="user.UserRepasitory"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	User user = (User)session.getAttribute("login");
	UserRepasitory.deleteUser(user.getAccount());
	session.invalidate();
	response.sendRedirect("login_form.jsp");



%>	