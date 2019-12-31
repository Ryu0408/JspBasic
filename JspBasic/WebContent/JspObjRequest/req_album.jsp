<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = center>
		<%--<form action="req_album_result.jsp">--%>
		<table border="1" width = "700" >
			<!-- table태그의 자식태그 tr은 표의 행을 나타냅니다.-->
			
			<tr align = "">
			<!-- tr의 자식태그 td는 한 행에 들어갈 열을 나타냅니다. -->
				<%--<td></td>--%>
				<td>앨범 커버</td>
				<td>가수</td>
				<td>앨범 제목</td>
				<td>발매일</td>
			</tr>
			
			<tr align = "center">
				<%-- <td><input type = "radio"/ name = "title" value="iu"></td> --%>
				<td><a href="https://namu.wiki/w/%EC%95%84%EC%9D%B4%EC%9C%A0">
					<image src = "iu.jpg" width = "80px" height = "80px"/></a></td>
				<td>아이유</td>
				<td><a href="req_album_result.jsp?title=iu">아이유 뮤직비디오</a></td>
				<td>2019-04-01</td>
			</tr>
			
			<tr align = "center">
				<%--<td><input type = "radio"/ name = "title" value="wondergirls"></td>--%>
				<td><a href="https://namu.wiki/w/%EC%9B%90%EB%8D%94%EA%B1%B8%EC%8A%A4">
					<image src = "wondergirls.jpg" width = "80px" height = "80px"/></a></td>
				<td>원더걸스</td>
				<td><a href="req_album_result.jsp?title=wondergirls">원더걸스 뮤직비디오</a></td>
				<td>2018-04-09</td>
			</tr>
			
			<%--<tr align = "center">
				<td colspan = "5" align = "center"><input type="submit" value="확인" /></td>
			</tr> --%>
		</table>
		<%--</form> --%>
	</div>
</body>
</html>