<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list.css">
<style type="text/css">
.valid, .invalid {
	font-size: 13px;
}

.valid {
	color: gray
}

.invalid {
	color: red
}

html, body {
	width: 100%;
	max-width: 1280px;
	margin: 0 auto;
	color: black;
}

h2 {
	margin-bottom: 18px;
	font-size: 24px;
	font-weight: normal;
	line-height: 28px;
	color: #222;
}

h2 em {
	margin-left: 8px;
	font-size: 15px;
	font-weight: normal;
	color: #ca001c;
}

fieldset {
	border: 0 none;
}

.fieldset.star {
	display: inline-block;
	margin-top: -3px;
	vertical-align: top;
	color: #222;
}

.table_hori {
	border-top: 2px solid #222;
	border-bottom: 2px solid #222;
	width: 60%;
	margin: 0 auto;
}

.star {
	color: #ca001c;
	margin-top: -3px;
}

.submit_btn {
	margin-top:3px;
	background-color: #444;
	color: #fff;
	border: 0px;
	font-size: 16px;
	margin: 0 auto;
	border: 2px solid #444;
	padding: 10px;
	width: 150px;
}

.cancle_btn {
	margin-top:3px;
	background-color: #fff;
	color: #444;
	border: 2px solid #444;
	font-size: 16px;
	margin: 0 auto;
	padding: 10px;
	width: 150px;
}

/* .subContainer .inner1220 .subTitle h2 {
	width: 100%;
	text-align: left;
	padding: 20px 0 0 0;
   
} */


form .fieldset .table_hori {
 	width: 93%;
 	
}

form .fieldset .table_hori tr th {
 	background-color: #f3f3f3;
 	text-align: left;
 	padding-left: 10px;
}

form .fieldset .table_hori tr td {
 	border-bottom: 1px solid #e6e6e6;
 	padding: 2px 0 5px 5px;
 	text-align: left;
}

.btn_join{
	margin-top: 20px;
	width: 100%;
	text-align: center;
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
					<h2>회원</h2>
				</div>
				<ul class="sAsideMul">
					<li class=""><a href="javascript:location.href='login';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">로그인</a></li>
					<li class="active"><a href="javascript:location.href='member';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">회원가입</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>회원정보</h2>
				</div>
				<h2>
					<strong>회원정보</strong> 입력해주세요 <em>* 필수 입력사항입니다.</em>
				</h2>

				<form action="join" method="post">
					<fieldset class="fieldset">
						<table class="table_hori">
							<tr>
								<th class='w-px160'><span class="star">*</span>닉네임</th>
								<td>
									<input class="chk" name="name" type="text" title="닉네임"/>
									<a id="btn-name2" style="margin-left: 5px;" class="btn-empty-s">닉네임 중복검사</a>
									<div class="valid">닉네임을 입력하세요</div>
								</td>
							</tr>
							<tr>
								<th><span class="star">*</span>E-mail</th>
								<td><input class="chk" name="email" type="text" title="이메일" /><a
									id="btn-email" style="margin-left: 5px" class="btn-fill-s" >이메일중복확인</a><br />
									<div class="valid">이메일을 입력하세요</div></td>
							</tr>
							<tr>
								<th><span class="star">*</span>비밀번호</th>
								<td><input class="chk" name="pw" type="password"
									title="비밀번호" /><br />
									<div class="valid">비밀번호를 입력하세요(영문 대·소문자 숫자 포함)</div></td>
							</tr>
							<tr>
								<th><span class="star">*</span>비밀번호 확인</th>
								<td><input class="chk" name="pw_ck" type="password"
									title="비밀번호확인" /><br />
									<div class="valid">비밀번호를 다시 입력하세요</div></td>
							</tr>
							<tr>
								<th><span class="star">*</span>직업</th>
								<td><select class="chk" name="job" title="직업확인" />
									<option value="초중고등학생">초·중·고등학생</option>
									<option value="대학생">대학생</option>
									<option value="고시생">고시생</option>
									<option value="취업준비생">취업준비생</option>
									<option value="직장인">직장인</option>
									<option value="기타">기타</option> </select>
									<div class="valid">직업을 선택하세요</div></td>
							</tr>
<!-- 							<tr> -->
<!-- 								<th><span class="star">*</span>학부모 여부</th> -->
<!-- 								<td><label><input type="radio" name="parents" -->
<!-- 										value="학부모" checked />학부모</label> <label><input type="radio" -->
<!-- 										name="parents" value="학생" />학생</label></td> -->
<!-- 							</tr> -->
						</table>
					</fieldset>
				</form>
				<div class="btn_join">
					<button class="submit_btn" onclick="go_join()">회원가입</button>
					<button class="cancle_btn" onclick="history.go(-1)">취소</button>
				</div>
			</section>
		</div>
	</div>
<script type="text/javascript"src="js/join_check.js?v=<%=new java.util.Date().getTime()%>"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function go_join(){
	if( $('[name=name]').val()=='' ){
		alert('성명을 입력하세요!');
		$('[name=name]').focus();
		return;
	}
	//필수항목의 유효성을 판단하도록 한다.
	//중복확인한 경우
	if( $('[name=email]').hasClass('chked') ){
		//이미사용중인 경우는 회원가입 불가
		if( $('[name=email]').siblings('div').hasClass('invalid') ){
			alert('회원가입불가\n'+ join.email.unusable.desc);
			$('[name=email]').focus();
			return;
		}
	}else{
	//중복확인하지 않은 경우
		if( !item_check( $('[name=email]') ) ) return;
		else{
			alert('회원가입불가\n'+ join.email.valid.desc);
			$('[name=email]').focus();
			return;			
		}
	}


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
	if( !item_check( $('[name=name]') ) ) return;
	if( !item_check( $('[name=pw]') ) ) return;
	if( !item_check( $('[name=pw_ck]') ) ) return;
	if( !item_check( $('[name=email]') ) ) return;
	
	$('form').submit();
}


function item_check(item){
	var data = join.tag_status(item);
	if( data.code=='invalid' ) {
		alert('회원가입불가!\n' + data.desc);
		item.focus();
		return false;
	}else	return true;
}
$('#btn-email').on('click', function(){
	email_check();
});
$('#btn-name2').on('click', function(){
	name_check2();
});
function email_check(){
// 	올바른 아이디 입력형태인지 파악하여 유효하지 않다면 중복확인 불필요
	var $email = $('[name=email]'); 
	if( $email.hasClass('chked') ) return;
		
	var data = join.tag_status( $email );
	if( data.code!='valid' ){
		alert('이메일 중복확인 불필요\n' + data.desc);
		$email.focus();
		return;
	}

	$.ajax({
		type:'post',
		url:'email_check',
		data: { email:$email.val() },
		success: function(data){
			data = join.email_usable(data);
			display_status( $email.siblings('div'), data );
			$email.addClass('chked');
		},error: function(req, text){
			alert(text+': ' +req.status);
		}
	});
	
}


function name_check2(){
//	올바른 아이디 입력형태인지 파악하여 유효하지 않다면 중복확인 불필요
	var $name = $('[name=name]'); 
	if( $name.hasClass('chked') ) return;
		
	var data = join.tag_status( $name );	
	if( data.code!='valid' ){
		alert('닉네임 중복확인 불필요\n' + data.desc);
		$name.focus();
		return;
	}	

$.ajax({
	type:'post',
	url:'name_check2',
	data: { name:$name.val() },
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
	if( $(this).attr('name')=='email' ){
		if(event.keyCode==13){ email_check(); }
		else{ 
			$(this).removeClass('chked');
			validate( $(this) );	
		}
	}else validate( $(this) );	
	if( $(this).attr('name')=='name' ){
		if(event.keyCode==13){ name_check2(); }
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