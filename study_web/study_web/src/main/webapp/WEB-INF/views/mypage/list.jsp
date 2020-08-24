<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list_detail.css">
<style type="text/css">
.valid, .invalid { font-size:13px; }
.valid { color:gray } 
.invalid { color:red }

.table_hori {
	border-top: 2px solid #222;
	border-bottom: 2px solid #222;
	width: 60%;
	margin: 0 auto;
}

form .fieldset .table_hori {
 	width: 93%;
 	float: left;
 	margin-left: 40px;
}

form .fieldset .table_hori tr th {
 	background-color: #f3f3f3;
 	text-align: left;
 	padding-left: 10px;
 	height: 50px;
 	border-bottom: 1px solid #e6e6e6;
 	
}

form .fieldset .table_hori tr td {
 	border-bottom: 1px solid #e6e6e6;
 	padding: 2px 0 5px 5px;
 	text-align: left;
 	
}

a.btn-fill-s, a.btn-empty-s{
	text-align: center;
	padding: 1px 10px;
	border: 1px solid #000;
	border-radius: 3px;
	box-shadow: 2px 2px 3px #022d72;
	color: #0000cd;
	font-size: 13px;
	background-color: #000;
	color: #fff;
}

.btnSet .btn-fill {
	margin-top:3px;
	background-color: #444;
	color: #fff;
	border: 0px;
	font-size: 16px;
	margin: 0 auto;
	border: 2px solid #444;
	padding: 10px;
	width: 150px;
	padding: 9px 59px;
}

.btnSet .btn-empty {
	margin-top:3px;
	background-color: #fff;
	color: #444;
	border: 2px solid #444;
	font-size: 16px;
	margin: 0 auto;
	padding: 10px;
	width: 150px;
	padding: 9px 59px;
}

.chk{
	width: 188px;
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
					<li class="active"><a href="javascript:location.href='list.no';"
						onclick="pf_moveMenu('/gb/education/gbtalks.ed','SC_TFOVO')">회원정보 수정</a></li>
					<li class=""><a href="javascript:location.href='list.my';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">내가 쓴 글</a></li>
					<li class=""><a href="javascript:location.href='list.me';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">쪽지함</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>[${login_info.name }]님의 회원정보수정</h2>
				</div>
				<h2 style="text-align: left; margin-bottom: 35px; margin-left: 37px;">
					<strong>▶   &nbsp; 회원정보를</strong> 입력해주세요 
				</h2>
				
				<form action="mypage_update.ed" method="post">
				<input type="hidden" name="email" value="${login_info.email }" />
				<fieldset class="fieldset">
				<table class="w-pct60 table_hori" style="margin-left: 40px;">
				
					<tr><th class="w-px30">Email(id)</th>
						<td>${login_info.email }</td>
					</tr>
					<tr><th class="w-px40">닉네임</th>
					 <td ><input class="chk" type="text" name="name" title="닉네임" value="${login_info.name }" />
							<a id="btn-name" style="margin-left: 5px;" class="btn-empty-s">닉네임 중복검사</a>
							<div class="valid">닉네임을 입력하세요</div>
						</td> 
					</tr>
					
					<tr><th class="w-px40">비밀번호</th>
						<td class="w-px40">
							<input class="chk" type="password" name="pw"/>
							<div class="valid">비밀번호를 입력하세요</div>
						</td>
					</tr>
					<tr><th class="w-px40">비밀번호확인</th>
						<td class="w-px40">
							<input class="chk" type="password" name="pw_ck" title="비밀번호확인" />
							<div class="valid">비밀번호를 다시 입력하세요</div>
						</td>
					</tr>
					<tr><th class="w-px40">카테고리(직업)</th>
						<td><select class="chk" name="job" title="직업확인" />
							
							<option value="none">=선택=</option>
							<option value="초중고등학생">초·중·고등학생</option>
							<option value="대학생">대학생</option>
							<option value="고시생">고시생</option>
							<option value="취업준비생">취업준비생</option>
							<option value="직장인">직장인</option>
							<option value="기타">기타</option></select>
							<div class="valid">직업을 선택하세요</div>
							
						</td>
					</tr>
				</table>
				</fieldset>
				</form>
				<div class="btnSet">
				<a class="btn-empty cancle_btn" onclick="history.go(-1)">취소</a>
				<a class="btn-fill submit_btn" onclick="go_check()">저장</a>
				</div>
				
				
				
				
				
         </div>
       </section>
   </div>
</div>







<script type="text/javascript"src="js/join_check.js?v=<%=new java.util.Date().getTime()%>"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
function go_check(){
	if( $('[name=name]').val()=='' ){
		alert('닉네임을 입력하세요!');
		$('[name=name]').focus();
		return;
	}
	//필수항목의 유효성을 판단하도록 한다.
	//중복확인한 경우
	if( $('[name=name]').hasClass('chked') ){
		//이미사용중인 경우는 회원가입 불가
		if( $('[name=name]').siblings('div').hasClass('invalid') ){
			alert('수정불가\n'+ join.name.unusable.desc);
			$('[name=name]').focus();
			return;
		}
	}else{
	//중복확인하지 않은 경우
		if( !item_check( $('[name=name]') ) ) return;
		else{
			alert('수정불가\n'+ join.name.valid.desc);
			$('[name=name]').focus();
			return;			
		}
	}
	
	if( !item_check( $('[name=pw]') ) ) return;
	if( !item_check( $('[name=pw_ck]') ) ) return;
	if( !item_check( $('[name=job]') ) ) return;
	
	$('form').submit();
}
function item_check(item){
	var data = join.tag_status(item);
	if( data.code=='invalid' ) {
		alert('수정불가!\n' + data.desc);
		item.focus();
		return false;
	}else	return true;
}
$('#btn-name').on('click', function(){
	name_check();
});
function name_check(){
// 	올바른 아이디 입력형태인지 파악하여 유효하지 않다면 중복확인 불필요
	var $name = $('[name=name]'); 
	var $loginname = '${login_info.name }';
	if( $name.hasClass('chked') ) return;
		
	var data = join.tag_status( $name );	
	if( data.code!='valid' ){
		alert('닉네임 중복확인 불필요\n' + data.desc);
		$name.focus();
		return;
	}

	$.ajax({
		type:'post',
		url:'mypage_name_check',
		data: { name:$name.val(),loginname:$loginname },
		success: function(data){
			data = join.name_usable(data);
			display_status( $name.siblings('div'), data );
			$name.addClass('chked');
		},error: function(req, text){
			alert(text+': ' +req.status);
		}
	});
	
}
$('.chk').on('keyup', function(){
	if( $(this).attr('name')=='name' ){
		if(event.keyCode==13){ name_check(); }
		else{ 
			$(this).removeClass('chked');
			validate( $(this) );	
		}
	}else validate( $(this) );	
});
function validate(t){
	var data = join.tag_status(t);
	display_status( t.siblings('div'), data );
}
function display_status(div, data){
	div.text( data.desc );
	div.removeClass();
	div.addClass( data.code );	
}
</script>
</body>
</html>