<%-- 
    Document   : AddNewSubCategory1
    Created on : Aug 30, 2015, 3:42:04 PM
    Author     : Ramin
--%>

<%@page import="com.shop.dboperation.DBOperation"%>
<%@page import="com.shop.model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% DBOperation db = new DBOperation(); %>
    <%@include file="static/_main.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD CATEGORY</title>
    </head>
    <body class="category-page">


        <div class="col-sm-4" >
            <div >
                <h3> ADD CATEGORY </h3>
                <form action="AddNewCategoryController">
                    <p>Sub Category</p>
                    <input type="text" name="newSubCategory1" class="form-control"/>

                    <select class="form-control" name="category" id="allCategory">
                        <% for (Category c : db.listCategories()) {%>
                        <option value="<%=c.getId()%>"><%=c.getCategoryName()%> </option>

                        <% }%>
                    </select>
                    <button type="submit" name="AddNewSubCategory1" class="button"> <i class="fa fa-user"></i> Add category  </button>
                </form>
            </div>
        </div>

    </div>
</body>
</html>
