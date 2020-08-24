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
<meta property="og:url"           content="http://121.179.5.11:8181/study/detail.ev?id=${vo.id}&curPage=${page.curPage}" />
<meta property="og:type"          content="website" />
<meta property="og:title"         content="${vo.title}" />
<meta property="og:description"   content="${fn:replace(vo.content, crlf, '<br/>')}" />
<meta property="og:image"         content="http://121.179.5.11:8181/study/img/human.png" />
<script>
$(function(d, s, id) {
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) return;
   js = d.createElement(s); js.id = id;
   js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
   fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));

</script>
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
					<li class="active"><a href="javascript:location.href='list.ev';"
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
					<h2>행사 및 전시</h2>
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
							<td colspan="12"  style="padding-bottom: 30px;"><img src="${vo.gdsThumbImg}"
								class="thumbImg" /><br /> ${fn:replace(vo.content, crlf, '<br/>')}</td>
						</tr>		

					</table>
					<div class="btnSet">
						<a class="btn-fill"
							href='list.ev?curPage=${page.curPage}&search=${page.search}&keyword=${page.keyword}'>목록으로</a>
						<c:if test="${login_info.admin eq 'y' }">
							<a class="btn-fill" href='modify.ev?id=${vo.id}'>수정</a>
							<a class="btn-fill"
								onclick="if(confirm('정말삭제??')) {href='delete.ev?id=${vo.id}'} ">삭제</a>
						</c:if>
						<div id="fb-root"></div>
						<!-- share -->
						<div class="fb-share-button" 
							data-href="http://121.179.5.11:8181/study/detail.ev?id=${vo.id}&curPage=${page.curPage}" 
							data-layout="button_count">
						</div>

					</div>
				</div>
			</section>
		</div>
	</div>

</body>
</html>