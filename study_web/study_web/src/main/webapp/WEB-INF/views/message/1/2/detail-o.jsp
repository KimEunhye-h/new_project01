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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

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
					<li class=""><a href="javascript:location.href='list.no';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">회원정보 수정</a></li>
					<li class=""><a href="javascript:location.href='list.my';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">내가 쓴 글</a></li>
					<li class="active"><a href="javascript:location.href='list.me';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">쪽지함</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>받은 쪽지 상세</h2>
					<table>
						<tr>
							<th>보낸 사람</th>
							<td colspan="3">${vo.sender}</td>
							<th class="w-px100">작성일자</th>
							<td>${vo.senddate}</td>
						</tr>
						<tr>
							<th style="height: 200px">내용</th>
							<td colspan="5" class="left">${fn:replace(vo.message, crlf, '</br>') }</td>
						</tr>
					</table>
					<div class="btnSet">
						<a class="btn-fill" onclick="window.open('new.me','message1','copyhistory=yes,width=400,height=600,status=no,scrollbars=auto'); self.close()">답장하기</a>
						<a class="btn-empty" onclick="self.close()" >닫기</a>
						<a class="btn-fill" onclick="if(confirm('정말 삭제하시겠습니까?')){ fn_delete() }">삭제</a>
						</div>
					<form action="list.me" method="post">
						<input type="hidden" name="mid" value="${vo.mid }"> 
						<input type="hidden" name="curPage" value="${page.curPage }"> 
						<input type="hidden" name="search" value="${page.search }"> 
						<input type="hidden" name="keyword" value="${page.keyword }"> 
						<input type="hidden" name="viewType" value="${page.viewType }">
						<input type="hidden" name="pageList" value="${page.pageList }">
						<input type="hidden" id="receive" value="0">
					</form>
				</div>
			</section>
		</div>
	</div>

	<script type="text/javascript">

	/* 퀵메뉴 창닫기 기능 */ 
	function fn_delete(){
	   $.ajax({
	      url : "delete.me",
	      data: { 'mid': ${vo.mid } },
	      success : function(){
	         opener.location.reload();
	         self.close();
	      },
	        error : function(xhr, status, error) {
	         console.log(status)
	        }
	   });
//	     $('form').attr('action','delete.me');  $('form').submit(); setTimeout(function() {self.close();}, 500); 
	}

	</script>
</body>
</html>