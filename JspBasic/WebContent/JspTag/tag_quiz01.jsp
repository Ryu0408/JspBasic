<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		List<Integer> list = new ArrayList<>();	
		int random = 0;
		for(int i = 0;i<6;i++){
			random = (int)((Math.random()*45)+1);
			if(!list.contains(random)){
				list.add(random);
			}else{
				i--;
			}
			Collections.sort(list);
		}
	%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>로또 번호 생성 결과</h1>
	<p>
		이번주 로또 번호는 이번호다!!!<br>
		<% 
			for(int num : list){
				out.println(num + "&nbsp;"); 
			}
		%>
	</p>
</body>
</html>