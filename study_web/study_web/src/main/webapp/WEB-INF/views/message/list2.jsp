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
					<h2>보낸 쪽지함</h2>
					<form id="list" action="list2.me" method="post">
						<input type="hidden" name="curPage" value="1"> <input
							type="hidden" name="mid" />
						<div id="list-top">
							<div>
								<ul style="margin-bottom: 8px;">
									<li><select style="position: relative; top:-4px" name="pageList" class="w-px80"
										onchange="$('form').submit()">
											<option ${page.pageList eq 10 ? 'selected' : '' } value="10">10개씩</option>
											<option ${page.pageList eq 20 ? 'selected' : '' } value="20">20개씩</option>
											<option ${page.pageList eq 30 ? 'selected' : '' } value="30">30개씩</option>
									</select></li>
									<c:if test="${!empty login_info}">
										<!-- 로그인되어 있으면 글쓰기 가능 -->
										<li><a class="btn-fill" href="list.me">받은 쪽지함</a></li>
										<li><a class="btn-fill" href="list2.me" style="background-color: #000; color: #fff" >보낸쪽지함</a></li>
										<li><a class="btn-fill" style="margin-left: 630px;" onclick="window.open('new.me','message','width=400,height=600,status=no,scrollbars=auto');">쪽지보내기</a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</form>
					<div id="data-list">
						<table>
							<tr>
								<th class="w-px100">받는사람</th>
								<th>내용</th>
								<th class="w-px120">발송날짜</th>
							</tr>
							<c:forEach items="${page.list}" var="vo">
								<tr>
									<td class="w-px60">${vo.targetid}</td>
									<td class="left"><a onclick="go_detail(${vo.mid})">${vo.message}</a></td>
									<td class="w-px100">${vo.senddate}</td>
								</tr>
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
function go_detail(mid){
	 $('[name=mid]').val(mid);
	   $('form').attr('action');   
	   $('form').submit();
	   window.open('detail2.me?mid='+mid,'message','width=400,height=450,status=no,scrollbars=auto');
}


</script>
</body>
</html>