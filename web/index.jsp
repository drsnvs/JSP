<%-- 
    Document   : index
    Created on : 22 Mar, 2024, 9:22:19 PM
    Author     : DARSHAN
--%>
<%--JSP page directives--%>
<%@page import="java.sql.*" %>

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
                width: 90%;
            }
            #footer {
                background-color: #333;
                color: #fff;
                padding: 10px;
                text-align: center;
                margin-top: 20px;
            }
            #nm{
                width: 100%;
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
                <%--JSP scripting declaring tag--%>
                <%!
                    Connection con;
                    Statement st;
                %>
                
                <%--JSP scripting elements--%>
                <%
                    session.setAttribute("id",session.getId());
                %>
                <form action="secondPage.jsp" method="post">
                    <table align="center" border="1" cellspacing="0" id="tbl">
                        <tr>
                            <td>
                                Enter your name:
                            </td>
                            <td>
                                <input type="text" id="nm" name="nm"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><input type="submit" value="Submit"/></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="footer">
                <%--JSP action tags--%>
                <jsp:include page="footer.html" />
            </div>
        </div>
    </body>
</html>
