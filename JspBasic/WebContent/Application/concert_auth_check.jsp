<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
/*
	- 사용자가 입력한 인증 코드와 랜덤으로 생성된(UUID객체로 생성한) 인증 코드를 서로 비교하여 코드가 일치한다면 세션을 하나 생성 후 "convert_reserve.jsp"로 이동시켜주세요.
	- 세션이름은 "auth_pass" 값은 논리상수 true를 넣어주세요
	
	- 코드가 일치하지 않는다면 "인증코드가 일치하지 않습니다. 다시 입력해 주세요"라는 경고창 출력 후 뒤로가기를 실행해주세요.
*/ 	
	request.setCharacterEncoding("utf-8");
	System.out.println("========================");
	
	
	String uuid = (String)session.getAttribute("auth_code");
	System.out.println(uuid);
	
	
	//사용자가 입력한 인증먼호
	String code = request.getParameter("code");
	System.out.println(code);
	
	
	if(code.equals(uuid)){
		response.sendRedirect("convert_reserve.jsp");
	}else{%>
		<script>
		alert("인증코드가 일치하지 않습니다. 다시 입력해 주세요");
		location.href="concert_auth.jsp";
		<!-- history.back();-->
		</script>
	<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>