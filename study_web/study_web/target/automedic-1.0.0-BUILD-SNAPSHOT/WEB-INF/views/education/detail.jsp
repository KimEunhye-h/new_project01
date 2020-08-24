<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#book{
	position: absolute;
	width:400px;
	height:400px;
	left:50%; top:50%; transform:translate(-50%,-50%);
	display: none;
}
#book-background{
	position: fixed; left: 0; top:0;
	width:100%; height:100%;
	background-color: #000;
	opacity: 0.3;
	display: none;
}
.page_on, .page_off, .page_next, .page_last, .page_prev, .page_first {
	display: inline-block; line-height: 30px; margin: 0; 
}
.page_on, .page_off{
	min-width:22px;  padding: 0 5px 2px;
}
.page_next, .page_last, .page_prev, .page_first{
	text-indent: -9999999px;
	border:1px solid #d0d0d0; width:30px;
}
.page_on {
	border: 1px solid gray; background-color: gray; color:#fff; font-weight: bold; font-size: 25px;
}
.page_next{
	background: url('img/page_next.jpg') center no-repeat;
}
.page_last{
	background: url('img/page_last.jpg') center no-repeat;
}
.page_prev{
	background: url('img/page_prev.jpg') center no-repeat;
}
.page_first{
	background: url('img/page_first.jpg') center no-repeat;
}
.list-view,.grid-view{ font-size: 25px; color:#3367d6; padding-top:3px; }
#list-top ul.common li:not(:last-child){margin-right:10px}

#library-list ul.pharmacy li div:first-child{height:25px;}
#library-list ul.pharmacy li div:last-child{font-size: 14px;}

</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<div id="list-top">
</div>

<div id="library-list" style="margin:20px 0 auto"></div>
<div class="btnSet">
	<div class="page-list"></div>
</div>
<div id="book-background"></div>
<div id="book"></div>
<script>
var viewType='list';
library_detail(1);
function library_detail(page){
	$.ajax({
		url: 'education/library/detail',
		dataType:"json",
		data:{ pageNo:page, rows:10,libCode:${libCode}},
		success: function(data){
			var libs = data.libArray;
			console.log($(data.count)+"쿄쿄쿄");
			console.log(libs)
			console.log(libs.length);
			console.log(libs[0])
			console.log(data.libArray[0].doc);
			console.log($(libs));
			for(var i = 0; i < libs.length; i++){
				console.log(libs[i].doc.bookname)
			}
 			if(viewType=='list') library_detail_data($(libs), 0, data.libNm);
// 			else				 pharmacy_grid_data($(data.item), 0);
 			makePage( data.count, page);
			
		},error: function(req,text){
			alert(text+":"+req.status);
		}

	});
	
}



function makePage( totalList, curPage){
	var page = pageInfo(totalList,curPage,pageList,blockPage);
	var tag = '';
	console.log(page+"하하");

	if( page.curBlock>1){
		tag += '<a class="page_first" data-page=1>처음</a>'+'<a class="page_prev" data-page='+(page.beginPage-blockPage)+'>이전</a>';
	}
	
	for(var no=page.beginPage; no<=page.endPage; no++){
		if(no == curPage){
			tag += '<span class="page_on">'+no+'</span>';
		}else{
			tag += '<a class="page_off" data-page='+ no +'>'+no+'</a>';
		}
	}
	if( page.curBlock<page.totalBlock){
		tag += '<a class="page_next" data-page='+(page.endPage+1)+'>다음</a>'+'<a class="page_last" data-page='+page.totalPage+'>마지막</a>';
	}
	$('.page-list').html(tag);
}

function pageInfo(totalList,curPage,pageList,blockPage){
	var page = new Object();
	page.totalPage = parseInt(totalList / pageList)+(totalList % pageList == 0 ? 0 : 1);
	page.totalBlock = parseInt(page.totalPage/blockPage)+(page.totalPage%blockPage == 0 ? 0 : 1);
	page.curBlock = parseInt(curPage/blockPage)+(curPage%blockPage == 0 ? 0 : 1);
	page.endPage = page.curBlock * blockPage;
	page.beginPage = page.endPage - (blockPage-1);
	if(page.endPage > page.totalPage ) page.endPage = page.totalPage;
	return page;
}


function library_detail_data(data,type, libNm){
	console.log('>>>',libNm, data)
 	var tag = '<h3>'+libNm+'</h3><table class="library">'
		+ '<tr><th>책이미지</th><th class="w-px220">도서명</th><th class="w-px350">저자명</th><th class="w-px140">출판사</th><th class="w-px100">출판연도</th><th>소장권수</th><th>대출권수</th></tr>';
		 
	
	if( type==0){
		data.each(function(){
			if(this.doc.bookImageURL ==''){
				tag += '<tr><td><a class="book" ><img class="book_image" onclick="book_img(\'kk\');" style="width:70px; height:70px; background: url('+"img/nobook.png"+') center no-repeat" ></a></td>'
				+'<td class="left">'+this.doc.bookname+'</td>'
				+'<td class="left">'+this.doc.authors+'</td>'
				+'<td class="left">'+this.doc.publisher+'</td>'
				+'<td class="left">'+this.doc.publication_year+'</td>'
				+'<td class="left">'+this.doc.book_count+'</td>'
				+'<td class="left">'+this.doc.loan_count+'</td>'
				+'</tr>'
			}else{
				tag += '<tr><td><a class="book" ><img onclick="book_img(\''+this.doc.bookImageURL+'\');" style="width:70px; height:70px;" src='+this.doc.bookImageURL+'></a></td>'
				+'<td class="left">'+this.doc.bookname+'</td>'
				+'<td class="left">'+this.doc.authors+'</td>'
				+'<td class="left">'+this.doc.publisher+'</td>'
				+'<td class="left">'+this.doc.publication_year+'</td>'
				+'<td class="left">'+this.doc.book_count+'</td>'
				+'<td class="left">'+this.doc.loan_count+'</td>'
				+'</tr>'
			}
			
		});
	}
	tag+='</table>';
	$('#library-list').html(tag);	

}

$(document).on('click','.page-list a',function(){//약국정보 페이지클릭이벤트
	library_detail( $(this).data('page'));

}).on('click','.list-view',function(){//리스트뷰를누르면
	if(viewType=='grid'){
		viewType='list';
		pharmacy_list_data($('.grid li'),1);
	}
	
}).on('change','#pageList',function(){
	pageList=$(this).val();
	library_detail(1);
	
}).on('click','.grid-view',function(){//그리드뷰일때
	if(viewType=='list'){
		viewType='grid';
		pharmacy_grid_data($('.pharmacy tr'),1);
	}
	
})
var img
function book_img(kk){
	if(kk=="kk"){
		$('#book, #book-background').css('display','block');
		$('#book').css('background','url("img/nonobook.png") center no-repeat')
		
	}else{
		$('#book, #book-background').css('display','block');
		$('#book').css('background','url("'+kk+'") center no-repeat')
	}
	
// 	$('#book').css('background','url('+img+') center no-repeat')
}



$('#book-background').click(function(){
	$('#book, #book-background').css('display','none');
});

var pageList = 10, blockPage = 10;	//페이지당 보여질 목록수,블럭당 보여질 페이지 수

</script>

<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>