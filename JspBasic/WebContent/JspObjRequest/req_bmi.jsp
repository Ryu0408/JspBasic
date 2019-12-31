<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	bmi지수 계산 공식 = [체중(kg) / 신장(m) * 신장(m) 
	- bmin 지수가 23을 초과한다면 "당신은 과체중입니다."를 출력하세요
	- 18.5미만이라면 "당신은 저체중입니다,"를 출력하세요
	- 나머지는 "당신은 정상체중입니다."를 출력하세요
	
	* 문자열 내부에 들어있는 데이터를 기본 데이터 타입으로 변환하는 방법
	포장클래스에 들어있는 parse + 기본타입이름() 메서드를 활용.
	
	request.getParameter()리턴 타입이 String이기 떄문에
	bmi지수를 계산하려면 실수나 정수로 변환을 해줘야 합니다.
	Integer.pareInt(변환하고 싶은 문자열), Double.parseDouble()
	
	--%>
<% 
	String cm = request.getParameter("cm");
	String kg = request.getParameter("kg");
	double cm1 = Double.parseDouble(cm);
	double kg1 = Double.parseDouble(kg);
	double bmi = kg1 / (cm1/100 * cm1/100);
	bmi = Math.round(bmi*100)/100.0;
%>
		
	<h2>체질량 지수(BMI) 계산</h2>
	<hr>
	
	<p>
	- 신장 : <%= cm1 %> cm<br>	
	- 체중 : <%= kg1 %> kg<br><br>
	</p>
	
	<p>
	BMI 지수 : <b><%= bmi %></b><br>
	<%
	if(bmi>23) out.println("당신은 과체중입니다.<br>");
	else if(bmi<18.5) out.println("당신은 저체중입니다.<br>");
	else out.println("당신은 정상체중입니다.<br>");
	%>
	</p>
	


</body>
</html>