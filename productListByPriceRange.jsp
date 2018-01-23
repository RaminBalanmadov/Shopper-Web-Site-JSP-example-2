<%-- 
    Document   : productListByPriceRange
    Created on : Sep 11, 2015, Sep 11, 2015 10:23:15 PM
    Author     : Ramin
--%>

<%@page import="com.shop.dboperation.DBOperation"%>
<%@page import="com.shop.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% DBOperation db = new DBOperation();%>

    <body>

        <% double price = Double.parseDouble(request.getParameter("range")); %>
        <%
            double val = db.listProductsByPriceRange().size();
            int fullPageCount = (int) Math.ceil(val / 12);
            int pageCount = 0;
            int currentPage = 1;
            if (request.getParameter("pageCount") != null) {
                currentPage = Integer.parseInt(request.getParameter("pageCount"));
                pageCount = Integer.parseInt(request.getParameter("pageCount"));

            }
        %>
        <div id="view-product-list" class="view-product-list">
            <h2 class="page-heading">
                <span class="page-heading-title">Women</span>
            </h2>
            <ul class="display-product-option">
                <li class="view-as-grid selected">
                    <span>grid</span>
                </li>
                <li class="view-as-list">
                    <span>list</span>
                </li>
            </ul>
            <div id="priceList">
                <!-- PRODUCT LIST -->
                <ul class="row product-list grid">
                    <% for (Product p : db.listProductsByPriceRangeCount(pageCount)) {%>
                    <li class="col-sx-12 col-sm-4">
                        <div class="product-container">
                            <div class="left-block">
                                <a href="#">
                                    <img class="img-responsive" alt="product" src="<%=db.findImageByProductID(p.getId()).getName()%>" />
                                </a>
                                <div class="quick-view">
                                    <a title="Add to my wishlist" class="heart" href="#"></a>
                                    <a title="Add to compare" class="compare" href="#"></a>
                                    <a title="Quick view" class="search" href="#"></a>
                                </div>
                                <div class="add-to-cart">
                                    <a title="Add to Cart" href="#add">Add to Cart</a>
                                </div>
                            </div>
                            <div class="right-block">
                                <h5 class="product-name"><a href="#"><%=p.getTitle()%></a></h5>
                                <div class="product-star">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="content_price">
                                    <span class="price product-price"><%=p.getPrice()%></span>
                                    <span class="price old-price"><%=p.getOldPrice() > 0 ? "$" + p.getOldPrice() : ""%></span>
                                </div>
                                <div class="info-orther">
                                    <p>Item Code: #453217907</p>
                                    <p class="availability">Availability: <span>In stock</span></p>
                                    <div class="product-desc">
                                        <%=p.getDescription()%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <% }%>

                </ul>
            </div>
            <!-- ./PRODUCT LIST -->
        </div>
        <!-- ./view-product-list-->
        <div class="sortPagiBar">
            <div class="bottom-pagination">
                <nav>
                    <ul class="pagination">
                        <% for (int i = 1; i <= fullPageCount; i++) { %>
                        <% if (currentPage == i) {%>
                        <li id="selectedPage" class="active"><a href="<%=request.getRequestURL()%>?pageCount=<%=i%>"><%=i%></a></li>
                            <% } else {%>
                        <li id="selectedPage" ><a href="<%=request.getRequestURL()%>?pageCount=<%=i%>"><%=i%></a></li>
                            <% } %>
                            <% } %>
                        <li>
                            <%if (fullPageCount > 1 && currentPage != fullPageCount) {%>
                            <a href="<%=request.getRequestURL()%>?pageCount=<%=++currentPage%>%>" aria-label="Next">
                                <span aria-hidden="true">Next &raquo;</span>
                            </a>
                            <% }%>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="show-product-item">
                <select name="">
                    <option value="">Show 18</option>
                    <option value="">Show 20</option>
                    <option value="">Show 50</option>
                    <option value="">Show 100</option>
                </select>
            </div>
            <div class="sort-product">
                <select>
                    <option value="">Product Name</option>
                    <option value="">Price</option>
                </select>
                <div class="sort-product-icon">
                    <i class="fa fa-sort-alpha-asc"></i>
                </div>
            </div>
        </div>
    </body>
</html>
