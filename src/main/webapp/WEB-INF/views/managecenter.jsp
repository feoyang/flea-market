<%--
  Created by IntelliJ IDEA.
  student: root
  Date: 2018/5/21
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理中心</title>
    <%@ include file="components/jspheader.jsp"%>
    <script language="JavaScript">
        // $(document).ready(function() {
        //     //绑定下拉框change事件，当下来框改变时调用 SelectChange()方法
        //     $("#checkGoodsStatus").change(function() { SelectChange(); });
        // })

        function SelectChange(selectId) {
            //获取下拉框选中项的value属性值
            var selectValue = $("#" + selectId).val();

            var twoText = selectValue.split(".");
            var status = twoText[0];
            var goodsId = twoText[1];
            $.ajax({
                type: "post",
                contentType: "application/string",
                dataType: "json",
                async: false,
                url: "/goodswill/goods/changeGoodsStatus?status=" + status + "&goodsId=" + goodsId,
                success: function (data) {
                    datas = data;
                },
            });

        }
    </script>

    <!-- //animation-effect -->
</head>

<body>


<%@ include file="/WEB-INF/views/components/header.jsp"%>
<div class="manager">
    <div class="container">
        <div class="">
            <div class="container">
                <div class="footer-grids">
                    <!--banner-bottom-grid-left-->
                    <div class="row">
                        <div class="col-md-3 information " data-wow-delay=".5s">
                            <form >
                                <div class="self_information">
                                    <c:if test="${sessionScope.student.img!=null}">
                                        <img src="${pageContext.request.contextPath}/static/images/avatar/${sessionScope.student.studentNo}.jpg" alt=" " class="avatar rounded-circle mx-auto d-block" >
                                    </c:if>
                                    <c:if test="${sessionScope.student.img==null}">
<%--                                        <button type="button" class="avatar-button border-0 rounded-circle" > <img src="/static/images/avatar/nwpu.jpg" class="avatar rounded-circle mx-auto d-block" /></button>--%>
                                        <img src="${pageContext.request.contextPath}/static/images/avatar/nwpu.jpg" alt=" " class="avatar rounded-circle mx-auto d-block" >
                                        <div class="avatar overlay rounded-circle">
                                            <input type="file" accept="image/*" id="imageInput" style="display: none;">
                                            <button  class="avatar-button rounded-3" onclick="uploadImage()">上传图像</button>
                                            <script>
                                                function uploadImage() {
                                                    document.getElementById('imageInput').click();
                                                }
                                                document.getElementById('imageInput').addEventListener('change', function () {
                                                    var selectedFile = this.files[0];
                                                    if (selectedFile) {
                                                        var formData = new FormData();
                                                        formData.append('image', selectedFile);
                                                        console.log('Selected file:', selectedFile);
                                                    }
                                                });
                                            </script>
                                        </div>
                                    </c:if>
                                </div>
                                <br>
                                <h4>学号:${sessionScope.student.studentNo}</h4>
                                <br>
                                <h4>昵称:${sessionScope.student.name}</h4><h2></h2>
                                <br>
                                <h4>邮箱:${sessionScope.student.email}</h4><h4></h4>
                                <br>
                                <h4>微信号:${sessionScope.student.wechat}</h4><h4></h4>
                                <br>
                                <h4>手机号:${sessionScope.student.phone}</h4><h4></h4>
                            </form>
                        </div>
                        <div class="col-md-9 " data-wow-delay=".6s">
                            <div class="goods">
                                <div class="">
                                    <div class="status">
                                        <a href="${pageContext.request.getContextPath()}/views/managecenter?status=0" >待审核</a> |
                                        <a href="${pageContext.request.getContextPath()}/views/managecenter?status=1" >待出售</a> |
                                        <a href="${pageContext.request.getContextPath()}/views/managecenter?status=2" >已出售</a> |
                                        <a href="${pageContext.request.getContextPath()}/views/managecenter?status=3">我的购买</a> |
                                        <a href="${pageContext.request.getContextPath()}/views/managecenter?status=-1" >审核未通过</a> |
                                        <a href="/views/insert">添加商品</a> <span></span>
                                    </div>
                                    <br>
                                    <c:if test="${status == 0}"><h4>待审核: ${goodsList.size()} 件商品</h4></c:if>
                                    <c:if test="${status == 1}"><h4>待出售: ${goodsList.size()} 件商品</h4></c:if>
                                    <c:if test="${status == 2}"><h4>已出售: ${goodsList.size()} 件商品</h4></c:if>
                                    <c:if test="${status == 3}"><h4>我的购买: ${goodsList.size()} 件商品</h4></c:if>
                                    <c:if test="${status == 4}"><h4>欲购买: ${goodsList.size()} 件商品</h4></c:if>
                                    <c:if test="${status == -1}"><h4>审核未通过: ${goodsList.size()} 件商品</h4></c:if>

                                    <br>
                                    <c:if test="${status == 0}">
                                        <div class="student-goods  ">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="student-goods-image">
                                                        <img src="${pageContext.request.getContextPath()}/static/images/dz11.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                    </div>
                                                    <br>
                                                    <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=1">>>更多</a></h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <h3>于2023年5月3299购入的电脑</h3>
                                                    <p>电子产品</p>
                                                    <h3 class="money ">￥ 2899</h3>
                                                    <h4 class="date">2023年12月</h4>
                                                    <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                    <button type="button" class="btn btn-outline-dark pull-right"  onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">编辑</button>
                                                    <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                </div>
                                            </div>
                                        </div>

                                        <c:forEach items="${goodsList}" var="goods" varStatus="vs">
                                            <%--                                            <c:if test="${goods.status == 0}">--%>
                                            <div class="student-goods  ">
                                                <div class="row">
                                                    <div class="col-md-md-3">
                                                        <div class="student-goods-image">
                                                            <img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagePath}.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                        </div>
                                                        <br>
                                                        <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                                    </div>
                                                    <div class="col-md-md-9">
                                                        <h3>${goods.goodsName}</h3>
                                                        <p>${goods.goodsStatus}</p>
                                                        <h3 class="money ">${goods.price}</h3>
                                                        <h4 class="date">${goods.description}</h4>
                                                        <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                        <button type="button" class="btn btn-outline-dark pull-right">编辑</button>
                                                        <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--                                            </c:if>--%>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${status == 1}">
                                        <div class="student-goods  ">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="student-goods-image">
                                                        <img src="${pageContext.request.getContextPath()}/static/images/dz11.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                    </div>
                                                    <br>
                                                    <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <h3>于2023年5月3299购入的电脑</h3>
                                                    <p>电子产品</p>
                                                    <h3 class="money ">￥ 2899</h3>
                                                    <h4 class="date">2023年12月</h4>
                                                    <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                    <button type="button" class="btn btn-outline-dark pull-right">编辑</button>
                                                    <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                </div>
                                            </div>
                                        </div>
                                        <c:forEach items="${goodsList}" var="goods" varStatus="vs">
                                            <c:if test="${goods.status == 1&&goods.goodsStatus==0}">
                                                <div class="student-goods  ">
                                                    <div class="row">
                                                        <div class="col-md-md-3">
                                                            <div class="student-goods-image">
                                                                <img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagePath}.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                            </div>
                                                            <br>
                                                            <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                                        </div>
                                                        <div class="col-md-md-9">
                                                            <h3>${goods.goodsName}</h3>
                                                            <p>${goods.goodsStatus}</p>
                                                            <h3 class="money ">${goods.price}</h3>
                                                            <h4 class="date">${goods.description}</h4>
                                                            <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                            <button type="button" class="btn btn-outline-dark pull-right">编辑</button>
                                                            <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${status == 2}">
                                        <div class="student-goods  ">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="student-goods-image">
                                                        <img src="${pageContext.request.getContextPath()}/static/images/dz11.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                    </div>
                                                    <br>
                                                    <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <h3>于2023年5月3299购入的电脑</h3>
                                                    <p>电子产品</p>
                                                    <h3 class="money ">￥ 2899</h3>
                                                    <h4 class="date">2023年12月</h4>
                                                    <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                    <button type="button" class="btn btn-outline-dark pull-right">编辑</button>
                                                    <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                </div>
                                            </div>
                                        </div>
                                        <c:forEach items="${goodsList}" var="goods" varStatus="vs">
                                            <c:if test="${goods.goodsStatus == 1}">
                                                <div class="student-goods  ">
                                                    <div class="row">
                                                        <div class="col-md-md-3">
                                                            <div class="student-goods-image">
                                                                <img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagePath}.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                            </div>
                                                            <br>
                                                            <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                                        </div>
                                                        <div class="col-md-md-9">
                                                            <h3>${goods.goodsName}</h3>
                                                            <p>${goods.goodsStatus}</p>
                                                            <h3 class="money ">${goods.price}</h3>
                                                            <h4 class="date">${goods.description}</h4>
                                                            <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                            <button type="button" class="btn btn-outline-dark pull-right">编辑</button>
                                                            <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${status == 3}">
                                        <div class="student-goods  row">
                                            <div class="col-md-md-3">
                                                <div class="student-goods-image">
                                                    <img src="${pageContext.request.getContextPath()}/static/images/2021301455.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                </div>
                                                <br>
                                                <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                            </div>
                                            <div class="col-md-md-9">
                                                <h3>于2023年5月3299购入的电脑</h3>
                                                <p>电子产品</p>
                                                <br>
                                                <h3 class="money ">￥ 2899</h3>
                                                <br>
                                                <h4 class="date">2023年12月</h4>

                                            </div>
                                        </div>
                                        <c:forEach items="${goodsList}" var="goods" varStatus="vs">
                                            <c:if test="${goods.status == 3}">
                                                <div class="student-goods  ">
                                                    <div class="row">
                                                        <div class="col-md-md-3">
                                                            <div class="student-goods-image">
                                                                <img src="${pageContext.request.getContextPath()}/static/upload/file/${goods.imagePath}.jpg" alt=" " class="img-rounded" width="125px" height="125px"/>
                                                            </div>
                                                            <br>
                                                            <h4><a class="item_add" href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">>>更多</a></h4>
                                                        </div>
                                                        <div class="col-md-md-9">
                                                            <h3>${goods.goodsName}</h3>
                                                            <p>${goods.goodsStatus}</p>
                                                            <h3 class="money ">${goods.price}</h3>
                                                            <h4 class="date">${goods.description}</h4>
                                                            <button type="button" class="btn btn-outline-dark pull-right">删除</button>
                                                            <button type="button" class="btn btn-outline-dark pull-right">编辑</button>
                                                            <button type="button" class="btn btn-outline-dark pull-right">降价</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>

                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <%--        <div class="col-md-md-7  products-left">--%>
    <%--            <div class="col-md-md-10 categories animated wow slideInUp single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">--%>
    <%--                <h4><span class="item_price">基本信息</span></h4>--%>
    <%--                <div class="color-quality">--%>
    <%--                    <div class="color-quality-left">--%>
    <%--                        <p>学号：${sessionScope.student.studentNo}</p><h5></h5>--%>
    <%--                        <p>昵称：${sessionScope.student.name}</p><h5></h5>--%>
    <%--                        <p>微信号：${sessionScope.student.wechat}</p><h5></h5>--%>
    <%--                        <p>手机号：${sessionScope.student.phone}</p><h5></h5>--%>
    <%--                        <p>邮箱：${sessionScope.student.email}</p><h5></h5>--%>
    <%--                        <li><a href="insert">添加商品</a> <span></span></li>--%>
    <%--                        <li><a href="${pageContext.request.getContextPath()}/views/managecenter?status=0">待审核</a> <span></span></li>--%>
    <%--                        <li><a href="${pageContext.request.getContextPath()}/views/managecenter?status=1">已审核</a> <span></span></li>--%>
    <%--                    </div>--%>
    <%--                    <div class="clearfix"> </div>--%>
    <%--                </div>--%>

    <%--                <div class="occasional">--%>
    <%--                    <div class="clearfix"> </div>--%>
    <%--                </div>--%>
    <%--                &lt;%&ndash;<div class="occasion-cart">&ndash;%&gt;--%>
    <%--                    &lt;%&ndash;<a class="correct" href="register.html">修改 </a>&ndash;%&gt;--%>
    <%--                &lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--            </div>--%>
    <%--            <div class="clearfix"> </div>--%>
    <%--        </div>--%>
    <div class="clearfix"> </div>
</div>
</div>
<!-- -->

<!-- checkout -->
<%--<div class="checkout">--%>
<%--    <div class="container">--%>
<%--        <h3 class="animated wow slideInLeft" data-wow-delay=".5s">--%>
<%--            <c:if test="${status == 1}">已审核: </c:if>--%>
<%--            <c:if test="${status == 0}">待审核: </c:if>--%>
<%--            <span>${goodsList.size()} 件商品</span></h3>--%>
<%--        <div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">--%>
<%--            <table class="timetable_sub">--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th>序号</th>--%>
<%--                    <th>商品名称</th>--%>
<%--                    <!--<th>速度快放假</th>-->--%>
<%--                    <th>商品分类</th>--%>
<%--                    <th>价格</th>--%>
<%--                    <th>状态</th>--%>
<%--                    <th>商品状态</th>--%>
<%--                    <!--<th>Remove</th>-->--%>
<%--                </tr>--%>
<%--                </thead>--%>

<%--                <c:forEach items="${goodsList}" var="goods" varStatus="vs">--%>
<%--                    <tr class="rem1">--%>
<%--                        <td class="invert">${vs.index + 1}</td>--%>
<%--                        <td class="invert-image"><a href="${pageContext.request.getContextPath()}/views/single?goodsId=${goods.id}">${goods.goodsName}</a></td>--%>
<%--                        <td class="invert">--%>
<%--                            <c:if test="${goods.cate == '1'}">图书书籍</c:if>--%>
<%--                            <c:if test="${goods.cate == '2'}">日用百货</c:if>--%>
<%--                            <c:if test="${goods.cate == '3'}">娱乐</c:if>--%>
<%--                        </td>--%>
<%--                        <td class="invert">&yen${goods.price}</td>--%>
<%--                        <td class="invert">--%>
<%--                            <c:if test="${goods.status == 0}">待审核</c:if>--%>
<%--                            <c:if test="${goods.status == 1}">已审核</c:if>--%>
<%--                        </td>--%>
<%--                        <td class="invert">--%>
<%--                            <select <c:if test="${goods.status == 0}">disabled</c:if> id="checkGoodsStatus${vs.index+1}" name="checkGoodsStatus${vs.index+1}" onchange="SelectChange('checkGoodsStatus${vs.index+1}')">--%>
<%--                                <option value="0.${goods.id}" <c:if test="${goods.goodsStatus == 0}">selected</c:if>>未出售</option>--%>
<%--                                <option value="1.${goods.id}" <c:if test="${goods.goodsStatus == 1}">selected</c:if>>已出售</option>--%>
<%--                            </select>--%>


<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>


<%--                &lt;%&ndash;<tr class="rem1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">1</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">深度学习</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">图书书籍</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen168.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核</td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<tr class="rem2">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">2</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">羽毛球拍</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">日用百货：运动类</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen128.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核</td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<tr class="rem3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">3</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">小米头戴式耳机</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">娱乐：电子产品</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen499.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核 </td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<tr class="rem1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">4</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">深度学习</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">图书书籍</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen168.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核</td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<tr class="rem1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">5</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">深度学习</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">图书书籍</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen168.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核</td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<tr class="rem1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">6</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">深度学习</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">图书书籍</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen168.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核</td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<tr class="rem1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">7</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert-image"><a href="single.html">深度学习</a></td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">图书书籍</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">&yen168.00</td>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;<td class="invert">已审核</td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--            </table>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- //checkout -->

<!--&lt;!&ndash; banner-bottom &ndash;&gt;-->
<%--<div class="banner-bottom">--%>
<%--    <div class="container">--%>
<%--        <h3 class="animated wow zoomIn" data-wow-delay=".5s">热门商品</h3>--%>
<%--        <div class="banner-bottom-grids">--%>
<%--            <div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">--%>
<%--                <div class="grid">--%>
<%--                    <figure class="effect-julia">--%>
<%--                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp1.jpg" alt=" " class="img-responsive" />--%>
<%--                    </figure>--%>
<%--                    <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">--%>
<%--                        <div class="banner-bottom-grid-left-grid1">--%>
<%--                            <img src="${pageContext.request.getContextPath()}/static/images/rmsp2.jpg" alt=" " class="img-responsive" />--%>
<%--                        </div>--%>
<%--                        <div class="banner-bottom-grid-left1-position">--%>
<%--                            <div class="banner-bottom-grid-left1-pos1">--%>
<%--                                <p>Latest New Collections</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">--%>
<%--                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">--%>
<%--                    <div class="banner-bottom-grid-left-grid1">--%>
<%--                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp3.jpg" alt=" " class="img-responsive" />--%>
<%--                    </div>--%>
<%--                    <div class="banner-bottom-grid-left1-pos">--%>
<%--                        <p>Discount 45%</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">--%>
<%--                    <div class="banner-bottom-grid-left-grid1">--%>
<%--                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp4.jpg" alt=" " class="img-responsive" />--%>
<%--                    </div>--%>
<%--                    <div class="banner-bottom-grid-left1-position">--%>
<%--                        <div class="banner-bottom-grid-left1-pos1">--%>
<%--                            <p>Latest New Collections</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">--%>
<%--                <div class="banner-bottom-grid-left-grid grid-left-grid1">--%>
<%--                    <div class="banner-bottom-grid-left-grid1">--%>
<%--                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp5.jpg" alt=" " class="img-responsive" />--%>
<%--                        <!--<img src="images/3.jpg" alt=" " class="img-responsive" />-->--%>
<%--                    </div>--%>
<%--                    <div class="grid-left-grid1-pos">--%>
<%--                        <p>top and classic designs </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">--%>
<%--                    <div class="banner-bottom-grid-left-grid1">--%>
<%--                        <img src="${pageContext.request.getContextPath()}/static/images/rmsp6.jpg" alt=" " class="img-responsive" />--%>
<%--                    </div>--%>
<%--                    <div class="banner-bottom-grid-left1-position">--%>
<%--                        <div class="banner-bottom-grid-left1-pos1">--%>
<%--                            <p>2016 Collection</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="clearfix"> </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- //banner-bottom -->

<!-- footer -->
<%@ include file="components/footer.jsp"%>
<!-- //footer -->
</body>
</html>