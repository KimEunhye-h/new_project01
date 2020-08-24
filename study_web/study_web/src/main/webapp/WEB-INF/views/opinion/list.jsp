<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list.css">

<style type="text/css">
.left {width:70px; padding:0 5px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
</style>
</head>
<body>
	<div class="subContainer" id="contents">
		<div class="inner1220">
			<!-- 서브 왼쪽 메뉴부분 -->
			<aside class="sAsideMenu">
				<div class="top">
					<!-- <h5></h5> -->
					<!-- 영문메뉴명 -->
					<img src="img/sub_logo.png">
					<h2>News</h2>
				</div>
				<ul class="sAsideMul">
					<li class=""><a href="javascript:location.href='list.no';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">공지사항</a></li>
					<li class="active"><a href="javascript:location.href='list.op';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">의견 및 질문</a></li>
					<li class=""><a href="javascript:location.href='list.ev';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">행사 및 정보</a></li>
					<li class=""><a href="javascript:location.href='list.pr';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">보도자료</a></li>	
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>의견 및 질문</h2>
					<form method="post" action='list.op' id="list">
						<input type="hidden" name="curPage" value="1">
						<div id='list-top'>
							<fieldset class="searchmenu">
								<ul>
									<li><select name="search" class="w-px80">
											<option value="all" ${page.search eq 'all' ? 'selected' : ''}>전체</option>
											<option value="title"
												${page.search eq 'title' ? 'selected' : ''}>제목</option>
											<option value="content"
												${page.search eq 'content' ? 'selected' : ''}>내용</option>
											<option value="writer"
												${page.search eq 'writer' ? 'selected' : ''}>작성자</option>
									</select></li>
									<li><input value="${page.keyword }" type="text"
										name="keyword" class="w-px300" /></li>
									<li><a class="btn-fill" onclick="$('form').submit()"><i class="fas fa-search"></i></a></li>

								</ul>

								<ul>
									<c:if test="${! empty login_info}">
										<li><a class="btn-fill" href='new.op'>글쓰기</a></li>
									</c:if>
								</ul>
							</fieldset>
						</div>
					</form>

					<table>
						<tr>
							<th class="w-px60">번호</th>
							<th>제목</th>
							<th class="w-px100">작성자</th>
							<th class="w-px120">작성일자</th>
							<th class="w-px80">첨부파일</th>
						</tr>
						<c:forEach items="${page.list }" var="vo">
							<tr>
								<td>${vo.no}</td>
								<td class="left"><c:forEach var="i" begin="1"
										end="${vo.indent}">${i eq vo.indent ? "<img src='img/arrow.png'/>" : '&nbsp;&nbsp;'}
								</c:forEach> <a title="${vo.content}"
									href='detail.op?id=${vo.id}&curPage=${page.curPage}'>${vo.title }</a></td>
								<td >${vo.name }</td>
								<td>${vo.writedate}</td>
								<td><c:if test="${!empty vo.filename}">
										<a href="download.op?id=${vo.id}"> <img
											title="${vo.filename }" class="file-img" src="img/attach.png" />
										</a>
									</c:if></td>

							</tr>
						</c:forEach>

					</table>
					<div class="btnSet">
						<jsp:include page="/WEB-INF/views/include/page.jsp"></jsp:include>
					</div>
				</div>
			</section>
		</div>
	</div>

</body>
</html>