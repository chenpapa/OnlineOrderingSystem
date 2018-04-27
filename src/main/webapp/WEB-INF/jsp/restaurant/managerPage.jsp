<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>${restaurantInfo.restaurantName}后台管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="app sidebar-mini rtl">
<!-- 导航栏-->
<header class="app-header">
    <a class="app-header__logo" href="index.html">
        ${restaurantInfo.restaurantName}
    </a>
    <!-- 侧边栏开关按钮-->
    <a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" type="search" placeholder="Search">
            <button class="app-search__button">
                <i class="fa fa-search">
                </i>
            </button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown">
            <a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications">
                <i class="fa fa-bell-o fa-lg">
                </i>
            </a>
            <ul class="app-notification dropdown-menu dropdown-menu-right">
                <li class="app-notification__title">
                    你有4个新通知.
                </li>
                <div class="app-notification__content">
                    <li>
                        <a class="app-notification__item" href="javascript:;">
                      <span class="app-notification__icon">
                          <span class="fa-stack fa-lg">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                          </span>
                      </span>
                            <div>
                                <p class="app-notification__message">
                                    Lisa发了1封邮件给你
                                </p>
                                <p class="app-notification__meta">
                                    2分钟之前
                                </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="app-notification__item" href="javascript:;">
                      <span class="app-notification__icon">
                          <span class="fa-stack fa-lg">
                              <i class="fa fa-circle fa-stack-2x text-danger"></i>
                              <i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i>
                          </span>
                      </span>
                            <div>
                                <p class="app-notification__message">
                                    邮件服务器工作异常
                                </p>
                                <p class="app-notification__meta">
                                    5分钟之前
                                </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="app-notification__item" href="javascript:;">
                      <span class="app-notification__icon">
                          <span class="fa-stack fa-lg">
                              <i class="fa fa-circle fa-stack-2x text-success"></i>
                              <i class="fa fa-money fa-stack-1x fa-inverse"></i>
                          </span>
                      </span>
                            <div>
                                <p class="app-notification__message">
                                    事务完成
                                </p>
                                <p class="app-notification__meta">
                                    2分钟之前
                                </p>
                            </div>
                        </a>
                    </li>
                    <div class="app-notification__content">
                        <li>
                            <a class="app-notification__item" href="javascript:;">
                                <span
                                        class="app-notification__icon">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                        <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                                    </span>
                                </span>
                                <div>
                                    <p class="app-notification__message">
                                        Lisa发了1封邮件给你
                                    </p>
                                    <p class="app-notification__meta">
                                        2分钟之前
                                    </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="app-notification__item" href="javascript:;">
                                <span class="app-notification__icon">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x text-danger"></i>
                                        <i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i>
                                    </span>
                                </span>
                                <div>
                                    <p class="app-notification__message">
                                        邮件服务器工作异常
                                    </p>
                                    <p class="app-notification__meta">
                                        5分钟之前
                                    </p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="app-notification__item" href="javascript:;">
                                <span class="app-notification__icon">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x text-success"></i>
                                        <i class="fa fa-money fa-stack-1x fa-inverse"></i>
                                    </span>
                                </span>
                                <div>
                                    <p class="app-notification__message">
                                        事务完成
                                    </p>
                                    <p class="app-notification__meta">
                                        2分钟之前
                                    </p>
                                </div>
                            </a>
                        </li>
                    </div>
                </div>
                <li class="app-notification__footer">
                    <a href="#">
                        查看所有的通知.
                    </a>
                </li>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown">
            <a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu">
                <i class="fa fa-user fa-lg"></i>
            </a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li>
                    <a class="dropdown-item" href="page-user.html">
                        <i class="fa fa-cog fa-lg"></i>
                        设置
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="page-user.html">
                        <i class="fa fa-user fa-lg"></i>
                        简介
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="page-login.html">
                        <i class="fa fa-sign-out fa-lg"></i>
                        注销
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <ul class="app-menu">
        <!-- 餐桌管理 -->
        <li>
            <a class="app-menu__item" href="#">
                <i class="app-menu__icon fa fa-laptop"></i>
                <span class="app-menu__label">
                    餐桌管理
                </span>
                <i class="treeview-indicator fa fa-angle-right"></i>
            </a>
        </li>
        <!-- 菜品管理 -->
        <li class="treeview">
            <a class="app-menu__item" href="#" data-toggle="treeview">
                <i class="app-menu__icon fa fa-laptop"></i>
                <span class="app-menu__label">
                    菜品管理
                </span>
                <i class="treeview-indicator fa fa-angle-right"></i>
            </a>
            <ul class="treeview-menu">
                <li>
                    <a class="treeview-item" href="catalogPage.html">
                        <i class="icon fa fa-circle-o"></i>
                        菜品列表
                    </a>
                </li>
                <li>
                    <a class="treeview-item" href="catalogPage.html">
                        <i class="icon fa fa-circle-o"></i>
                        上传菜品
                    </a>
                </li>
                <li>
                    <a class="treeview-item" href="catalogPage.html">
                        <i class="icon fa fa-circle-o"></i>
                        修改菜品
                    </a>
                </li>
            </ul>
        </li>
        <!-- 订单管理 -->
        <li class="treeview">
            <a class="app-menu__item" href="#" data-toggle="treeview">
                <i class="app-menu__icon fa fa-file-text"></i>
                <span class="app-menu__label">
                    订单管理
                </span>
                <i class="treeview-indicator fa fa-angle-right"></i>
            </a>
            <ul class="treeview-menu">
                <li>
                    <a class="treeview-item" href="order-query.html">
                        <i class="icon fa fa-circle-o"></i>
                        订单查询
                    </a>
                </li>
                <li>
                    <a class="treeview-item" href="order-count.html">
                        <i class="icon fa fa-circle-o"></i>
                        订单统计
                    </a>
                </li>
            </ul>
        </li>
        <!-- 图表 -->
        <li>
            <a class="app-menu__item" href="charts.html">
                <i class="app-menu__icon fa fa-pie-chart"></i>
                <span class="app-menu__label">
                    图表
                </span>
            </a>
        </li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-laptop"></i> 餐桌管理</h1>
        </div>
    </div>
    <div class="row">
        <c:forEach var="i" begin="1" end="${restaurantInfo.restaurantTable}" step="1">
            <div class="col-md-6">
                <div class="tile">
                    <h3 class="tile-title">${i}号桌</h3>
                    <div class="tile-body" data-id="${i}">
                        开桌时间：<br>
                        用餐状态：<br>
                        用餐人数：<br>
                        已&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点：<br>
                        订单金额：<br>
                    </div>
                    <div class="tile-foote">
                        <a class="btn btn-primary" data-id="${i}">查看</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</main>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/chart.js"></script>
<script type="text/javascript">

    var url = 'ws://' + window.location.host + '<%=request.getContextPath()%>/' + '${restaurantInfo.restaurantId}';
    var sock = new WebSocket(url);

    sock.onopen = function () {
    }

    sock.onmessage = function (ev) {
        var data = $.parseJSON(ev.data);
        console.log(typeof data);
        console.log(data.userName);
        for (var i = 0; i < data.length; i++) {
            if (i == 0) {
                var tableNum = data.tableNum;
                $("div[data-id='" + tableNum + "']").text();
            }
        }
    }
</script>

<script type="text/javascript">
    //格式化时间
    Date.prototype.Format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "H+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }

    //格式：（yyyy-MM-dd HH:mm:SS）
    function getFormatDate() {
        var nowDate = new Date();
        var year = nowDate.getFullYear();
        var month = nowDate.getMonth() + 1 < 10 ? "0" + (nowDate.getMonth() + 1) : nowDate.getMonth() + 1;
        var date = nowDate.getDate() < 10 ? "0" + nowDate.getDate() : nowDate.getDate();
        var hour = nowDate.getHours() < 10 ? "0" + nowDate.getHours() : nowDate.getHours();
        var minute = nowDate.getMinutes() < 10 ? "0" + nowDate.getMinutes() : nowDate.getMinutes();
        var second = nowDate.getSeconds() < 10 ? "0" + nowDate.getSeconds() : nowDate.getSeconds();
        return year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second;
    }

    var str = getFormatDate();
    console.log(str);

    function changeTable() {

    }
</script>
</body>
</html>
