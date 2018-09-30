<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
        <title>Model , View, Controller</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
    </head>
    <body>
        <h1>rock paper scissors</h1>
        <div class="container">           
            <form method="POST" action="rockPaper">                            
 rock<input type="radio" name="choice" value="1">
  paper<input type="radio" name="choice" value="2">    
   scissors<input type="radio" name="choice" value="3">    
                <hr/>
                <input type="submit" value="Calculate">
            </form>
            
            <hr/>
              <c:out value="${response}"/>
            <hr/>
           total points: <c:out value="${totalPoints}"/>
            <hr/>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>

