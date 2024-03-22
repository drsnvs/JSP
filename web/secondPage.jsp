<%-- 
    Document   : secondPage
    Created on : 22 Mar, 2024, 11:18:51 PM
    Author     : DARSHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--JSP include directives--%>
        <%@include file="header.html" %>
        
        <%--JSP scripting elements--%>
        <%
            if(!session.getId().equals(session.getAttribute("id"))){
                response.sendRedirect("index.jsp");
            }else{
                session.setAttribute("name", request.getParameter("nm"));
            }
            
        %>
        
        <%--JSP scripting expression tag--%>
        <p align="right">session id: <%= session.getId() %></p>
        
        <%--EL--%>
        <h1 align="center">Welcome ${name}</h1>
        
        
        <%--JSP action tags--%>
        <jsp:include page="footer.html" />
    </body>
</html>
