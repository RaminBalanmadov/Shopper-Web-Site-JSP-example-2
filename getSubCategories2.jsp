<%-- 
    Document   : getSubCategories2
    Created on : Sep 7, 2015, 3:06:55 PM
    Author     : Ramin
--%>

<%@page import="com.shop.model.Category"%>
<%@page import="com.shop.dboperation.DBOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% DBOperation db =new DBOperation(); %>
    </head>
    <body>
          
        <%
        long id = Long.parseLong(request.getParameter("id"));
        %>
        <select class="form-control" name="subCategory2" id="subCategory2">
            <% for(Category c:db.listSubCategory2ByID(id)){ %>
            <option value="<%=c.getId()%>"><%=c.getCategoryName()%></option>
            <% } %>
            
        </select>
    </body>
</html>
