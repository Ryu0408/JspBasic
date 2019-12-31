<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String album = request.getParameter("title");

	if(album.equals("iu")){
		response.sendRedirect("/JspBasic/jspObjResponse/iu.jsp");
	}else if(album.equals("wondergirls")){
		response.sendRedirect("/JspBasic/jspObjResponse/wondergirls.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	<% if(album.equals("iu")){%>
	<div align = "center">
		<h2>선택하신 앨범 정보</h2>
		<p>
			당신이 선택하신 앨범은 아이유 입니다.
		</p>
		<hr>
		<h3>타이틀 곡 뮤직비디오</h3>
		<iframe width="957" height="538" src="https://www.youtube.com/embed/D1PvIWdJ8xo?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	
	<%}else if(album.equals("wondergirls")){ %>
	<div align = "center">
		<h2>선택하신 앨범 정보</h2>
		<p>
			당신이 선택하신 앨범은 원더걸스 입니다.
		</p>
		<hr>
		<h3>타이틀 곡 뮤직비디오</h3>	
		<iframe width="957" height="538" src="https://www.youtube.com/embed/PYGODWJgR-c?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>	

	<%} %>
 --%>
</body>
</html>