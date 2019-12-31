<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! 
	//Diclaration(선언자)
	//jsp파일에서 사용할 맴버변수나 메서드 등을 선언할 때 사용하는 구역입니다.
	
	public int total;
	int randomNumber(){
		Random r = new Random();
		return r.nextInt(10) + 1;
	}
	
	String randomColor(){
		/*
		- Math.random()는 0.0이상 1.0미만의 실수 난수를 발생시켜 리턴합니다.
		   난수값이 0.66 이상이면 "빨강", 0.33이상이면 "노랑"을
		   그 이외에는 "파랑"을 리턴하는 메서드를 작성하세요.
		*/
		double randomColor = Math.random();
		String color;
		if(randomColor>=0.66){
			color = "빨강";
			return color;
		}else if(randomColor>=0.33){
			color = "노랑";
			return color;
		}else{
			color = "파랑";
			return color;
		}
	}
%>

<%
	//Scriplet(스크립트릿)
	//지역변수 및 메서드 내부의 코드를 작성하는 태그
	// 페이지 요청이 발생할 때마다 실행할 로직을 작성
	int each = 0;
	total++;;
	each++;
	int rm = randomNumber();
	String rc = randomColor();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 오늘의 운세</h2>
	<!--  p 태그는 문단을 나눌 떄 사용하는 태그입니다. -->
	<p>
		페이지 누적 요청수 : <%= total %>
		
		페이지 개별 요청수 : <%= each %>
	</p>
	
	<h3>오늘의 행운싀 숫자와 행운의 컬러</h3>
	<p>
		행운싀 숫자 : <strong><%= rm %></strong><br>
		행운의 색깔 : <%= rc %>
</body>
</html>