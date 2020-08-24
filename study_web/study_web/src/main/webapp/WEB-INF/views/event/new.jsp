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
					<h3></h3>
					<!-- 파일첨부시 form 반드시 갖고 있어야 할 속성 
						1. 반드시 methid는 post이여야만 한다
						2. enctype을 지정한다: enctype=multipart/form-data
						-->
					<form action="insert.ev" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<th class="w-px100">제목</th>
								<td><input class="need need_title" type="text" name='title' placeholder="제목을 입력해주세요."/></td>
								<th class="w-px80">작성자</th>
								<td class="w-px120">${login_info.name}</td>
							</tr>
							<tr>
								<th colspan="1">내용</th>
								<td colspan="3"><textarea class="need need_content" name='content' style="height: 341px" placeholder="내용을 입력해주세요."></textarea></td>
							</tr>
						</table>

						<div class="inputArea">
							<label for="gdsImg">썸네일 및 내용 이미지 선택</label> <input type="file" id="gdsImg"
								name="file" />
							<div class="select_img">
								<img src="" />
							</div>

							<script>
								$("#gdsImg")
										.change(
												function() {
													if (this.files
															&& this.files[0]) {
														var reader = new FileReader;
														reader.onload = function(
																data) {
															$(".select_img img")
																	.attr(
																			"src",
																			data.target.result)
																	.width(500);
														}
														reader
																.readAsDataURL(this.files[0]);
													}
												});
							</script>
							<%=request.getRealPath("/")%>
						</div>

					</form>
					<div class="btnSet">
						<a class="btn-fill" onclick="if( necessary()) $('form').submit()">저장</a>
						<a class="btn-empty" href='list.ev'>취소</a>
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