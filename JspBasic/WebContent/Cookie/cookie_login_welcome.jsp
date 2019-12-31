<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie [] cookies = request.getCookies();
	String userId = "";
	for(Cookie c : cookies){
		//if(c.getName().equals("id_cookie")){
			//userId = c.getValue();
			//break;
		//}
		if(c.getName().equals("remember_id")){
			userId = c.getValue();
		}
	}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(userId != null){%>
		<p>
			<%= userId %>님 환영합니다!
			<a href="Cookie_login.jsp">로그인 화면으로 돌아가기</a>
		</p>
	<%}else{ %>
		<p>
			시간이 지나 자동 로그아웃 처리 되었습니다.
			<a href = "Cookie_login.jsp">다시 로그인하기</a>
		</p>
	<%} %>
</body>
</html>