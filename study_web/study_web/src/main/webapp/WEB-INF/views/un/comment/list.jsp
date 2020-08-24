<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:forEach items="${list}" var="vo" varStatus="status">
${status.index eq 0 ? '<hr>' : ''}
<div data-id='${vo.id }'>${vo.writer} [${vo.writedate}]
   <c:if test="${login_info.name eq vo.writer}" ><!-- 로그인한 사용자가 작성한 댓글 수정/삭제기능 -->
   <span style="float: right;">
      <a class="btn-fill-s btn-modify-save">수정</a>
      <a class="btn-fill-s btn-delete-cancel">삭제</a>
   </span>
   </c:if>
  <c:if test="${vo.secretReply eq 'n'}">
   <div class="original">${fn:replace( fn:replace (vo.content, lf, '</br>' ) ,crlf, '</br>') }</div>
   <div class="modify" style="display: none; margin-top: 6px;"></div>
  </c:if>
   <c:if test="${vo.secretReply eq 'y'or !login_info.name eq vo.writer}">
   <div style="color: gray;"><i class="fas fa-lock"></i> 비밀글입니다.</div>
   <div style="display: none; margin-top: 6px;"></div>
  </c:if>
  <c:if test="${vo.secretReply eq 'y' }">
  <c:if test="${login_info.admin eq 'y'or login_info.name eq vo.writer or login_info.name eq detail.writer}">
   <div class="original">${fn:replace( fn:replace (vo.content, lf, '</br>' ) ,crlf, '</br>') }</div>
   <div class="modify" style="display: none; margin-top: 6px;"></div>
  </c:if>
  </c:if>
  <hr>
</div>
</c:forEach>

<script>
/* $('.original').each(function(){
   $(this).text(
         .replace(/<g, '&lt').replace(/>/g, '&gt');
   );
}); */

$('.btn-modify-save').on('click', function(){
   var $div = $(this).closest('div');
   if($(this).text()=='수정'){
   $div.children('.modify').css('height', 
         $div.children('.original').height()-6);
      var tag = '<textarea style="width:99%; height:80px; resize:none" >'
      +$div.children('.original').html().replace(/<br>/g, '\n')
      +'</textarea>'
   $div.children('.modify').html(tag);
   display($div, 'm');
   }else{
      var comment
      ={id:$div.data('id'), 
         content:$div.children('.modify').find('textarea').val()}
      /* alert(JSON.stringify(comment)); */
      $.ajax({
         url:'un/comment/update',
         data: JSON.stringify(comment),
         contentType: 'application/json',
         type: 'post',
         success: function(data){
             alert(data);
             comment_list();
         },error: function(req,text){
            alert(text+':'+req.status);
         }
                     
      });
   }
});

$('.btn-delete-cancel').on('click', function(){
	//삭제 취소
   var $div = $(this).closest('div');
   if($(this).text()=='취소'){
   		display($div, 'd');
   }else{
		if(confirm('정말 삭제?'))
			$.ajax({
				url:'un/comment/delete/'+$div.data('id'),
				success:function(){
					comment_list();
				},error: function(req,text){
		            alert(text+':'+req.status);
		        }
			});
				
	}
});

function display(div, mode){
   //수정상태(m): 저장/취소, 원글 안보이고, 수정글은 보이고
   //보기상태(d): 수정/삭제, 원글 보이고, 수정글은 안보이고
   div.find('.btn-modify-save').text(mode=='m' ? '저장' : '수정');
   div.find('.btn-delete-cancel').text(mode=='m' ? '취소' : '삭제');
   div.children('.original').css('display', mode=='m' ? 'none' : 'block');
   div.children('.modify').css('display', mode=='m' ? 'block' : 'none');
}

</script>