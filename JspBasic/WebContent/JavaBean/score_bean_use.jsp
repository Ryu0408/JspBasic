<%@page import="kr.co.stephen.score.ScoreBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	score_bean_make에서 전송된 ScoreBean 객체를 활용하여
	5가지 데이터를 브라우저에 출력하세요.
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
<%
	ScoreBean score2 = (ScoreBean)request.getAttribute("score");	
%>
<%--변수로 사용하고 싶을 경우에는!!! 아래와 같이 사용
	# 국어 : <%= score2.getKor() %>
	# 영어 : <%= score2.getEng() %>
	# 수학 : <%= score2.getMath() %>
	# 총점 : <%= score2.getTotal() %>
	# 평균 : <%= score2.getAverage() %>
 --%>
 	<jsp:useBean id="score" class="kr.co.stephen.score.ScoreBean" scope="request"/>
	# 국어 : <jsp:getProperty name="score" property="kor"/><br>
	# 영어 : <jsp:getProperty name="score" property="eng"/><br>
	# 수학 : <jsp:getProperty name="score" property="math"/><br>
	# 총점 : <jsp:getProperty name="score" property="total"/><br>
	# 평균 : <jsp:getProperty name="score" property="average"/>
 
 
</body>
</html>