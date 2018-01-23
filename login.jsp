<%-- 
    Document   : login
    Created on : Aug 30, 2015, 2:23:57 PM
    Author     : Ramin
--%>


<%@page import="com.shop.cookie.CookieUntil"%>
<%@page import="com.shop.dboperation.DBOperation"%>
<% DBOperation db = new DBOperation(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%    if (request.getParameter("activatemail") != null) {

        String mail = request.getParameter("activatemail");
        db.updateUserStatus(mail);
        CookieUntil.addCookie(response, "user", mail, 60 * 60 * 24);
        response.sendRedirect("index.jsp");
    }

%>

<html>
    <%@include file="static/_main.jsp" %>
    <head>
        <%@include file="static/_header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body class="category-page">
        <!-- page wapper-->
        <div class="columns-container">
            <div class="container" id="columns">
                <!-- breadcrumb -->
                <div class="breadcrumb clearfix">
                    <a class="home" href="#" title="Return to Home">Home</a>
                    <span class="navigation-pipe">&nbsp;</span>
                    <span class="navigation_page">Authentication</span>
                </div>
                <!-- ./breadcrumb -->
                <!-- page heading-->
                <h2 class="page-heading">
                    <span class="page-heading-title2">Authentication</span>
                </h2>
                <!-- ../page heading-->
                <div class="page-content">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="box-authentication">
                                <h3><ftm:message bundle="${label}" key="createAccount"/></h3>
                                <form action="SignUpController" method="post">
                                    <input type="text" name="name" placeholder="<ftm:message bundle="${label}" key="nameSurname"/>" class="form-control"/>
                                    <input type="text" name="email" placeholder="E-Mail" class="form-control"/>
                                    <input type="password" name="password" placeholder="<ftm:message bundle="${label}" key="password"/>" class="form-control"/>
                                    <button type="submit" name="signup" class="button"><i class="fa fa-user"></i><ftm:message bundle="${label}" key="createAccount"/> </button>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="box-authentication">
                                <h3><ftm:message bundle="${label}" key="register"/></h3>
                                <form action="SigninController" method="post">
                                    <input type="text" name="email" placeholder="E-Mail" class="form-control"/>
                                    <input type="password" name="password" placeholder="<ftm:message bundle="${label}" key="password"/>" class="form-control"/>
                                    <p><ftm:message bundle="${label}" key="remember"/> <span> <input  id="remember" name="remember" type="checkbox" ></span> </p>
                                    <button type="submit" name="login" class="button"><i class="fa fa-lock"></i><ftm:message bundle="${label}" key="signIn"/> </button>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <%@include file="static/_footer.jsp" %>
            <%@include file="static/_script.jsp" %>
            <!-- ./page wapper-->
        </div>
    </body>
</html>
