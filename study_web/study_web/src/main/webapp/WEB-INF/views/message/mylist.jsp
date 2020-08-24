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
					<h2>내 정보</h2>
				</div>
				<ul class="sAsideMul">
					<li class=""><a href="javascript:location.href='mypage_list.ed';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">회원정보수정</a></li>
					<li class="active"><a
						href="javascript:location.href='list.my';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">내가
							쓴 글</a></li>
					<li class=""><a href="javascript:location.href='list.me';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">쪽지함</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>내가 쓴 글</h2>
					<form id="list" action="list.my" method="post">
						<input type="hidden" name="curPage" value="1"> <input
							type="hidden" name="id" value="${vo.id}" /> <input type="hidden"
							name="category" value="${vo.category}" />

					</form>
					<div id="data-list">
						<table>
							<tr>
								<th class="w-px180" style="width: 215px; ">카테고리</th>
								<th style="text-align: left; padding-left: 22px;">제목</th>
								<th class="w-px100">작성자</th>
								<th class="w-px140">작성날짜</th>
							</tr>
							<c:forEach items="${page.list}" var="vo">
								<tr>
									<c:if test="${vo.category eq 'sc'}">
										<td class="w-px120">메인 > 커뮤니티 > 초&중&고</td>
									</c:if>
									<c:if test="${vo.category eq 'un'}">
										<td class="w-px120">메인 > 커뮤니티 > 대학&편입</td>
									</c:if>
									<c:if test="${vo.category eq 'go'}">
										<td class="w-px120">메인 > 커뮤니티 > 고시</td>
									</c:if>
									<c:if test="${vo.category eq 'job'}">
										<td class="w-px120">메인 > 커뮤니티 > 취준생</td>
									</c:if>
									<c:if test="${vo.category eq 'emp'}">
										<td class="w-px120">메인 > 커뮤니티 > 직장인</td>
									</c:if>
									<c:if test="${vo.category eq 'etc'}">
										<td class="w-px120">메인 > 커뮤니티 > 기타</td>
									</c:if>
									<c:if test="${vo.commentcnt eq '0' }">
										<td class="left"><a href="detail.my?category=${vo.category }&id=${vo.id}">${vo.title}</a></td>
									</c:if>
									<c:if test="${vo.commentcnt ne '0' }">
										<td class="left"><a href="detail.my?category=${vo.category }&id=${vo.id}">${vo.title}[${vo.commentcnt}]</a></td>
									</c:if>
										
										
										
									<td class="w-px60">${vo.writer}</td>
									<td class="w-px100">${vo.writedate}</td>

									<!-- </tr> -->
							</c:forEach>
						</table>

					</div>

					<div class="btnSet">
						<jsp:include page="/WEB-INF/views/include/page.jsp"></jsp:include>
					</div>
				</div>
			</section>
		</div>
	</div>

	<script type="text/javascript">
		function go_detail(title) {
			$('[name=id]').val(id);
			$('[name=category]').val(category);
			$('form').attr('action', 'detail.my');
			$('form').submit();
		}
	</script>
</body>
</html>