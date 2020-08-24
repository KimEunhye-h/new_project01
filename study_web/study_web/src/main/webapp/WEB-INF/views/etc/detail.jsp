<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list_detail.css">
<style type="text/css">
table td {
	word-break: break-all;
}

#popup {
	width: 350px;
	height: 350px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	/* border: 3px solid gray; border-radius:50%; */
	z-index: 9999999;
	display: none;
}

#popup-background {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: #000;
	opacity: 0.3;
	display: none;
}

.popup {
	width: 100%;
	height: 100%;
}

#comment_regist span {
	width: 50%;
	float: left;
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
					<table>
						<tr>
							<th class="w-px100">제목</th>
							<td class="left" colspan="5">${vo.title }</td>
							<th>작성자</th>
							<td>${vo.writer}</td>
							<th class="w-px100">작성일자</th>
							<td>${vo.writedate}</td>
							<th class="w-px80">조회수</th>
							<td>${vo.readcnt}</td>
						</tr>
						<tr>
							<td colspan="12" class="vall vall_con">${fn:replace(vo.content, crlf, '</br>')}</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan="11" class="vall"><c:if
									test="${!empty vo.filename}">${vo.filename }<span id="preview"></span>
									<a href="download.etc?id=${vo.id }"><i
										class="fas fa-download font-img"></i></a>
								</c:if></td>
						</tr>
					</table>
					<div class="btnSet">
						<a class="btn-fill" onclick="go_list()">목록으로</a>
						<c:if
							test="${login_info.admin eq 'y' or login_info.name eq vo.writer }">
							<!-- 관리자나 작성자로 로그인한 경우만 수정삭제가능 -->
							<a class="btn-fill"
								onclick="$('form').attr('action','modify.etc');$('form').submit()">수정</a>
							<a class="btn-fill"
								onclick="if(confirm('정말 삭제?')){ $('form').attr('action','delete.etc'); $('form').submit() }">삭제</a>
						</c:if>
					</div>
					<div style="margin: 0 auto; padding-top: 20px; width: 500px;">
						<div id="comment_regist">
							<span class="left">댓글작성</span> <span class="right"> <input
								type="checkbox" id="secretReply">비밀댓글 <a
								class="btn-fill-s" onclick="comment_regist()">등록</a></span>
							<textarea id="comment" placeholder="댓글을 입력해주세요"
								style="width: 99%; height: 60px; margin-top: 5px; resize: none;"></textarea>
						</div>
						<div id="comment_list" style="text-align: left"></div>
					</div>
					<form action="list.etc" method="post">
						<input type="hidden" name="id" value="${vo.id }"> <input
							type="hidden" name="curPage" value="${page.curPage }"> <input
							type="hidden" name="search" value="${page.search }"> <input
							type="hidden" name="keyword" value="${page.keyword }"> <input
							type="hidden" name="viewType" value="${page.viewType }">
						<input type="hidden" name="pageList" value="${page.pageList }">
					</form>
					<div id="popup"></div>
					<div id="popup-background"
						onclick="$('#popup,#popup-background').css('display','none')"></div>
				</div>
			</section>
		</div>
	</div>

	<script type="text/javascript">
function comment_regist(){
	if(${empty login_info}){
		alert('댓글을 등록하려면 로그인하세요!'); return;
	}
	if($('#comment').val()==''){
		alert('댓글을 입력!');
		$('#comment').focus(); return;
	}
	var secretReply = "n";
	if($("#secretReply").is(":checked")){
		secretReply = "y";
	}
	$.ajax({
		url:'etc/comment/insert',
		data:{ pid:${vo.id}, content:$('#comment').val(),secretReply:secretReply },
		success:function(data){
			if(data){
				$('#comment').val('');
				$("#secretReply").prop('checked', false);
			 	comment_list();
			}
		},error:function(req,text){
			alert(text+':'+req.status);
		}
			
	});
}
function comment_list(){
	$.ajax({
		url:'etc/comment/${vo.id}',
		success: function(data){
			$('#comment_list').html(data);
		},error:function(req,text){
			alert(text+':'+req.status);
		}
	});
}
comment_list();
if(${!empty vo.filename}){
	showAttachImage('#preview');
}
function showAttachImage(id){
	//첨부된 파일이 이미지인 경우 보여지게
	var filename = '${vo.filename}';
	var ext = filename.substring(filename.lastIndexOf('.')+1).toLowerCase();
	var imgs = ['gif','jpg','jpeg','bmp','png'];
	if(imgs.indexOf(ext)>-1) {
		var img = '<img src="'+ '${vo.filepath}'.substring(1) +'" style="border-radius:50%" id="preview-img" class="'+ (id=='#popup'? 'popup':'file-img') +'" />'
		$(id).html(img);	
	}
}
$('#preview-img').click(function(){
	$('#popup,#popup-background').css('display','block');
	showAttachImage('#popup');
	
});
function go_list(){
	$('form').submit();
}
</script>
</body>
</html>