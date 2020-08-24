<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#map{
	position: absolute;
	width: 600px;
	height: 600px;
	left:50%; top:50%; transform:translate(-50%,-50%);
	border: 3px solid #666;
	display: none;
}
#map-background{
	position: absolute; left: 0; top:0;
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
<h3>도서관정보</h3>

<div id="list-top">
</div>

<div id="library-list" style="margin:20px 0 auto"></div>
<div class="btnSet">
	<div class="page-list"></div>
</div>
<div id="map-background"></div>
<div id="map"></div>
<script>
var viewType='list';
$('.dataOption a').click(function(){
	//이미 선택된 버튼에 대해서는 적용하지않으려면
	if($(this).hasClass('btn-empty')){
		alert('누름');
		$('.dataOption a').removeClass();
		$(this).addClass('btn-fill');
		var idx = $(this).index();
		$('.dataOption a:not(:eq('+idx+'))').addClass('btn-empty');
		if(idx==0) pharmacy_list(1);
		else		animal_list();

	}
});

library_list(1);
function library_list(page){
	$.ajax({
		url: 'education/library',
		dataType:"json",
		data:{ pageNo:page, rows:10},
		success: function(data){
			var libs = data.libArray;
			console.log($(data.count)+"쿄쿄쿄");
			console.log(libs);
			console.log(libs.length);
			console.log(libs[0])
			console.log(data.conunt)
			console.log(data.libArray[0].lib);
			console.log($(libs)+"비교");
			for(var i = 0; i < libs.length; i++){
				console.log(libs[i].lib.address)

// 				$("#testbody").append("<tr><td>"+libs[i].lib.address+"</td></tr>");
				console.log("<tr><td>"+libs[i].lib.address+"</td></tr>")
				
			}
 			if(viewType=='list') library_list_data($(libs), 0);
// 			else				 pharmacy_grid_data($(data.item), 0);
			
			
 			$("#foo-table").DataTable({
 			// 표시 건수기능 숨기기
 				lengthChange: true,
 				// 정렬 기능 숨기기
 				ordering: true,
 				// 정보 표시 숨기기
 				info: true,
 				// 페이징 기능 숨기기
 				paging: true,
 				pageLength: 10,
 				searching: true
 	 			}); 
			
			
 			makePage( data.count, page);
			
		},error: function(req,text){
			alert(text+":"+req.status);
		}

	});
	
}

function library_list_data(data,type){
	var tag1 ="";
 	var tag = '<table class="library">'
		+ '<tr><th class="w-px220">도서관명</th><th class="w-px350">주소</th><th class="w-px140">운영시간</th><th>휴관일</th></tr>';
		 
	
	if( type==0){
		data.each(function(){
			tag1+="<tr><td>"+this.lib.address+"</td></tr>";
			
			tag += '<tr><td><a style="text-decoration:none; color:black;" onclick="location.href='+"'detail.ed?libCode="+this.lib.libCode+"'"+'">'+this.lib.libName+'</a></td>'
				+'<td class="left"><a style="text-decoration:none; color:black;" class="map" data-x='+this.lib.longitude+' data-y='+this.lib.latitude+'>'+this.lib.address+'</a></td>'
				+'<td class="left">'+this.lib.operatingTime+'</td>'
				+'<td class="left">'+this.lib.closed+'</td>'
				+'</tr>'
		});
	}
	tag+='</table>';
	$('#library-list').html(tag);	
	$('#testbody').html(tag1);	

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

function animal_list(){
	
	
}




$(document).on('click','.page-list a',function(){//약국정보 페이지클릭이벤트
	library_list( $(this).data('page'));

}).on('click','.list-view',function(){//리스트뷰를누르면
	if(viewType=='grid'){
		viewType='list';
		pharmacy_list_data($('.grid li'),1);
	}
	
}).on('change','#pageList',function(){
	pageList=$(this).val();
	library_list(1);
	
}).on('click','.grid-view',function(){//그리드뷰일때
	if(viewType=='list'){
		viewType='grid';
		pharmacy_grid_data($('.pharmacy tr'),1);
	}
	
}).on('click','.map',function(){
	if( $(this).data('y') == 'undefined' || $(this).data('x')=='undefined'){
		alert('위경도가 지원되지 않아 지도에 표시할 수 없습니다!');
		return;
	}

	
	$('#map, #map-background').css('display','block');	
	var pos = {lat: Number($(this).data('y')), lng: Number($(this).data('x'))};
	var map = new google.maps.Map(document.getElementById('map'), {
		  center: pos,
		  zoom: 15
	});


	var info = new google.maps.InfoWindow();
	info.setOptions({
		content:'<div>'+$(this).text()+'</div>',
		
	});
	info.open(map, new google.maps.Marker({
		map:map, position:pos
	}));
	
});


$('#map-background').click(function(){
	$('#map, #map-background').css('display','none');
});


var pageList = 10, blockPage = 10;	//페이지당 보여질 목록수,블럭당 보여질 페이지 수



</script>


<script>
//         jQuery(function($){
//             $("#foo-table").DataTable({
//               	ajax: {
//   			        'url':'education/library2', 
//   			        "dataType": "json"
//   			     },
//   			        columns: [
//   			        	{ data: "REG_DT" }
//   		               ]
//     		    });
//         });
    </script>
<div>
테이블 예제
<table id="foo-table" class="table table-bordered">
		<thead>
			<tr><th>주소</th></tr>
		</thead>
		<tbody id="testbody">
		</tbody>
    </table>

</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsrerDHJrp9Wu09Ij7MUELxCTPiYfxfBI"></script>
</body>
</html>