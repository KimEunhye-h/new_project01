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
.txt_post {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 3; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 3.6em;
	/* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
}
</style>

</head>
<body>
	<div class="subContainer" id="contents">
		<div class="inner1220">
			<!-- 서브 왼쪽 메뉴부분 -->
			<aside class="sAsideMenu">
				<div class="top">
				<img src="img/sub_logo.png">
					<!-- <h5></h5> -->
					<!-- 영문메뉴명 -->
					<h2>News</h2>
				</div>
				<ul class="sAsideMul">
					<li class=""><a href="javascript:location.href='list.no';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">공지사항</a></li>
					<li class=""><a href="javascript:location.href='list.op';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">의견 및 질문</a></li>
					<li class=""><a href="javascript:location.href='list.ev';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">행사 및 정보</a></li>
					<li class="active"><a href="javascript:location.href='list.pr';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">보도자료</a></li>	
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>보도자료</h2>
					<form method="post" action='list.pr' id="list">
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
									<c:if test="${login_info.admin eq 'y' }">
										<li><a class="btn-fill" href='new.pr'>글쓰기</a></li>
									</c:if>
								</ul>
							</fieldset>
						</div>
					</form>

					<table>
						<p class="event_list">각종 보도자료</p>
						<c:forEach items="${page.list }" var="vo">
							<ul class="img_ul">
								<li>
								<div class="img_title" style="width:70px; padding:0 5px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;"><c:if
										test="${!empty vo.gdsImg}">
										<a href="download.pr?id=${vo.id}"> <img
											title="${vo.filename }" src="${vo.gdsThumbImg}"
											class="thumbImg" />
										</a>
									</c:if></div>

								<div class="left img_con"><a
									style="font-size: x-large; font-weight: bold;"
									title="${vo.content}"
									href='detail.pr?id=${vo.id}&curPage=${page.curPage}'>${vo.title }</a><br>
									${vo.writedate }<br>
								<br>
									<p class="txt_post">${vo.content }</p></div>
								</li>	
							</ul>
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