<%-- 
    Document   : result
    Created on : Sep 25, 2018, 11:25:13 PM
    Author     : gabe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" 
              content="text/html; charset=UTF-8">
          <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
        <title>Results</title>
    </head>
    <body>
        <h1>Results</h1>
        <p>
            <c:out value="${response}"/>
            <hr/>
           total points: <c:out value="${totalPoints}"/>
            <hr/>
         
            <a href="index.jsp">play again</a>
        </p>
    </body>
</html>