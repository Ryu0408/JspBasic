<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
/*
문제1)
-생성된 id_cookie쿠키를 검색하여 쿠기가 이미 존재한다면
로그인 창 대신에 브라우저에 "이미 로그인한 사용자입니다." 를 출력후
welcome페이지로 이동할 수 있는 링크를 제공하세요.

- id_cookie가 없는 사용자는 로그인 입력창이 동작하도록 구성하세요.
*/

	//post형식 인코딩(한글처리)
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String check = request.getParameter("id_remember");

	
	if(id.equals("abc1234") && pw.equals("aaaa1111")){
		Cookie idCookie = new Cookie("id_cookie", id);
		idCookie.setMaxAge(5);
		response.addCookie(idCookie);
		
		if(check != null){
			Cookie idMemory = new Cookie("remember_id", id);
			idMemory.setMaxAge(15);
			response.addCookie(idMemory);
		}
		response.sendRedirect("cookie_login_welcome.jsp");
	}else{
		response.sendRedirect("Cookie_login.jsp");
	}


	
%>