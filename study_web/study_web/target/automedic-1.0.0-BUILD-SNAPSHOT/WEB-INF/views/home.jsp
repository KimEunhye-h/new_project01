<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
   <title>Home</title>
   <Style>
      #content{
         height:700px;
      }
   </Style>
</head>

<div id = "content" class="container">
    <div class="row">
        <div class="col-sm-12">
           <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include> 
        </div>
    </div>
     <div id='content' class="row">
        <div class="col-sm-12"><img src='img/home.png' style="width: 100%" height="100%" class="img-responsive"/></div>
        
    </div>
</div>   

<body>
123

gdsgdsg
 <jsp:include page="/WEB-INF/views/include/footer.jsp"/> 
</body>
</html>