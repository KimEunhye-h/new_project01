<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table td{word-break:break-all;}
#popup{
	width: 350px; height: 350px;
	position: absolute; left: 50%; top: 50%; 
	transform:translate(-50%,-50%);
	/* border: 3px solid gray; border-radius:50%; */ 
	z-index: 9999999; display: none;
}
#popup-background{
	position: absolute; left: 0; top: 0;
	width: 100%; height: 100%;
	background-color: #000;
	opacity: 0.3; display: none;
	
}
.popup{width: 100%; height:100%; }
#comment_regist span{width: 50%; float: left;}
</style>
</head>
<body>
<h3>글 상세</h3>
<table>
<tr>
	<th class="w-px160">제목</th>
	<td class="left" colspan="5">${vo.title }</td>	
</tr>
<tr>
	<th>작성자</th>
	<td>${vo.writer}</td>
	<th class="w-px100">작성일자</th>
	<td>${vo.writedate}</td>
</tr>
<tr>
	<th>내용</th>
	<td colspan="5" class="left">${fn:replace(vo.content, crlf, '</br>') }</td>
</tr>
</table>
<div class="btnSet">
<a class="btn-fill" onclick="go_list()">목록으로</a>
<a class="btn-fill" onclick="if(confirm('정말 삭제하시겠습니까?')){ $('form').attr('action','delete.my'); $('form').submit() }">삭제</a>
</div>
<form action="list.my" method="post">
<input type="hidden" name="title" value="${vo.title }">
<input type="hidden" name="curPage" value="${page.curPage }">
<input type="hidden" name="search" value="${page.search }">
<input type="hidden" name="keyword" value="${page.keyword }">
<input type="hidden" name="viewType" value="${page.viewType }">
<input type="hidden" name="pageList" value="${page.pageList }">
<input type="hidden" id="receive" value="0">
</form>
<script type="text/javascript">

function go_list(){
	$('form').submit();
}
</script>
</body>
</html>