<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list_detail.css">
</head>
<script>

</script>
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
					<li class="active"><a
						href="javascript:location.href='list.op';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">의견
							및 질문</a></li>
					<li class=""><a href="javascript:location.href='list.ev';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">행사
							및 정보</a></li>
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
					<table>
						<tr>
							<th class="w-px100">제목</th>
							<td colspan="5" class="left">${vo.title}</td>
							<th>작성자</th>
							<td>${vo.name}</td>
							<th class="w-px100">작성일자</th>
							<td>${vo.writedate}</td>
							<th class="w-px80">조회수</th>
							<td>${vo.readcnt}</td>
						</tr>
						<tr>
							<td colspan="12" class="left vall vall_con">${fn:replace(vo.content, crlf, '<br/>')}</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="11" class="left vall">${vo.filename}<c:if
									test="${!empty vo.filename }">
									<a href='download.op?id=${vo.id}' style="margin-left: 15px;"><i
										class="far fa-save"></i></a>
								</c:if>
							</td>
						</tr>
					</table>

					<div class="btnSet">
						<a class="btn-fill"
							href='list.op?curPage=${page.curPage}&search=${page.search}&keyword=${page.keyword}'>목록으로</a>
						<c:if test="${login_info.admin eq 'y' }">
							<a class="btn-fill" href='modify.op?id=${vo.id}'>수정</a>
							<a class="btn-fill"
								onclick="if(confirm('정말삭제??')) {href='delete${vo.step>0?'Repl':''}.op?root=${vo.root}&id=${vo.id}'} ">삭제</a>
						</c:if>
						<!--  로그인이된경우 답글쓰기가능-->
						<c:if test="${!empty login_info }">
							<a class="btn-fill" href="reply.op?id=${vo.id}">답글쓰기</a>
						</c:if>
					</div>
				</div>
			</section>
		</div>
	</div>

</body>
</html>