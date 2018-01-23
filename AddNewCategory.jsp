<%-- 
    Document   : login
    Created on : Aug 30, 2015, 2:23:57 PM
    Author     : Ramin
--%>


<%@page import="com.shop.dboperation.DBOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <%@include file="static/_main.jsp" %>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="category-page">


        <div class="col-sm-5">
            <div>
                <h3> ADD CATEGORY </h3>
                <form action="AddNewCategoryController">
                    <p>Category</p>
                    <input type="text" name="category"  class="form-control"/>
                    <button type="submit" name="AddNewCategory" class="button"> <i class="fa fa-user"></i> Add category  </button>
                </form>
            </div>
        </div>
        
        </div>
    </body>
</html>
