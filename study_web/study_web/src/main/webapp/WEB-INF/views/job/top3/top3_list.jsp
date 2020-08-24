<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <div>
<table>

<tr>
	<th class="w-px60">번호</th>
	<th>제목</th>
	<th class="w-px100">작성자</th>
	<th class="w-px120">작성일자</th>
	<th class="w-px60">첨부파일</th>
</tr>
<c:forEach items="${list }" var="vo" >
<tr>
	<td><a><i style="color: red;" class="fas fa-bell"></i></a></td>
	<c:if test="${vo.commentcnt eq '0' }">
	<td class="left"><a onclick="go_detail(${vo.id})">${vo.title}</a></td>
	</c:if>
	<c:if test="${vo.commentcnt ne '0' }">
	<td class="left"><a onclick="go_detail(${vo.id})">${vo.title} [${vo.commentcnt}]</a></td>
	</c:if>
	<td>관리자</td>
	<td>${vo.writedate}</td>
	<td>		
	<c:if test="${!empty vo.filename}">
	<img alt="" src="img/attach.png" class="file-img">
		</c:if></td>
</tr>
</c:forEach>
</table>
</div>