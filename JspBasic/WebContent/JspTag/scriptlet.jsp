<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% for(int i=0; i<5; i++){%>
	<h2>이클립스에서 jsp파일 작성하기!</h2>
	<p>
		안녕하세요. 오늘은 2019년 12월 23일입니다.<br>
		지금은 스크립틀릿 연습중이에요.
	</p>
	<%}%>
	
	<h2>구구단 2단</h2>
	<%for(int hang=1; hang<=9; hang++) {
		//out.print메서드는 브라우저에 바로 출력을 실행하는 메서드입니다.
		out.print("2 X" + hang + "=" + (2*hang) +"<br>");
	}
	%>
	
	<!-- 반복문, 조건문을 이용하여 구구단을 짝수단(2, 4, 6, 8)만 출력해보세요.-->
	<%for(int i = 2 ; i < 10 ; i++){
		if(i%2==0){
			out.print("<h2>"+i+"단"+"</h2><br>");
			for(int j = 1; j<10; j++){
				out.print(i + "X" + j + "=" + (i*j) +"<br>");
			}
		}
	}
	%>
	
</body>
</html>