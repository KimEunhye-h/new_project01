<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="press.PressVO" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<input type="hidden" name="curPage" value="1">


<c:forEach items="${page.list }" var="vo">
<ul>
	<li style="border: 1px solid #D5D5D5;"><c:if test="${!empty vo.gdsImg}">
		<a href="download.pr?id=${vo.id}">
			<img title="${vo.filename }" src="${vo.gdsThumbImg}" class="thumbImg"/>
		</a>
	</c:if></li>
	
	<li class="left" style="border: 1px solid #D5D5D5;">
		<a title="${vo.content}" href='curPage=1'>${vo.title }</a>${vo.writedate }
	</li>
</ul>
</c:forEach>



		<jsp:include page="/WEB-INF/views/include/page.jsp"></jsp:include>
</body>
</html>