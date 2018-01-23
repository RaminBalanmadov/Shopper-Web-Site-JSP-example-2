<%-- 
    Document   : AddNewProduct
    Created on : Aug 30, 2015, 9:36:33 PM
    Author     : Ramin
--%>

<%@page import="com.shop.model.Category"%>
<%@page import="com.shop.dboperation.DBOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <% DBOperation db = new DBOperation(); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
    </head>
    <%@include file="static/_main.jsp" %>
    <body>

        <form action="AddNewProductController" method="post" enctype="multipart/form-data">
            <div class="contact-form-box">
                <div class="col-sm-4" >
                    <div >
                        <h2 class="page-subheading"> ADD NEW PRODUCT </h2>

                        <p>Title</p>
                        <input type="text" name="title" class="form-control"/>
                        <p>Price</p>
                        <input type="text" name="price" class="form-control"/>
                        <p>Old Price</p>
                        <input type="text" name="oldPrice" class="form-control"/>
                        <p>Quantity</p>
                        <input type="text" name="quantity" class="form-control"/>
                        <p>Description</p>
                        <textarea class="form-control input-sm" rows="5" name="description"></textarea>

                        <div class="form-selector">
                            <select class="form-control" name="category" id="allCategory">
                                <% for (Category c : db.listCategories()) {%>
                                <option value="<%=c.getId()%>"><%=c%></option>

                                <%}%>
                            </select>
                        </div>
                        <div class="form-selector" id="bringSubCategories1">
                            <select class="form-control" id="subCategory1">

                            </select>
                        </div>
                        <div class="form-selector" id="bringSubCategories2">

                        </div>
                        <div class="form-selector">
                            <p>Choose a size</p>

                            <input value="1" type="checkbox" name="XS_Size"/>XS
                            <input value="2" type="checkbox" name="S_Size"/>S
                            <input value="3" type="checkbox" name="M_Size"/>M
                            <input value="4" type="checkbox" name="L_Size"/>L
                            <input value="5" type="checkbox" name="XL_Size"/>XL
                            <input value="6" type="checkbox" name="XXL_Size"/>XXL

                        </div>
                        <input type="file" name="file1"/>
                        <input type="file" name="file2"/>
                        <input type="file" name="file3"/>

                        <button type="submit" name="AddNewProduct" class="button"> <i class="fa fa-user"></i> Add New Product  </button>

                    </div>
                </div>
            </div>

        </form>
    </body>
</html>
