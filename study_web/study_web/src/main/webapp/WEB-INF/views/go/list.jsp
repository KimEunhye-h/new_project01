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
table {
	table-layout: fixed;
	margin-bottom: -1px;
}

table td {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.grid li div span {
	float: right;
}
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
					<h2>Community</h2>
				</div>
				<ul class="sAsideMul">
					<li class=""><a href="javascript:location.href='list.sc';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">초/중/고</a></li>
					<li class=""><a href="javascript:location.href='list.un';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">대학/편입</a></li>
					<li class="active"><a href="javascript:location.href='list.go';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">고시</a></li>
					<li class=""><a href="javascript:location.href='list.job';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">취준생</a></li>
					<li class=""><a href="javascript:location.href='list.emp';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">직장인</a></li>
					<li class=""><a href="javascript:location.href='list.etc';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">기타</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>고시</h2>
					<form id="list" action="list.go" method="post">
						<input type="hidden" name="curPage" value="1"> <input
							type="hidden" name="id" />
						<div id="list-top">
							<fieldset class="searchmenu">
								<ul>
									<li><select name="search" class="w-px80">
											<option ${page.search eq 'all' ? 'selected' : '' }
												value="all">전체</option>
											<option ${page.search eq 'title' ? 'selected' : '' }
												value="title">제목</option>
											<option ${page.search eq 'content' ? 'selected' : '' }
												value="content">내용</option>
											<option ${page.search eq 'writer' ? 'selected' : '' }
												value="writer">작성자</option>
									</select></li>
									<li><input type="text" name="keyword"
										value="${page.keyword}" class="w-px300"></li>
									<li><a class="btn-fill"
										onclick="$('[name=curPage]').val(1); $('form').submit()"><i class="fas fa-search"></i></a></li>
								</ul>
								<ul class="searchbtn">
									<li><select name="pageList" class="w-px80"
										onchange="$('form').submit()">
											<option ${page.pageList eq 10 ? 'selected' : '' } value="10">10개씩</option>
											<option ${page.pageList eq 20 ? 'selected' : '' } value="20">20개씩</option>
											<option ${page.pageList eq 30 ? 'selected' : '' } value="30">30개씩</option>
									</select></li>
									<c:if test="${!empty login_info}">
										<!-- 로그인되어 있으면 글쓰기 가능 -->
										<li><a class="btn-fill" href="new.go">글쓰기</a></li>
									</c:if>
								</ul>
							</fieldset>
						</div>
					</form>
					<div id="data-list">
						<c:if test="${page.viewType eq 'list' }">
							<table>



								<c:forEach items="${page.list}" var="vo">

									<tr>
										<div id='top3'></div>
										<td class="w-px60">${vo.no}</td>
										<c:if test="${vo.commentcnt eq '0' }">
										<td class="left"><a onclick="go_detail(${vo.id})">${vo.title}</a></td>
										</c:if>
										<c:if test="${vo.commentcnt ne '0' }">
										<td class="left"><a onclick="go_detail(${vo.id})">${vo.title} [${vo.commentcnt}]</a></td>
										</c:if>
										<td class="w-px100">${vo.writer}</td>
										<td class="w-px120">${vo.writedate}</td>
										<td class="w-px60"><c:if test="${!empty vo.filename}">
												<img alt="" src="img/attach.png" class="file-img">
											</c:if></td>
									</tr>
								</c:forEach>
							</table>
						</c:if>

					</div>
				</div>
			</section>
		</div>
	</div>



	<div class="btnSet">
		<jsp:include page="/WEB-INF/views/include/page.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
function go_detail(id){
	$('[name=id]').val(id);
	$('form').attr('action','detail.go');	
	$('form').submit();
}
$(function(){
	$('#data-list ul').css('height',
		(($('.grid li').length%5>0 ? 1:0) + Math.floor($('.grid li').length/5))
		 * $('.grid li').outerHeight(true)-20);
});

$.ajax({
	url: 'go/top3',
	success: function(data){
		$('#top3').html(data);
	}
});

</script>
</body>
</html>