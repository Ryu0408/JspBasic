<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//클라리언트에 저장된 쿠키를 가져오는 방법.
	Cookie[] cookies = request.getCookies();
	
	boolean flag = false;
	for(Cookie c : cookies){
		String cookiename = c.getName();
		if(cookiename.equals("apple_cookie")){
			out.print("<h3>사과쿠기가 존재합니다.</h3>");
			String value = c.getValue(); // 쿠기의 값을 읽어오는 메서드
			out.print("쿠키의 값 : " + value);
			flag = true;
			break;
		}
	}
	if(!flag){
		out.print("<h3>사과쿠기가 사라졌습니다.</h3>");
	}







%>
<a href="cookie_check_all.jsp">모든 쿠기보기.</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>