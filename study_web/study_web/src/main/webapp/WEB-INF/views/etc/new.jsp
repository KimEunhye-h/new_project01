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
					<li class=""><a href="javascript:location.href='list.sc';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">초/중/고</a></li>
					<li class=""><a href="javascript:location.href='list.un';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">대학/편입</a></li>
					<li class=""><a href="javascript:location.href='list.go';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">고시</a></li>
					<li class=""><a href="javascript:location.href='list.job';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">취준생</a></li>
					<li class=""><a href="javascript:location.href='list.emp';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">직장인</a></li>
					<li class="active"><a href="javascript:location.href='list.etc';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">기타</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>기타</h2>
					<form action="insert.etc" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<th class="w-px100">제목</th>
								<td><input title="제목" type="text" name="title" class="need need_title" placeholder="제목을 입력해주세요."></td>
								<th class="w-px80">작성자</th>
								<td class="w-px120">${login_info.name }</td>
							</tr>
							<tr>
								<th colspan="1">내용</th>
								<td colspan="3"><textarea title="내용" name='content' class="need need_content" style="height: 341px" placeholder="내용을 입력해주세요."></textarea></td>
							</tr>
							<tr>
								<th colspan="1">청부파일</th>
								<td class="left" colspan="3"><label> <input type="file"
										name="file" id='attach-file' /> <img src='img/select.png'
										class="file-img" />
								</label> <span id='file-name'></span> <span id="preview"></span> <span
									id='delete-file' style="color: red; margin-left: 15px">
										<i class="fas fa-times font-img"></i>
								</span></td>
							</tr>
						</table>
					</form>
					<div class="btnSet">
						<a class="btn-fill"
							onclick="if(necessary()){ $('form').submit()} ">저장</a> <a
							class="btn-empty" href="list.etc">취소</a>
					</div>
				</div>
			</section>
		</div>
	</div>

	<script type="text/javascript">
		$('#delete-file').on('click', function() {
			$('#preview').html('')
		});
		$('#attach-file')
				.on(
						'change',
						function() {
							var attach = this.files[0];
							if (attach) {
								if (isImage(attach.name)) {
									var img = '<img id="preview-img" class="file-img" src="" style="border-radius:50%"/>';
									$('#preview').html(img);

									var reader = new FileReader();
									reader.onload = function(e) {
										$('#preview-img').attr('src',
												e.target.result);
									}
									reader.readAsDataURL(attach);
								} else
									$('#preview').html('');
							}
						});
		function isImage(filename) {
			//av.txt,av.png,av.hwp....
			var ext = filename.substring(filename.lastIndexOf('.') + 1)
					.toLowerCase();
			var imgs = [ 'png', 'jpg', 'jpeg', 'gif', 'bmp' ];
			if (imgs.indexOf(ext) > -1)
				return true;
			else
				return false;
		}
	</script>
	<script type="text/javascript" src="js/file_attach.js"></script>
	<script type="text/javascript"
		src="js/need_check.js?v=<%=new java.util.Date().getTime()%>"></script>
</body>
</html>