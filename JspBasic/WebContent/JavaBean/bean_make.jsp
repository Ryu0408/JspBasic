<%@page import="kr.co.stephen.user.UserBean"%>
<%-- import해야함!!!!--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	/*주석!! 쓸필요 없음 자세한 내용 아래참고
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	*/
%>

<jsp:useBean id ="user" class = "kr.co.stephen.user.UserBean" scope="request"/> <%--scope안에 세션도 된다! --%>

<%--
	* userBean태그로 객체의 이름과 경로, 범위를 지정해 주시고
	setter 역할을 하는 setProperty 속성과
	getter 역할을 하는 getProperty 속성을 이용하여
	객체에 데이터를 저장하고, 참조합니다.
	- 파라미터의 이름과  자바빈 클래스의 맴버변수명이 일치할 경우
	액션태그 setProperty의 속성 property의 값을 *로 지정하면 
	자동으로 파라미터값을 읽어서 자바빈 클래스 변수에 저장합니다.	(getParamater)쓸 필요가 없음
--%>	
<jsp:setProperty name ="user" property ="*"/>
 <%-- 취향이다! 근데 난 이걸 많이써야지~
	  즉 이거는 seetter역할을 하는거구나!! --%>
<jsp:forward page="bean_use.jsp"/>
<%--
<<jsp:setProperty property="id" name="user" value="<%= id %>"/>
<<jsp:setProperty property="id" name="pw" value="<%= pw %>"/>
<<jsp:setProperty property="id" name="name" value="<%= name %>"/>
<<jsp:setProperty property="id" name="email" value="<%= email %>"/>
 --%>
 
<%
	//UserBean user = new UserBean(id, pw, name, email);
	//user.setId(id);
	//user.setPw(pw); 초기화 진행
%>
</body>
</html>