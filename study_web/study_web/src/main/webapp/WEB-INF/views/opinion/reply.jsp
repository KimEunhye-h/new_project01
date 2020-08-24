<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list_detail.css">
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
					<h2>의견 및 질문 답글</h2>
					<form action="reply_insert_op" method="post"
						enctype="multipart/form-data">
						<input type="hidden" name='root' value="${vo.root }"> <input
							type="hidden" name='step' value="${vo.step }"> <input
							type="hidden" name='indent' value="${vo.indent }">
						<table>
							<tr>
								<th class="w-px100">제목</th>
								<td><input class="need need_title" type="text" name='title' placeholder="제목을 입력해주세요." /></td>
								<th class="w-px80">작성자</th>
								<td class="w-px100">${login_info.name}</td>
							</tr>

							<tr>
								<th colspan="1">내용</th>
								<td colspan="3"><textarea class="need need_content" name='content' placeholder="내용을 입력해주세요."></textarea></td>
							</tr>

							<tr>
								<th colspan="1">첨부파일</th>
								<td colspan="3" class="left"><label> <input type="file"
										name='file' id='attach-file' /> <img src="img/select.png"
										class="file-img" />
								</label> <span id='file-name'></span> <span id='delete-file'
									style="color: red"><i class="fas fa-times font-img"></i></span>
								</td>
							</tr>

						</table>
					</form>
					<div class="btnSet">
						<a class="btn-fill" onclick="if( necessary()) $('form').submit()">저장</a>
						<a class="btn-empty" href='list.op'>취소</a>
					</div>
				</div>
			</section>
		</div>
	</div>

	<script type="text/javascript"
		src="js/need_check.js?v=<%=new java.util.Date().getTime()%>"></script>
	<script type="text/javascript" src="js/file_attach.js"></script>
</body>
</html>