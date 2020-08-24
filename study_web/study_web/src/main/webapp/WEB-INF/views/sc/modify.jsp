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
					<h2>Community</h2>
				</div>
				<ul class="sAsideMul">
					<li class="active"><a href="javascript:location.href='list.sc';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">초/중/고</a></li>
					<li class=""><a href="javascript:location.href='list.un';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">대학/편입</a></li>
					<li class=""><a href="javascript:location.href='list.go';"
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
					<h2>초/중/고</h2>
					<form action="update.sc" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<th class="w-px100">제목</th>
								<td><input type="text" name="title"  class="need need_title" placeholder="제목을 입력해주세요." title="제목" value="${vo.title }">
								<th class="w-px80">작성자</th>
								<td class="w-px120">${vo.name}</td>
							</tr>
							<tr>
								<th colspan="1">내용</th>
								<td colspan="3"><textarea name="content" class="need need_content" style="height: 341px" placeholder="내용을 입력해주세요." title="내용">${vo.content}</textarea></td>
							</tr>
							<tr>
								<th colspan="1">첨부파일</th>
								<td class="left" colspan="3"><label> <input type="file"
										name="file" id="attach-file"> <img alt=""
										src="img/select.png" class="file-img">
								</label> <span id="file-name">${vo.filename}</span> <span
									id="delete-file" style="color: red;"><i
										class="fas fa-times fomt-img"></i></span></td>
							</tr>
						</table>
						<input type="hidden" name="attach" /> <input type="hidden"
							name="id" value="${vo.id }" />
					</form>
					<div class="btnSet">
						<a class="btn-fill"
							onclick="if(necessary()){ $('[name=attach]').val($('#file-name').text()); $('form').submit()}">저장</a>
						<a class="btn-empty" href="javascript:history.go(-1)">취소</a>
					</div>
				</div>
			</section>
		</div>
	</div>

	<script type="text/javascript" src="js/file_attach.js"></script>
	<script type="text/javascript" src="js/need_check.js"></script>
	<script type="text/javascript">
if(${!empty vo.filename}){
	$('#delete-file').css('display','inline');
}

</script>
</body>
</html>