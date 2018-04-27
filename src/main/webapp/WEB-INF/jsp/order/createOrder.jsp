<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.5.css">
    <title>订单明细</title>

</head>
<body>
<c:set var="count" value="0"></c:set>
<c:forEach var="detail" items="${detailList}">
    <c:set var="count" value="${count + detail.goodsCount}"></c:set>
</c:forEach>
<div id="app-placeholder" class="transparent-container">
    <div data-reactroot="" class="order-dinner-cart o-flex o-flex--column">
        <div class="order-dinner-cart-inner">
            <div class="copyright">
                <div class="sync-order-cart">
                    <div class="sync-order-cart-main">
                        <div class="sync-order-cart__header of">
                            <p class="sync-order-cart__title">
                                订单明细
                                <span>
                                    (共
                                    ${count}
                                    份)
                                </span>
                            </p>
                        </div>
                        <div class="order-dish-option">
                            <div class="options-group shop-cart">
                                <div class="option editor">
                                    <div class="weixin-login"><a class="option-user">
                                        <img class="option-user-icon"
                                             src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjEyMHB4IiBoZWlnaHQ9IjEyMHB4IiB2aWV3Qm94PSIwIDAgMTIwIDEyMCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj4KICAgIDwhLS0gR2VuZXJhdG9yOiBTa2V0Y2ggNDAgKDMzNzYyKSAtIGh0dHA6Ly93d3cuYm9oZW1pYW5jb2RpbmcuY29tL3NrZXRjaCAtLT4KICAgIDx0aXRsZT7pu5jorqTlpLTlg488L3RpdGxlPgogICAgPGRlc2M+Q3JlYXRlZCB3aXRoIFNrZXRjaC48L2Rlc2M+CiAgICA8ZGVmcz48L2RlZnM+CiAgICA8ZyBpZD0iUGFnZS0xIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0i6K6i5Y2V5YiX6KGoX+WggumjnyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3OC4wMDAwMDAsIC0yMDkyLjAwMDAwMCkiPgogICAgICAgICAgICA8ZyBpZD0i6buY6K6k5aS05YOPIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxNzguMDAwMDAwLCAyMDkyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgZmlsbD0iI0YxRjFGMSIgeD0iMCIgeT0iMCIgd2lkdGg9IjEyMCIgaGVpZ2h0PSIxMjAiPjwvcmVjdD4KICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNNjQuMzkwMjQzOSw1MS4yMTk1MTIyIEw2NC4zOTAyNDM5LDUxLjIxOTUxMjIgQzYzLjkyMDI5NzMsNTMuMjA4OTgwNSA2Mi4xMzMwNDI2LDU0LjY4OTQ3NDcgNjAsNTQuNjg5NDc0NyBDNTcuODY2OTU3NCw1NC42ODk0NzQ3IDU2LjA3OTcwMjcsNTMuMjA4OTgwNSA1NS42MDk3NTYxLDUxLjIxOTUxMjIiIGlkPSJDb21iaW5lZC1TaGFwZSIgc3Ryb2tlPSIjQjFCMUIxIiBzdHJva2Utd2lkdGg9IjMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCI+PC9wYXRoPgogICAgICAgICAgICAgICAgICAgIDxlbGxpcHNlIGlkPSJPdmFsLTciIGZpbGw9IiM5Nzk3OTciIGN4PSIzOC4wNDg3ODA1IiBjeT0iNDYuODI5MjY4MyIgcng9IjUuODUzNjU4NTQiIHJ5PSI1Ljg1MzY1ODU0Ij48L2VsbGlwc2U+CiAgICAgICAgICAgICAgICAgICAgPGVsbGlwc2UgaWQ9Ik92YWwtNy1Db3B5IiBmaWxsPSIjOTc5Nzk3IiBjeD0iODEuOTUxMjE5NSIgY3k9IjQ2LjgyOTI2ODMiIHJ4PSI1Ljg1MzY1ODU0IiByeT0iNS44NTM2NTg1NCI+PC9lbGxpcHNlPgogICAgICAgICAgICAgICAgICAgIDxlbGxpcHNlIGlkPSJPdmFsLTctQ29weS0yIiBmaWxsPSIjRDhEOEQ4IiBvcGFjaXR5PSIwLjciIGN4PSI5NS4xMjE5NTEyIiBjeT0iNjcuMzE3MDczMiIgcng9IjEwLjI0MzkwMjQiIHJ5PSIxMC4yNDM5MDI0Ij48L2VsbGlwc2U+CiAgICAgICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbC03LUNvcHktMyIgZmlsbD0iI0Q4RDhEOCIgb3BhY2l0eT0iMC43IiBjeD0iMjQuODc4MDQ4OCIgY3k9IjY3LjMxNzA3MzIiIHI9IjEwLjI0MzkwMjQiPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4="
                                             alt="用户头像">
                                        <p class="option-user-name">${userInfo.userName} 先生</p>
                                    </a>
                                        <p class="dish-count">共 ${count} 份</p>
                                    </div>
                                </div>
                            </div>

                            <div class="cart-ordered-list">
                                <c:forEach items="${detailList}" var="detail">
                                    <div class="cart-ordered-dish">
                                        <div class="ordered-dish">
                                            <span class="dish-name">${detail.goodsName}</span>
                                            <span class="dish-price price ellipsis">
                                                    ${detail.goodsPrice * detail.goodsCount}
                                            </span>
                                            <div class="counter">
                                            <span class="counter-num" style="min-width: 35px; z-index: 11;">
                                            共 ${detail.goodsCount} 份
                                        </span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
</body>
</html>

