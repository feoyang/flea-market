<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sports</title>
    <%@ include file="../components/jspheader.jsp"%>
</head>

<%--<body>

<%@ include file="/WEB-INF/views/components/header.jsp" %>

<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="${pageContext.request.contextPath}/views/index"><span class="glyphicon glyphicon-home"
                                                                               aria-hidden="true"></span>主页</a></li>
            <li class="active">商品分类</li>
            <li class="active">运动类</li>
        </ol>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
                <h3>点击量</h3>
                <ul class="dropdown-menu1">
                    <li><a href="">
                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0"/>
                    </a></li>
                </ul>
                <script type='text/javascript'>//<![CDATA[
                $(window).load(function () {
                    $("#slider-range").slider({
                        range: true,
                        min: 0,
                        max: 100000,
                        values: [20000, 80000],
                        slide: function (event, ui) {
                            $("#amount").val("" + ui.values[0] + " - " + ui.values[1]);
                        }
                    });
                    $("#amount").val("" + $("#slider-range").slider("values", 0) + " - " + $("#slider-range").slider("values", 1));


                });//]]>
                </script>
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/goodsview_TOBEDELETED/sports.jsp
                <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/lib/jquery-ui.min.js"></script>
=======
                <script type="text/javascript"
                        src="${pageContext.request.getContextPath()}/static/js/jquery-ui.min.js"></script>
>>>>>>> dev:src/main/webapp/WEB-INF/views/sports.jsp
                <!---->
            </div>

            <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                <h3>商品分类</h3>
                <ul class="cate">
                    <li><a href="${pageContext.request.contextPath}/views/books">图书书籍</a>
                        <span>(${bookList.size()+33})</span></li>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/views/books">教材</a> <span></span></li>
                        <li><a href="${pageContext.request.contextPath}/views/tests">考试</a> <span></span></li>
                        <li><a href="${pageContext.request.contextPath}/views/literature">文学</a> <span></span></li>
                    </ul>
                    <li><a href="${pageContext.request.contextPath}/views/sports">日用百货</a>
                        <span>(${storeList.size()+36})</span></li>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/views/sports">运动类</a> <span></span></li>
                        <li><a href="${pageContext.request.contextPath}/views/stationery">文具类</a> <span></span></li>
                        <li><a href="${pageContext.request.contextPath}/views/life">生活类</a> <span></span></li>
                    </ul>
                    <li><a href="${pageContext.request.contextPath}/views/beautymakeup">娱乐</a>
                        <span>(${amazeList.size()+24})</span></li>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/views/beautymakeup">美妆</a> <span></span></li>
                        <li><a href="${pageContext.request.contextPath}/views/electronicproducts">电子产品</a>
                            <span></span></li>
                    </ul>
                </ul>
            </div>

            <div class="new-products animated wow slideInUp" data-wow-delay=".5s">
                <h3>最受欢迎</h3>
                <div class="new-products-grids">
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"><img
                                    src="${pageContext.request.contextPath}/static/images/yd2.jpg" alt=" "
                                    class="img-responsive"/></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">乒乓拍(赠球)</a>
                            </h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p><span class="item_price">￥45</span><a class="item_add" href="#">立即查看</a></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"><img
                                    src="${pageContext.request.contextPath}/static/images/yd13.jpg" alt=" "
                                    class="img-responsive"/></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">瑜伽垫</a></h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p><span class="item_price">￥60</span><a class="item_add" href="#">立即查看</a></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"><img
                                    src="${pageContext.request.contextPath}/static/images/yd14.png" alt=" "
                                    class="img-responsive"/></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">羽毛拍(赠球)</a>
                            </h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                         class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p><span class="item_price">￥50</span><a class="item_add" href="#">立即查看</a></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!--
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"><img src="${pageContext.request.contextPath}/static/images/6.jpg" alt=" " class="img-responsive" /></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">occaecat cupidatat</a></h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p> <span class="item_price">$180</span><a class="item_add" href="#">立即查看</a></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>-->
                </div>
            </div>

            <div class="men-position animated wow slideInUp" data-wow-delay=".5s">
                <a href="${pageContext.request.contextPath}/views/single?goodsId=5"><img
                        src="${pageContext.request.contextPath}/static/images/27.jpg" alt=" "
                        class="img-responsive"/></a>
                <div class="men-position-pos">
                    <h4>上海师范大学</h4>
                    <h5><span>  GoodsWill</span></h5>
                </div>
            </div>
        </div>

        <div class="col-md-8 products-right">
            <div class="products-right-grid">
                <div class="products-right-grids-position animated wow slideInRight" data-wow-delay=".5s">
                    <img src="${pageContext.request.contextPath}/static/images/yl.jpg" alt=" " class="img-responsive"/>
                    <div class="products-right-grids-position1">
                        <h4>运动</h4>
                        <p>GoodsWill:sports.</p>
                    </div>
                </div>
            </div>

            <div class="products-right-grids-bottom">
                <div class="col-md-4 products-right-grids-bottom-grid">
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd1.jpg"
                                                          alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">棒球</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥150</i> <span class="item_price">￥145</span></p>
                        </div>
                    </div>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd2.jpg"
                                                          alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">乒乓拍(赠球)</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥80</i> <span class="item_price">￥45</span></p>
                        </div>
                    </div>

                    <!--
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd3.png" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">羽毛拍(赠球)？</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥75</i> <span class="item_price">￥50</span></p>
                        </div>
                    </div>
-->
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd4.png"
                                                          alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">健腹肌板</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥80</i> <span class="item_price">￥60</span></p>
                        </div>
                    </div>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd6.jpg"
                                                          alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">篮球</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥50</i> <span class="item_price">￥45</span></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 products-right-grids-bottom-grid">
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd7.jpg"
                                                          alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">斯伯丁篮球</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥120</i> <span class="item_price">￥95</span></p>
                        </div>
                    </div>


                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img
                                    src="${pageContext.request.contextPath}/static/images/yd15.jpg" alt=" "
                                    class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">足球(经典款)</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥60</i> <span class="item_price">￥40</span></p>
                        </div>
                    </div>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd8.jpg"
                                                          alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">排球</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥40</i> <span class="item_price">￥25</span></p>
                        </div>
                    </div>

                    <!--
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd9.jpg" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">Formal Shirt</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>$280</i> <span class="item_price">$250</span></p>
                        </div>
                    </div>
-->
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img
                                    src="${pageContext.request.contextPath}/static/images/yd10.jpg" alt=" "
                                    class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">哑铃*2</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥60</i> <span class="item_price">￥40</span></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 products-right-grids-bottom-grid">
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img
                                    src="${pageContext.request.contextPath}/static/images/yd11.jpg" alt=" "
                                    class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">瑜伽哑铃</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥20</i> <span class="item_price">￥10</span></p>
                        </div>
                    </div>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img
                                    src="${pageContext.request.contextPath}/static/images/yd12.png" alt=" "
                                    class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">哑铃*1</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥35</i> <span class="item_price">￥30</span></p>
                        </div>
                    </div>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img
                                    src="${pageContext.request.contextPath}/static/images/yd13.jpg" alt=" "
                                    class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">瑜伽垫</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥70</i> <span class="item_price">￥60</span></p>
                        </div>
                    </div>

                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5"
                               class="product-image"><img
                                    src="${pageContext.request.contextPath}/static/images/yd14.png" alt=" "
                                    class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" "
                                             class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">羽毛拍(赠球)</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>￥70</i> <span class="item_price">￥50</span></p>
                        </div>
                    </div>

                    <!--
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/views/single?goodsId=5" class="product-image"><img src="${pageContext.request.contextPath}/static/images/yd15.jpg" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/views/single?goodsId=5">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="${pageContext.request.contextPath}/views/single?goodsId=5">Casual Shoes</a></h4>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>$500</i> <span class="item_price">$480</span></p>
                        </div>
                    </div>-->
                </div>

                <div class="clearfix"></div>
            </div>

            <!--
            <h2 class="animated wow zoomIn" data-wow-delay=".5s">
                <a class="header-grid-right" href="${pageContext.request.contextPath}/views/login.jsp">更多 > ></a>
            </h2>
            -->
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- footer -->
<%@ include file="components/footer.jsp" %>
<!-- //footer -->
</body>--%>
</html>
