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
            #tbl{
                margin-top: 40px;
            }
            td{
                padding:10px;
            }
        </style>
    </head>
    <body>
        <%--JSP include directives--%>
        <%@include file="header.html" %>
        
        
        <%--JSP scripting declaring tag--%>
        <%!
            Connection con;
            Statement st;
        %>
        <form>
            <table align="center" border="1" cellspacing="0" id="tbl">
                <tr>
                    <td>
                        Enter your name:
                    </td>
                    <td><input type="text" id="nm" name="nm"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form>
        <h1>Hello World!</h1>
        
        <%--JSP scripting expression tag--%>
        <%= session.getId() %>
        
        
        
    </body>
</html>
