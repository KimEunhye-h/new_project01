<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="JavaScript">
    function setCookie(name, value, expiredays) {
        var date = new Date();
        date.setDate(date.getDate() + expiredays);
        document.cookie = escape(name) + "=" + escape(value) + "; expires=" + date.toUTCString();
    }

    function closePopup() {
        if (document.getElementById("check").value) {
            setCookie("popupYN", "N", 1);
            self.close();
        }
    }
</script>
</head>
<body>
<%-- 	<img src="./${vo.filepath }" alt=""> --%>
<%-- <div>${imgList(5).writer }</div> --%>
<c:forEach items="${imgList }" var="vo" varStatus="status">
                	<c:if test="${vo.num eq '6' }">
                    <img src="./${vo.filepath }" alt="" style="width:350px; height:540px;">
                	</c:if>
               </c:forEach>
    <div>
    <input type="checkbox" id="check" onclick="closePopup();">
    
    <fontsize=3> <b>하루에 한번만 보기</b> </font>
    </div>
</body>
</html>


