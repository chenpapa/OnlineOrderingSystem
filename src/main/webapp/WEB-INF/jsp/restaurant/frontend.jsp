<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta name="format-detection" content="telephone=no"/>
    <link href="${pageContext.request.contextPath}/css/theme.css" rel="stylesheet" type="text/css">
    <title>堂食点餐</title>
</head>
<body>
<div class="main">

    <!-- 商家头信息 -->
    <div class="dish-mesthead ads-existed">
        <div class="shop">
            <!-- 商家圆形logo -->
            <img class="shop-logo" src="${pageContext.request.contextPath}/img/${restaurantInfo.restaurantLogo}"
                 alt="门店logo">
            <!-- 商家信息 -->
            <div class="shop-business-info-container">
                <div class="shop-title o-text-ellipsis">
                    <span class="of o-text-ellipsis">${restaurantInfo.restaurantName}</span>
                </div>
                <span class="o-fz--12 shop-time-box">
                    <time class="shop-status o-text-ellipsis">
                        营业中
                    </time>
                </span>
            </div>
        </div>
        <div class="ads-column-container">
            <div class="ads-column o-flex">
                <div class="o-flex__fluid of">
                    <div class="ads-column__content-outer">
                        <div class="ads-column__content of">
                            <i class="icon icon-notice"></i>
                            <span
                                    class="detail o-text-ellipsis o-flex__fluid">
                                <span class="detail-inner o-text-ellipsis">
                                    营业时间：00:00-24:00
                                </span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="dish-mesthead-opendialog"></div>
    </div>

    <!-- 生成左边菜系栏 -->
    <div class="left-menu">
        <ul>
            <c:forEach items="${catalogList}" var="catalog" varStatus="status">
                <c:if test="${status.count == 1}">
                    <li class="active">${catalog.catalogName}<span class="num-price"></span></li>
                </c:if>
            </c:forEach>
            <c:forEach items="${catalogList}" var="catalog" begin="1">
                <li>${catalog.catalogName}</li>
            </c:forEach>
        </ul>
    </div>

    <div class="con">
        <c:forEach items="${catalogList}" var="catalog" varStatus="status">
        <c:if test="${status.count == 1}">
        <div class="right-con con-active">
            <ul>
                </c:if>
                </c:forEach>

                <c:forEach items="${list}" var="goodsListForEach" varStatus="index">
                    <c:if test="${index.count == 1}">
                        <c:forEach items="${goodsListForEach}" var="goods">
                            <li data-id="${goods.goodsId}">
                                <div class="menu-img">
                                    <img src="${pageContext.request.contextPath}/img/${goods.goodsPic}"
                                         width="55" height="55"/>
                                </div>
                                <div class="menu-txt">
                                    <h4>${goods.goodsName}</h4>
                                    <p class="list1">招牌菜</p>
                                    <p class="list2">
                                        <b>￥${goods.goodsPrice}</b>
                                    <div class="btn">
                                        <button class="minus">
                                            <strong></strong>
                                        </button>
                                        <i>0</i>
                                        <button class="add">
                                            <strong></strong>
                                        </button>
                                        <i class="price">${goods.goodsPrice}</i>
                                    </div>
                                    </p>
                                </div>
                            </li>
                        </c:forEach>
                    </c:if>
                </c:forEach>

            </ul>
        </div>

        <c:forEach items="${catalogList}" varStatus="catalogIndex" begin="1">
            <c:forEach items="${list}" var="goodsListForEach" varStatus="goodsListIndex" begin="1">
                <c:if test="${catalogIndex.count == goodsListIndex.count}">
                    <div class="right-con">
                        <ul>
                            <c:forEach items="${goodsListForEach}" var="goods">
                                <li data-id="${goods.goodsId}">
                                    <div class="menu-img">
                                        <img src="${pageContext.request.contextPath}/img/${goods.goodsPic}"
                                             width="55" height="55"/>
                                    </div>
                                    <div class="menu-txt">
                                        <h4>${goods.goodsName}</h4>
                                        <p class="list1">招牌菜</p>
                                        <p class="list2">
                                            <b>￥${goods.goodsPrice}</b>
                                        <div class="btn">
                                            <button class="minus">
                                                <strong></strong>
                                            </button>
                                            <i>0</i>
                                            <button class="add">
                                                <strong></strong>
                                            </button>
                                            <i class="price">${goods.goodsPrice}</i>
                                        </div>
                                        </p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </c:if>
            </c:forEach>
        </c:forEach>
    </div>

    <div class="footer">
        <div class="left">已选：
            <span id="cartN">
			<span id="totalcountshow">0</span>份　总计：￥<span id="totalpriceshow">0</span></span>元
        </div>
        <div class="right">
            <button id="btnselect" class="xhlbtn  disable">去结算</button>
        </div>
    </div>

</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>

</body>
</html>
