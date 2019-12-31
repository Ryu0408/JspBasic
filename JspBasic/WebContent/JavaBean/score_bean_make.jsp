<%@page import="kr.co.stephen.score.ScoreBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	액션태그를 사용하여 ScoreBean의 객체를 request범위로 생성하시고
	setProperty를 사용하여 객체 내부 데이터에 파라미터 데이터를 셋팅한뒤
	파라미터 데이터 3개와 총점, 평균을 구하며 5개를 모두 객체에 담아서
	score_bean_use.jsp로 전송(forward)하세요.
	
	- 총점(total), 평균(avg)의 변수를 선언하셔서 각각 총점과 평균을 구한뒤
	setProperty를 사용해서 추가해 주시면 됩니다.

 --%>
<jsp:useBean id="score" class="kr.co.stephen.score.ScoreBean" scope="request"></jsp:useBean>
<jsp:setProperty name = "score" property="*"/>
<%
	int total = score.getKor()+score.getEng()+score.getMath();
	double average = (double)total / 3;
%>
<jsp:setProperty name = "score" property="total" value = "<%=total %>"/>
<jsp:setProperty name = "score" property="average" value = "<%=average %>"/>
<jsp:forward page="score_bean_use.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>