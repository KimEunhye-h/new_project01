<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form method="post" action="${url}">
<input type="text" name="pid" value="${pid}">
<input type="text" name="curPage" value="${page.curPage}">
<input type="text" name="pageList" value="${page.pageList}">
</form>
<script>
$('form').submit();
</script>