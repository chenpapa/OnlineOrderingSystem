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
    <title>购物车</title>
</head>
<body>
<div id="app-placeholder" class="transparent-container">
    <div data-reactroot="" class="order-dinner-cart o-flex o-flex--column">
        <div class="order-dinner-cart-inner">
            <div class="sync-order-cart">
                <div class="sync-order-cart__header of">
                    <p class="sync-order-cart__title">
                        购物车
                        <span>(共1份)</span>
                    </p>
                    <button class="sync-order-cart__clear">清空购物车</button>
                </div>
                <div class="order-dish-option">
                    <div class="options-group shop-cart">
                        <div class="option editor">
                            <div class="weixin-login">
                                <a class="option-user">
                                    <p class="option-user-name">陈涛 先生</p>
                                </a>
                                <p class="dish-count">共1份</p>
                            </div>
                        </div>
                    </div>
                    <div class="cart-ordered-list">
                        <div class="cart-ordered-dish">
                            <div class="ordered-dish">
                                <span class="dish-name">小馆椒麻鱼大份</span>
                                <span class="dish-price price ellipsis">48</span>
                                <div class="counter">
                                    <a class="counter-minus">
                                        <span class="counter-click-mask"></span>
                                    </a>
                                    <span class="counter-num"
                                          style="min-width: 35px; z-index: 11;">1</span>
                                    <a class="counter-add">
                                        <span class="counter-click-mask"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shortcut-operate">
            <div class="shortcut-multi btn-shortcut-default">
                <!-- 功能图标 -->
                <div class="btn-shortcut btn-shortcut-default bg-grey">
                    <!-- 功能按钮左侧图标 -->
                    <img class="btn-shortcut-icon"
                         src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjIycHgiIGhlaWdodD0iMTlweCIgdmlld0JveD0iMCAwIDIyIDE5IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA0MCAoMzM3NjIpIC0gaHR0cDovL3d3dy5ib2hlbWlhbmNvZGluZy5jb20vc2tldGNoIC0tPgogICAgPHRpdGxlPuWKn+iDvTwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPjwvZGVmcz4KICAgIDxnIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLloILpo5/ngrnppJAiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC02OC4wMDAwMDAsIC0xMjQ5LjAwMDAwMCkiIGZpbGw9IiNGRkZGRkYiPgogICAgICAgICAgICA8ZyBpZD0i5Yqf6IO9IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg2OC4wMDAwMDAsIDEyNDkuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICA8Y2lyY2xlIGlkPSJPdmFsIiBjeD0iMS41IiBjeT0iMS41IiByPSIxLjUiPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbC1Db3B5IiBjeD0iMS41IiBjeT0iOS41IiByPSIxLjUiPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbC1Db3B5LTIiIGN4PSIxLjUiIGN5PSIxNy41IiByPSIxLjUiPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgPGcgaWQ9Ikdyb3VwIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg1LjAwMDAwMCwgMC4wMDAwMDApIj4KICAgICAgICAgICAgICAgICAgICA8cmVjdCBpZD0iUmVjdGFuZ2xlLTciIHg9IjAuMDQ0MDkwNTgyOSIgeT0iMCIgd2lkdGg9IjE2Ljk1NTkwOTQiIGhlaWdodD0iMyIgcng9IjEuNSI+PC9yZWN0PgogICAgICAgICAgICAgICAgICAgIDxyZWN0IGlkPSJSZWN0YW5nbGUtNy1Db3B5IiB4PSIwLjA0NDA5MDU4MjkiIHk9IjE2IiB3aWR0aD0iMTYuOTU1OTA5NCIgaGVpZ2h0PSIzIiByeD0iMS41Ij48L3JlY3Q+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZS03LUNvcHktMiIgeD0iMC4wNDQwOTA1ODI5IiB5PSI4IiB3aWR0aD0iMTYuOTU1OTA5NCIgaGVpZ2h0PSIzIiByeD0iMS41Ij48L3JlY3Q+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
                         role="presentation"
                         style="width: 12px; vertical-align: -1px;">
                    <span class="btn-shortcut-text">功能</span>
                </div>
            </div>
            <!-- 选好了图标 -->
            <div class="btn-shortcut btn-shortcut-larger bg-orange btn-synco-btn--primary">
                <!-- √图标 -->
                <img class="btn-shortcut-icon"
                     src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjMycHgiIGhlaWdodD0iMjVweCIgdmlld0JveD0iMCAwIDMyIDI1IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA0MCAoMzM3NjIpIC0gaHR0cDovL3d3dy5ib2hlbWlhbmNvZGluZy5jb20vc2tldGNoIC0tPgogICAgPHRpdGxlPumAieWlveWVpjwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPjwvZGVmcz4KICAgIDxnIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLloILpo5/ngrnppJBf6LSt54mp6L2mLSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMwNi4wMDAwMDAsIC0xMjQ1LjAwMDAwMCkiIGZpbGw9IiNGRkZGRkYiPgogICAgICAgICAgICA8ZyBpZD0iR3JvdXAtNi1Db3B5LTMiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDI1MC4wMDAwMDAsIDEyMTguMDAwMDAwKSI+CiAgICAgICAgICAgICAgICA8cGF0aCBkPSJNODcuMTMzOTY3NiwyNy42MzUyNjQ5IEM4OC4xMDg0MjkyLDI4LjYxNTYzMDQgODguMTM5OTI4LDMwLjIzMjEyNTQgODcuMjA2MDA1NywzMS4yNDM5ODM3IEw2OC44OTc4NDMxLDUxLjA3OTk2MzYgQzY3Ljc3NDgyMzcsNTIuMjk2Njk5IDY2LjA0ODk0NTgsNTIuMjI4MjE0IDY1LjAyMzYzNiw1MC45MDE5Njc1IEw1Ni41MjY3Nzg3LDM5LjkxMTIxMzUgQzU1LjY4MzU2MjEsMzguODIwNTA2IDU1Ljg0NzcyOTIsMzcuMjA4MjU4MiA1Ni44OTIzNywzNi4zMTEwOTAxIEw1Ny40NTA4NjE0LDM1LjgzMTQ0MTMgQzU4LjQ5NTk4ODQsMzQuOTMzODU1NSA2MC4xMTk4MDQxLDM1LjAyMDUxMjkgNjEuMDY4NzQ3OCwzNi4wMTU1NTEzIEw2Ni4xNzAzNDEsNDEuMzY0OTUyOSBDNjYuNTUzNjc5NCw0MS43NjY5MTE5IDY3LjIwMzk1NTUsNDEuNzk5NzA2NSA2Ny42MTgzOTk0LDQxLjQ0MTk3NzEgTDgzLjYxODI1MTcsMjcuNjMxNjIxMiBDODQuNjYyMjM0OSwyNi43MzA1MDE3IDg2LjI5NDc2NzMsMjYuNzkwOTgwMiA4Ny4yNzI5NjkyLDI3Ljc3NTEwODcgTDg3LjEzMzk2NzYsMjcuNjM1MjY0OSBaIiBpZD0i6YCJ5aW95ZWmIj48L3BhdGg+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
                     role="presentation" style="width: 12px;">
                <span class="btn-shortcut-text btn-sync-yellow">选好啦</span>
                <!-- 总价图标 -->
                <div class="tag">
                    <div class="tag-bg">
                    </div>
                    <!-- 图标间距 10px * 10px -->
                    <div class="allCount">
                        <em></em><span></span>
                    </div>
                    <!-- 总计 -->
                    <span class="tag-total">总计:<i>48</i>
                    </span>
                </div>
            </div>
            <!-- 加菜图标 -->
            <div class="btn-shortcut btn-shortcut-default bg-grey">
                <!-- 左侧加菜图标 -->
                <img class="btn-shortcut-icon"
                     src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjIycHgiIGhlaWdodD0iMjNweCIgdmlld0JveD0iMCAwIDIyIDIzIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA0MCAoMzM3NjIpIC0gaHR0cDovL3d3dy5ib2hlbWlhbmNvZGluZy5jb20vc2tldGNoIC0tPgogICAgPHRpdGxlPuWKoOiPnDwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPjwvZGVmcz4KICAgIDxnIGlkPSJQYWdlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLloILpo5/ngrnppJBf6LSt54mp6L2mLSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTYxMC4wMDAwMDAsIC0xMjQ3LjAwMDAwMCkiIGZpbGw9IiNGRkZGRkYiPgogICAgICAgICAgICA8ZyBpZD0iR3JvdXAiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDU4MC4wMDAwMDAsIDEyMTguMDAwMDAwKSI+CiAgICAgICAgICAgICAgICA8ZyBpZD0i5Yqg6I+cIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMC4wMDAwMDAsIDI5LjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgIDxyZWN0IGlkPSJSZWN0YW5nbGUtMjAiIHg9IjAiIHk9IjkuNTY1MjE3MzkiIHdpZHRoPSIyMiIgaGVpZ2h0PSIzIiByeD0iMS41Ij48L3JlY3Q+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZS0yMCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDAwMDAwLCAxMS4wNjUyMTcpIHJvdGF0ZSg5MC4wMDAwMDApIHRyYW5zbGF0ZSgtMTEuMDAwMDAwLCAtMTEuMDY1MjE3KSAiIHg9IjAiIHk9IjkuNTY1MjE3MzkiIHdpZHRoPSIyMiIgaGVpZ2h0PSIzIiByeD0iMS41Ij48L3JlY3Q+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
                     role="presentation" style="width: 12px;">
                <span class="btn-shortcut-text">加菜</span>
            </div>
        </div>

        <div class="order-check" style="display: none;">
            <div class="dish-zc-process">
                <ul class="dish-zc-process__holder o-flex">
                    <li class="o-flex o-flex__fluid o-flex--column dish-zc-process__item dish-zc-process__item--active">
                        <i class="dish-zc-process__round"
                           style="background-image: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iODBweCIgaGVpZ2h0PSI4MHB4IiB2aWV3Qm94PSIwIDAgODAgODAiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDQ3ICg0NTM5NikgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+6L+b56iLIC8g5o+Q5Lqk6LSt54mp6L2mPC90aXRsZT4KICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBTa2V0Y2guPC9kZXNjPgogICAgPGRlZnM+PC9kZWZzPgogICAgPGcgaWQ9IlN5bWJvbHMiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLov5vnqIstLy3mj5DkuqTotK3nianovaYiPgogICAgICAgICAgICA8ZyBpZD0i5o+Q5Lqk6LSt54mp6L2mLeW3suWujOaIkCI+CiAgICAgICAgICAgICAgICA8cGF0aCBkPSJNMzIuNjc4MDM3Myw1My4wMzE4MjkyIEMzMy45NDEwOTM5LDUzLjAzMTgyOTIgMzQuOTYyMDQ1Niw1NC4wNTUwNjM3IDM0Ljk2MjA0NTYsNTUuMzE4Mzg2NiBDMzQuOTYyMDQ1Niw1Ni41ODE3MDk2IDMzLjkzOTk1MTksNTcuNjA0OTQ0IDMyLjY3ODAzNzMsNTcuNjA0OTQ0IEMzMS40MTYxMjI3LDU3LjYwNDk0NCAzMC4zOTQwMjksNTYuNTgxNzA5NiAzMC4zOTQwMjksNTUuMzE4Mzg2NiBDMzAuMzk0MDI5LDU0LjA1NTA2MzcgMzEuNDE2MTIyNyw1My4wMzE4MjkyIDMyLjY3ODAzNzMsNTMuMDMxODI5MiBaIE00OC42NjYwOTU0LDUzLjAzMTgyOTIgQzQ5LjkyOTE1MTksNTMuMDMxODI5MiA1MC45NTAxMDM3LDU0LjA1NTA2MzcgNTAuOTUwMTAzNyw1NS4zMTgzODY2IEM1MC45NTAxMDM3LDU2LjU4MTcwOTYgNDkuOTI4MDA5OSw1Ny42MDQ5NDQgNDguNjY2MDk1NCw1Ny42MDQ5NDQgQzQ3LjQwNDE4MDgsNTcuNjA0OTQ0IDQ2LjM4MjA4NzEsNTYuNTgxNzA5NiA0Ni4zODIwODcxLDU1LjMxODM4NjYgQzQ2LjM4MjA4NzEsNTQuMDU1MDYzNyA0Ny40MDQxODA4LDUzLjAzMTgyOTIgNDguNjY2MDk1NCw1My4wMzE4MjkyIFogTTUzLjUyOTg5MSwzMC4wNDczNTQyIEM1NC4xOTY4MjE0LDMwLjgwMDc3NDggNTQuNTAyODc4NSwzMS44NjE3Mzc1IDU0LjM2OTI2NDEsMzIuOTYyNzE0OSBMNTIuNTY5NDY1NSw0My4yNjQ3OTkzIEM1Mi4zNzUzMjQ4LDQ0Ljg2NzY3NiA1MC45Mjg0MDU2LDQ2LjE3MjE1NyA0OS4yODM5MTk2LDQ2LjE3MjE1NyBMMzEuMTY0ODgxOCw0Ny4yOTM3MTM0IEwzMS4zNTQ0NTQ1LDQ4LjYyNzkxOTcgQzMxLjQxODQwNjcsNDkuMTU4NDAxIDMxLjg5NjkwNjUsNDkuNjA4ODUyOCAzMi4zODM0MDAyLDQ5LjYwODg1MjggTDUwLjk1MDEwMzcsNDkuNjA4ODUyOCBDNTEuNTgxNjMxOSw0OS42MDg4NTI4IDUyLjA5MjEwNzgsNTAuMTE5ODk4NCA1Mi4wOTIxMDc4LDUwLjc1MjEzMTUgQzUyLjA5MjEwNzgsNTEuMzg0MzY0NiA1MS41ODE2MzE5LDUxLjg5NTQxMDIgNTAuOTUwMTAzNyw1MS44OTU0MTAyIEwzMi4zODM0MDAyLDUxLjg5NTQxMDIgQzMwLjczNzc3MjMsNTEuODk1NDEwMiAyOS4yOTA4NTMsNTAuNTg4NjQyNiAyOS4wODk4NjAzLDQ4LjkyNTE3MjEgTDI3LjE1MzAyMTMsMzUuMjczMjgxMSBMMjYuMDQ5ODQ1MywyOC44OTYwNzI1IEMyNS45ODI0NjcsMjguMzM5Mjk1OCAyNS40NzU0MTcyLDI3Ljg4NjU1NzQgMjQuOTc4NjQ1NCwyNy44ODY1NTc0IEwyMy41NDIwMDQxLDI3Ljg4NjU1NzQgQzIyLjkxMDQ3NTksMjcuODg2NTU3NCAyMi40LDI3LjM3NTUxMTggMjIuNCwyNi43NDMyNzg3IEMyMi40LDI2LjExMTA0NTYgMjIuOTEwNDc1OSwyNS42IDIzLjU0MjAwNDEsMjUuNiBMMjQuOTc4NjQ1NCwyNS42IEMyNi42NDU5NzE0LDI1LjYgMjguMTA4ODc4NywyNi45MDEwNTEyIDI4LjMwODcyOTUsMjguNTY0NTIxNyBMMjguMzg5ODExNywyOS4wMjk4MzYxIEw1MS4yNzIxNDg4LDI5LjAyOTgzNjEgQzUyLjE0NDY0LDI5LjAyOTgzNjEgNTIuOTQ2MzI2OSwyOS4zODc2ODIzIDUzLjUyOTg5MSwzMC4wNDczNTQyIFoiIGlkPSJDb21iaW5lZC1TaGFwZSIgZmlsbD0iI0ZGRkZGRiI+PC9wYXRoPgogICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgeD0iMCIgeT0iMCIgd2lkdGg9IjgwIiBoZWlnaHQ9IjgwIj48L3JlY3Q+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg==&quot;);">
                            <div>
                                <span class="dish-zc-process__round--big"
                                      style="background-image: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iODBweCIgaGVpZ2h0PSI4MHB4IiB2aWV3Qm94PSIwIDAgODAgODAiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDQ3ICg0NTM5NikgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+6L+b56iLIC8g5o+Q5Lqk6LSt54mp6L2mPC90aXRsZT4KICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBTa2V0Y2guPC9kZXNjPgogICAgPGRlZnM+PC9kZWZzPgogICAgPGcgaWQ9IlN5bWJvbHMiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLov5vnqIstLy3mj5DkuqTotK3nianovaYiPgogICAgICAgICAgICA8ZyBpZD0i5o+Q5Lqk6LSt54mp6L2mLeW3suWujOaIkCI+CiAgICAgICAgICAgICAgICA8cGF0aCBkPSJNMzIuNjc4MDM3Myw1My4wMzE4MjkyIEMzMy45NDEwOTM5LDUzLjAzMTgyOTIgMzQuOTYyMDQ1Niw1NC4wNTUwNjM3IDM0Ljk2MjA0NTYsNTUuMzE4Mzg2NiBDMzQuOTYyMDQ1Niw1Ni41ODE3MDk2IDMzLjkzOTk1MTksNTcuNjA0OTQ0IDMyLjY3ODAzNzMsNTcuNjA0OTQ0IEMzMS40MTYxMjI3LDU3LjYwNDk0NCAzMC4zOTQwMjksNTYuNTgxNzA5NiAzMC4zOTQwMjksNTUuMzE4Mzg2NiBDMzAuMzk0MDI5LDU0LjA1NTA2MzcgMzEuNDE2MTIyNyw1My4wMzE4MjkyIDMyLjY3ODAzNzMsNTMuMDMxODI5MiBaIE00OC42NjYwOTU0LDUzLjAzMTgyOTIgQzQ5LjkyOTE1MTksNTMuMDMxODI5MiA1MC45NTAxMDM3LDU0LjA1NTA2MzcgNTAuOTUwMTAzNyw1NS4zMTgzODY2IEM1MC45NTAxMDM3LDU2LjU4MTcwOTYgNDkuOTI4MDA5OSw1Ny42MDQ5NDQgNDguNjY2MDk1NCw1Ny42MDQ5NDQgQzQ3LjQwNDE4MDgsNTcuNjA0OTQ0IDQ2LjM4MjA4NzEsNTYuNTgxNzA5NiA0Ni4zODIwODcxLDU1LjMxODM4NjYgQzQ2LjM4MjA4NzEsNTQuMDU1MDYzNyA0Ny40MDQxODA4LDUzLjAzMTgyOTIgNDguNjY2MDk1NCw1My4wMzE4MjkyIFogTTUzLjUyOTg5MSwzMC4wNDczNTQyIEM1NC4xOTY4MjE0LDMwLjgwMDc3NDggNTQuNTAyODc4NSwzMS44NjE3Mzc1IDU0LjM2OTI2NDEsMzIuOTYyNzE0OSBMNTIuNTY5NDY1NSw0My4yNjQ3OTkzIEM1Mi4zNzUzMjQ4LDQ0Ljg2NzY3NiA1MC45Mjg0MDU2LDQ2LjE3MjE1NyA0OS4yODM5MTk2LDQ2LjE3MjE1NyBMMzEuMTY0ODgxOCw0Ny4yOTM3MTM0IEwzMS4zNTQ0NTQ1LDQ4LjYyNzkxOTcgQzMxLjQxODQwNjcsNDkuMTU4NDAxIDMxLjg5NjkwNjUsNDkuNjA4ODUyOCAzMi4zODM0MDAyLDQ5LjYwODg1MjggTDUwLjk1MDEwMzcsNDkuNjA4ODUyOCBDNTEuNTgxNjMxOSw0OS42MDg4NTI4IDUyLjA5MjEwNzgsNTAuMTE5ODk4NCA1Mi4wOTIxMDc4LDUwLjc1MjEzMTUgQzUyLjA5MjEwNzgsNTEuMzg0MzY0NiA1MS41ODE2MzE5LDUxLjg5NTQxMDIgNTAuOTUwMTAzNyw1MS44OTU0MTAyIEwzMi4zODM0MDAyLDUxLjg5NTQxMDIgQzMwLjczNzc3MjMsNTEuODk1NDEwMiAyOS4yOTA4NTMsNTAuNTg4NjQyNiAyOS4wODk4NjAzLDQ4LjkyNTE3MjEgTDI3LjE1MzAyMTMsMzUuMjczMjgxMSBMMjYuMDQ5ODQ1MywyOC44OTYwNzI1IEMyNS45ODI0NjcsMjguMzM5Mjk1OCAyNS40NzU0MTcyLDI3Ljg4NjU1NzQgMjQuOTc4NjQ1NCwyNy44ODY1NTc0IEwyMy41NDIwMDQxLDI3Ljg4NjU1NzQgQzIyLjkxMDQ3NTksMjcuODg2NTU3NCAyMi40LDI3LjM3NTUxMTggMjIuNCwyNi43NDMyNzg3IEMyMi40LDI2LjExMTA0NTYgMjIuOTEwNDc1OSwyNS42IDIzLjU0MjAwNDEsMjUuNiBMMjQuOTc4NjQ1NCwyNS42IEMyNi42NDU5NzE0LDI1LjYgMjguMTA4ODc4NywyNi45MDEwNTEyIDI4LjMwODcyOTUsMjguNTY0NTIxNyBMMjguMzg5ODExNywyOS4wMjk4MzYxIEw1MS4yNzIxNDg4LDI5LjAyOTgzNjEgQzUyLjE0NDY0LDI5LjAyOTgzNjEgNTIuOTQ2MzI2OSwyOS4zODc2ODIzIDUzLjUyOTg5MSwzMC4wNDczNTQyIFoiIGlkPSJDb21iaW5lZC1TaGFwZSIgZmlsbD0iI0ZGRkZGRiI+PC9wYXRoPgogICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgeD0iMCIgeT0iMCIgd2lkdGg9IjgwIiBoZWlnaHQ9IjgwIj48L3JlY3Q+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg==&quot;);">
                                </span>
                                <i class="dish-zc-process__round--hover">
                                </i>
                            </div>
                        </i>确认下单
                    </li>
                    <li class="o-flex o-flex__fluid o-flex--column dish-zc-process__item">
                        <i class="dish-zc-process__round"
                           style="background-image: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iODBweCIgaGVpZ2h0PSI4MHB4IiB2aWV3Qm94PSIwIDAgODAgODAiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDQ3ICg0NTM5NikgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+6L+b56iLIC8g56Gu6K6k6K6i5Y2VIDwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPjwvZGVmcz4KICAgIDxnIGlkPSJTeW1ib2xzIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0i6L+b56iLLS8t56Gu6K6k6K6i5Y2VLSI+CiAgICAgICAgICAgIDxnIGlkPSLnoa7orqTorqLljZUt5bey5a6M5oiQIj4KICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik00Mi45OTQ5NzkxLDI1IEw0MywyNSBMNDMsMjcgTDM3LDI3IEwzNywyNSBMNDIuOTk0OTc5MSwyNSBaIE00OS4wNjA1OTg5LDI1IEM1MS4zMzY4ODk3LDI1IDUzLjAwNDMzNjcsMjYuNjk2ODcwMSA1Mi45OTk5OTE1LDI4Ljk3NDM1OSBMNTIuOTk5OTkxNSw1Mi4wMjU2NDEgQzUyLjk5OTk4Myw1NC4zMDMxMjk5IDUxLjMzNjg4OTcsNTYgNDkuMDYwNTk4OSw1NiBMMzAuOTM5MzkyNyw1NiBDMjguNjY3NDQ3LDU2IDI3LDU0LjMwNzU2MDQgMjcsNTIuMDI1NjQxIEwyNywyOC45NzQzNTkgQzI3LDI2LjY5Njg3MDEgMjguNjYzMDkzNCwyNSAzMC45MzkzOTI3LDI1IEwzNC4wOTA5MDY4LDI1IEwzNC44Nzg3ODUzLDI4LjE3OTQ4NzIgTDQ1LjEyMTIwNjIsMjguMTc5NDg3MiBMNDUuOTA5MDg0NywyNSBMNDkuMDYwNTk4OSwyNSBaIE00Nyw0OSBMNDcsNDcgTDMzLDQ3IEwzMyw0OSBMNDcsNDkgWiBNNDcsNDMgTDQ3LDQxIEwzMyw0MSBMMzMsNDMgTDQ3LDQzIFogTTQ3LDM3IEw0NywzNSBMMzMsMzUgTDMzLDM3IEw0NywzNyBaIiBpZD0iQ29tYmluZWQtU2hhcGUiIGZpbGw9IiNGRkZGRkYiPjwvcGF0aD4KICAgICAgICAgICAgICAgIDxyZWN0IGlkPSJSZWN0YW5nbGUiIHg9IjAiIHk9IjAiIHdpZHRoPSI4MCIgaGVpZ2h0PSI4MCI+PC9yZWN0PgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4=&quot;);"></i>
                        商户确认
                    </li>
                    <li class="o-flex o-flex__fluid o-flex--column dish-zc-process__item">
                        <i class="dish-zc-process__round"
                           style="background-image: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iODBweCIgaGVpZ2h0PSI4MHB4IiB2aWV3Qm94PSIwIDAgODAgODAiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDQ3ICg0NTM5NikgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+55So6aSQPC90aXRsZT4KICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBTa2V0Y2guPC9kZXNjPgogICAgPGRlZnM+PC9kZWZzPgogICAgPGcgaWQ9IueCuemkkOmhtSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgaWQ9IuWggumjn+eCuemkkF/ov5vluqbmnaEtNCI+CiAgICAgICAgICAgIDxnIGlkPSJHcm91cC03Ij4KICAgICAgICAgICAgICAgIDxnIGlkPSLnu5PotKYiPgogICAgICAgICAgICAgICAgICAgIDxnIGlkPSLnlKjppJAiPgogICAgICAgICAgICAgICAgICAgICAgICA8cmVjdCBpZD0iUmVjdGFuZ2xlIiB4PSIwIiB5PSIwIiB3aWR0aD0iODAiIGhlaWdodD0iODAiPjwvcmVjdD4KICAgICAgICAgICAgICAgICAgICAgICAgPGcgaWQ9Ikdyb3VwIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4wMDAwMDAsIDI1LjAwMDAwMCkiIGZpbGw9IiNGRkZGRkYiPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTE2Ljk3ODMxNDEsMTIuOTk5OTY3NyBDMjYuMzU1OTkzNCwxMi45ODkwMjAzIDM0LDEwLjAxNjgxNzIgMzQsNi4yNzEwMDE5NCBDMzQsMi41MjUxODY2OCAyNi4zNTQxMDY5LDAgMTYuOTc4MzE0MSwwIEM3LjYwMjUyMTI0LDAgMC4wMTMyMjI1MTI2LDIuNjk0ODcwNTEgMS43MTU1NzU5NWUtMDUsNi40NDA2ODU3MyBDLTAuMDEzMTg4MjAxLDEwLjIzOTQxMzEgNy41OTg3NDgyNiwxMy4wMTA5MTUgMTYuOTc4MzE0MSwxMi45OTk5Njc3IFoiIGlkPSJQYXRoIj48L3BhdGg+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNMTYuOTU2NTU1NSwxNC43NjkyMzA4IEM3LjU2Njg4ODg5LDE0Ljc2OTIzMDggMCwxMC45MjMwNzY5IDAsOSBMMCwyMC41Mzg0NjE1IEMwLDIyLjQ2MTUzODUgNS43MjcxMTEwOSwyNi4zIDE1LjA2NzY2NjYsMjYuMzA3NjkyMyBMMTUuMDY3NjY2NiwyOC4yMzA3NjkyIEMxMy4xNzUsMzAuMTU3NjkyMyA5LjQwMDk5OTk5LDMwLjc5NjE1MzggOS40MDA5OTk5OSwzMi4wNzY5MjMxIEM5LjQwMDk5OTk5LDMzLjA1Mzg0NjIgMTIuNzU5NDQ0NCwzNCAxNi45NTY1NTU1LDM0IEMyMS4xNTM2NjY2LDM0IDI0LjUxMjExMTEsMzIuOTk0MjMwOCAyNC41MTIxMTExLDMyLjA3NjkyMzEgQzI0LjUxMjExMTEsMzAuNzk2MTUzOCAyMC43MzQzMzM0LDMwLjE1Mzg0NjEgMTguODQ1NDQ0NCwyOC4yMzA3NjkyIEwxOC44NDU0NDQ0LDI2LjMwNzY5MjMgQzI2LjMzNjc3NzgsMjYuMzA3NjkyMyAzNCwyMi40NjE1Mzg1IDM0LDIwLjUzODQ2MTUgTDM0LDkgQzM0LDEwLjkyMzA3NjkgMjYuMzQ2MjIyMiwxNC43NjkyMzA4IDE2Ljk1NjU1NTUsMTQuNzY5MjMwOCBaIiBpZD0iUGF0aCI+PC9wYXRoPgogICAgICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4=&quot;);"></i>
                        就餐
                    </li>
                    <li class="o-flex o-flex__fluid o-flex--column dish-zc-process__item">
                        <i class="dish-zc-process__round"
                           style="background-image: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iODBweCIgaGVpZ2h0PSI4MHB4IiB2aWV3Qm94PSIwIDAgODAgODAiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogU2tldGNoIDQ3ICg0NTM5NikgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+6L+b56iLIC8g57uT6LSmIDwvdGl0bGU+CiAgICA8ZGVzYz5DcmVhdGVkIHdpdGggU2tldGNoLjwvZGVzYz4KICAgIDxkZWZzPjwvZGVmcz4KICAgIDxnIGlkPSJTeW1ib2xzIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0i6L+b56iLLS8t57uT6LSmLSI+CiAgICAgICAgICAgIDxnIGlkPSLnu5PotKYiPgogICAgICAgICAgICAgICAgPHBhdGggZD0iTTUyLjc5MzY2NDUsMzQuMTAwNjk1OSBDNTEuODQ4NzE2MSwzMy4xMjkyNTM3IDUwLjg0NjM2NDMsMzIuMjYzNzg2OSA0OS44MjYzNDk4LDMxLjUzMDc4OTUgQzQ5LjY1NDEzOTYsMzEuNDAyNzM1OCA0OS41MDQwMDc2LDMxLjI5MjM0NDYgNDkuMzUzODc1NywzMS4xOTk2MTYgQzUwLjgxMTAzOTEsMzAuNDY2NjE4NyA1MS43NzM2NTAxLDI5LjE0MTkyNDYgNTEuNzczNjUwMSwyNy42MTg1MjY1IEM1MS43NzM2NTAxLDI1LjIxMTk5OTEgNDkuNDI4OTQxNywyMy4zNzk1MDU2IDQ2LjY1MTQ5OTksMjMuMzc5NTA1NiBDNDYuMDA2ODE1NSwyMy4zNzk1MDU2IDQ1LjQyMzk1MDEsMjMuNDg5ODk2OCA0NC44OTQwNzI0LDIzLjY5MzAxNjYgQzQ0LjYyOTEzMzcsMjMuNzg1NzQ1MSA0NC40MzkyNjA4LDIzLjg3ODQ3MzcgNDQuMjg5MTI4OCwyMy45NjY3ODY2IEM0NC4yMTQwNjI5LDI0LjAwMjExMTggNDQuMDA2NTI3NCwyMy45NDkxMjQxIDQzLjkzMTQ2MTQsMjMuODU2Mzk1NSBDNDMuNzIzOTI2MSwyMy41NDI4ODQ2IDQzLjQwMTU4MzgsMjMuMTc2Mzg1OSA0Mi45NDY3NzIyLDIyLjc5MjIyNDYgQzQyLjE2MDc4NzEsMjIuMTI1NDYyIDQxLjIzNzkxNjksMjEuNjg4MzEyOSA0MC4yMDQ2NTU2LDIxLjYgQzM5LjE3NTgwOTksMjEuNjg4MzEyOSAzOC4yNTI5Mzk4LDIyLjEyNTQ2MiAzNy40NjI1MzksMjIuNzkyMjI0NiBDMzcuMDA3NzI3NCwyMy4xNzYzODU5IDM2LjY4OTgwMDgsMjMuNTQyODg0NiAzNi40Nzc4NDk4LDIzLjg1NjM5NTUgQzM2LjQwMjc4MzgsMjMuOTQ5MTI0MSAzNi4xOTUyNDg0LDI0LjAwMjExMTkgMzYuMTIwMTgyNCwyMy45NjY3ODY2IEMzNS45NzAwNTA0LDIzLjg3NDA1ODEgMzUuNzgwMTc3NSwyMy43ODEzMjk1IDM1LjUxNTIzODgsMjMuNjkzMDE2NiBDMzQuOTg1MzYxMiwyMy40ODk4OTY4IDM0LjQwMjQ5NTgsMjMuMzc5NTA1NiAzMy43NTc4MTE0LDIzLjM3OTUwNTYgQzMwLjk4MDM2OTYsMjMuMzc5NTA1NiAyOC42MzU2NjExLDI1LjIxNjQxNDcgMjguNjM1NjYxMSwyNy42MTg1MjY1IEMyOC42MzU2NjExLDI5LjE0MTkyNDYgMjkuNTk4MjcyMSwzMC40NjIyMDMgMzEuMDU1NDM1NiwzMS4xOTk2MTYgQzMwLjkwNTMwMzYsMzEuMjkyMzQ0NiAzMC43NTUxNzE2LDMxLjQwMjczNTggMzAuNTgyOTYxNCwzMS41MzA3ODk1IEMyOS41NjI5NDcsMzIuMjYzNzg2OSAyOC41NjA1OTUxLDMzLjEyOTI1MzYgMjcuNjE1NjQ2NywzNC4xMDA2OTU5IEMyNC44ODIzNjE0LDM2LjkwOTA0NzMgMjMuMiw0MC4xMzY4ODUgMjMuMiw0My43MTc5NzQ2IEMyMy4yLDUzLjY2NjQyNjcgMzAuODM0NjUzMiw1OC40IDQwLjAzNjg2MSw1OC40IEw0MC4zODEyODE1LDU4LjQgQzQ5LjU4MzQ4OTMsNTguNCA1Ny4yMTgxNDI1LDUzLjY2NjQyNjcgNTcuMjE4MTQyNSw0My43MTc5NzQ2IEM1Ny4yMTM3MjY5LDQwLjEzNjg4NSA1NS41MzEzNjU1LDM2LjkwOTA0NzMgNTIuNzkzNjY0NSwzNC4xMDA2OTU5IFogTTQ1LjA3OTUyOTYsNDMuMjEwMTc1MiBMNDEuNTY0Njc0OCw0My4yMTAxNzUyIEw0MS41NjQ2NzQ4LDQ0LjU2NTc3ODcgTDQ0LjE1NjY1OTQsNDQuNTY1Nzc4NyBDNDQuOTA3MzE5NCw0NC41NjU3Nzg3IDQ1LjUxMjI2Myw0NS4xNzUxMzggNDUuNTEyMjYzLDQ1LjkyMTM4MjMgQzQ1LjUxMjI2Myw0Ni42Njc2MjY2IDQ0LjkwMjkwMzgsNDcuMjc2OTg1OSA0NC4xNTY2NTk0LDQ3LjI3Njk4NTkgTDQxLjU2NDY3NDgsNDcuMjc2OTg1OSBMNDEuNTY0Njc0OCw0OS4zNjU1ODY4IEM0MS41NjQ2NzQ4LDUwLjExNjI0NjcgNDAuOTU1MzE1NSw1MC43MjExOTAzIDQwLjIwOTA3MTIsNTAuNzIxMTkwMyBDMzkuNDU4NDExMyw1MC43MjExOTAzIDM4Ljg1MzQ2NzcsNTAuMTExODMxMSAzOC44NTM0Njc3LDQ5LjM2NTU4NjggTDM4Ljg1MzQ2NzcsNDcuMjc2OTg1OSBMMzYuMTQyMjYwNiw0Ny4yNzY5ODU5IEMzNS4zOTE2MDA2LDQ3LjI3Njk4NTkgMzQuNzg2NjU3LDQ2LjY2NzYyNjYgMzQuNzg2NjU3LDQ1LjkyMTM4MjMgQzM0Ljc4NjY1Nyw0NS4xNzUxMzggMzUuMzk2MDE2Myw0NC41NjU3Nzg3IDM2LjE0MjI2MDYsNDQuNTY1Nzc4NyBMMzguODUzNDY3Nyw0NC41NjU3Nzg3IEwzOC44NTM0Njc3LDQzLjIxMDE3NTIgTDM1LjM0NzQ0NDIsNDMuMjEwMTc1MiBDMzQuNTk2Nzg0Miw0My4yMTAxNzUyIDMzLjk5MTg0MDYsNDIuNjAwODE1OSAzMy45OTE4NDA2LDQxLjg1NDU3MTYgQzMzLjk5MTg0MDYsNDEuMTA4MzI3MyAzNC42MDExOTk5LDQwLjQ5ODk2ODEgMzUuMzQ3NDQ0Miw0MC40OTg5NjgxIEwzNi45MzcwNzcsNDAuNDk4OTY4MSBMMzQuNDA2OTExNCwzNy45Njg4MDI1IEMzMy44NzcwMzM4LDM3LjQzODkyNDkgMzMuODc3MDMzOCwzNi41ODIyODk0IDM0LjQwNjkxMTQsMzYuMDUyNDExOCBDMzQuOTM2Nzg5MSwzNS41MjI1MzQyIDM1Ljc5MzQyNDUsMzUuNTIyNTM0MiAzNi4zMjMzMDIxLDM2LjA1MjQxMTggTDQwLjIwOTA3MTIsMzkuOTM4MTgwOSBMNDQuMDk0ODQwNCwzNi4wNTI0MTE4IEM0NC42MjQ3MTgsMzUuNTIyNTM0MiA0NS40ODEzNTM1LDM1LjUyMjUzNDIgNDYuMDExMjMxMSwzNi4wNTI0MTE4IEM0Ni41NDExMDg3LDM2LjU4MjI4OTQgNDYuNTQxMTA4NywzNy40Mzg5MjQ5IDQ2LjAxMTIzMTEsMzcuOTY4ODAyNSBMNDMuNDgxMDY1NSw0MC40OTg5NjgxIEw0NS4wNzk1Mjk2LDQwLjQ5ODk2ODEgQzQ1LjgzMDE4OTYsNDAuNDk4OTY4MSA0Ni40MzUxMzMyLDQxLjEwODMyNzQgNDYuNDM1MTMzMiw0MS44NTQ1NzE2IEM0Ni40MzUxMzMyLDQyLjYwMDgxNTkgNDUuODMwMTg5Niw0My4yMTAxNzUyIDQ1LjA3OTUyOTYsNDMuMjEwMTc1MiBMNDUuMDc5NTI5Niw0My4yMTAxNzUyIFoiIGlkPSJTaGFwZSIgZmlsbD0iI0ZGRkZGRiIgZmlsbC1ydWxlPSJub256ZXJvIj48L3BhdGg+CiAgICAgICAgICAgICAgICA8cmVjdCBpZD0iUmVjdGFuZ2xlIiB4PSIwIiB5PSIwIiB3aWR0aD0iODAiIGhlaWdodD0iODAiPjwvcmVjdD4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+&quot;);"></i>
                        结账
                    </li>
                </ul>
            </div>
            <div class="order-check-content">
                <div class="order-check-switch">
                </div>
                <div class="order-head">
                    <p class="order-head-name ellipsis">南京市玄武区蔓小馆餐厅</p>
                    <div class="order-head-item">
                        <span class="ellipsis">
                        </span>
                        <span>
                            人数1
                        </span>
                    </div>
                    <div class="order-head-item">
                        <span>共1份</span>
                        <span class="totalprice">
                            总计:
                            <span class="totalprice-span price">
                                48
                            </span>
                        </span>
                    </div>
                </div>
                <div class="order-dish">
                    <div class="dish-item">
                        <p class="dish-item-type">
                            小馆金牌菜(共1份)
                        </p>
                        <div class="dish-item-detail">
                            <div class="option">
                                <div class="dish">
                                    <div class="o-flex" style="align-items: center; position: relative;">
                                        <a class="o-flex__fluid dish__name o-fz--14 dish__name--has-logo">
                                            <img class="dish__name-logo"
                                                 src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjEyMHB4IiBoZWlnaHQ9IjEyMHB4IiB2aWV3Qm94PSIwIDAgMTIwIDEyMCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj4KICAgIDwhLS0gR2VuZXJhdG9yOiBTa2V0Y2ggNDAgKDMzNzYyKSAtIGh0dHA6Ly93d3cuYm9oZW1pYW5jb2RpbmcuY29tL3NrZXRjaCAtLT4KICAgIDx0aXRsZT7pu5jorqTlpLTlg488L3RpdGxlPgogICAgPGRlc2M+Q3JlYXRlZCB3aXRoIFNrZXRjaC48L2Rlc2M+CiAgICA8ZGVmcz48L2RlZnM+CiAgICA8ZyBpZD0iUGFnZS0xIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0i6K6i5Y2V5YiX6KGoX+WggumjnyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3OC4wMDAwMDAsIC0yMDkyLjAwMDAwMCkiPgogICAgICAgICAgICA8ZyBpZD0i6buY6K6k5aS05YOPIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxNzguMDAwMDAwLCAyMDkyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgZmlsbD0iI0YxRjFGMSIgeD0iMCIgeT0iMCIgd2lkdGg9IjEyMCIgaGVpZ2h0PSIxMjAiPjwvcmVjdD4KICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNNjQuMzkwMjQzOSw1MS4yMTk1MTIyIEw2NC4zOTAyNDM5LDUxLjIxOTUxMjIgQzYzLjkyMDI5NzMsNTMuMjA4OTgwNSA2Mi4xMzMwNDI2LDU0LjY4OTQ3NDcgNjAsNTQuNjg5NDc0NyBDNTcuODY2OTU3NCw1NC42ODk0NzQ3IDU2LjA3OTcwMjcsNTMuMjA4OTgwNSA1NS42MDk3NTYxLDUxLjIxOTUxMjIiIGlkPSJDb21iaW5lZC1TaGFwZSIgc3Ryb2tlPSIjQjFCMUIxIiBzdHJva2Utd2lkdGg9IjMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCI+PC9wYXRoPgogICAgICAgICAgICAgICAgICAgIDxlbGxpcHNlIGlkPSJPdmFsLTciIGZpbGw9IiM5Nzk3OTciIGN4PSIzOC4wNDg3ODA1IiBjeT0iNDYuODI5MjY4MyIgcng9IjUuODUzNjU4NTQiIHJ5PSI1Ljg1MzY1ODU0Ij48L2VsbGlwc2U+CiAgICAgICAgICAgICAgICAgICAgPGVsbGlwc2UgaWQ9Ik92YWwtNy1Db3B5IiBmaWxsPSIjOTc5Nzk3IiBjeD0iODEuOTUxMjE5NSIgY3k9IjQ2LjgyOTI2ODMiIHJ4PSI1Ljg1MzY1ODU0IiByeT0iNS44NTM2NTg1NCI+PC9lbGxpcHNlPgogICAgICAgICAgICAgICAgICAgIDxlbGxpcHNlIGlkPSJPdmFsLTctQ29weS0yIiBmaWxsPSIjRDhEOEQ4IiBvcGFjaXR5PSIwLjciIGN4PSI5NS4xMjE5NTEyIiBjeT0iNjcuMzE3MDczMiIgcng9IjEwLjI0MzkwMjQiIHJ5PSIxMC4yNDM5MDI0Ij48L2VsbGlwc2U+CiAgICAgICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbC03LUNvcHktMyIgZmlsbD0iI0Q4RDhEOCIgb3BhY2l0eT0iMC43IiBjeD0iMjQuODc4MDQ4OCIgY3k9IjY3LjMxNzA3MzIiIHI9IjEwLjI0MzkwMjQiPjwvY2lyY2xlPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4="
                                                 role="presentation">
                                            小馆椒麻鱼大份
                                        </a>
                                        <span class="o-ta--r dish__count o-fz--14 o-tc--light">
                                            x1
                                        </span>
                                        <span class="o-flex__fluid o-ta--r dish__price o-fz--14">
                                            48
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shortcut-operate shortcut-order-check">
                <div class="shortcut-multi btn-shortcut-larger">
                    <div class="btn-shortcut btn-shortcut-larger bg-orange btn-order o-btn--primary">
                        <span class="btn-shortcut-text btn-sync-yellow">
                            扫码下单
                        </span>
                    </div>
                </div>
            </div>
            <span></span>
        </div>
        <div id="handleInputDOM" data-editable="false" style="display: none;"></div>
    </div>
</div>
</body>
</html>
