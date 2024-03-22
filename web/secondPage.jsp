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
        <style type="text/css">
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
            }
            #container {
                width: 80%;
                margin: 0 auto;
                padding-top: 20px;
            }
            #header {
                background-color: #333;
                color: #fff;
                padding: 10px;
                text-align: center;
            }
            #content {
                background-color: #fff;
                padding: 20px;
            }
            #tbl {
                margin-top: 20px;
                width: 50%;
                border-collapse: collapse;
            }
            #tbl td {
                padding: 10px;
                border: 1px solid #ccc;
            }
            #tbl input[type="text"], #tbl input[type="submit"] {
                padding: 5px;
                width: 100%;
            }
            #footer {
                background-color: #333;
                color: #fff;
                padding: 10px;
                text-align: center;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div id="container">
            <div id="header">
                <%--JSP include directives--%>
                <%@include file="header.html" %>
            </div>
            <div id="content">
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

            </div>
            <div id="footer">
                <%--JSP action tags--%>
                <jsp:include page="footer.html" />
            </div>
        </div>
    </body>
</html>
