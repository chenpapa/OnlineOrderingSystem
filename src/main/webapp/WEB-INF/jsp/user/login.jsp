<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="format-detection" content="telephone=no"/>

    <style>

        body, h1, h2, h3, h4, h5, h6, html, p, ul {
            margin: 0
        }

        html {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%
        }

        body {
            font-family: "PingFang SC", "Segoe UI", "Microsoft YaHei", "wenquanyi micro hei", "Hiragino Sans GB", "Hiragino Sans GB W3", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 16px;
            line-height: 1;
            color: #474747;
            background: #fff
        }

        div {
            display: block;
        }

        .p-login-header__img {
            margin-bottom: 10px;
            vertical-align: bottom;
        }

        #app-placeholder {
            height: 100%;
            cursor: default;
            -webkit-user-select: none;
            user-select: none;
            background: #fff
        }

        .p-login-container {
            max-width: 360px;
            margin: auto;
            padding-top: 17.5vh;
            padding-right: 15px;
            padding-left: 15px
        }

        .o-credit {
            position: relative;
            padding-bottom: 42px
        }

        .p-login-header__img {
            margin-bottom: 10px;
            vertical-align: bottom
        }

        .p-login-header__title {
            font-size: 20px;
            font-weight: 400;
            line-height: 28px;
            margin-bottom: 30px
        }

        .phone-verification-code {
            position: relative
        }

        .phone-verification-code--login .form-group {
            position: relative;
            font-size: 16px;
            margin-bottom: 10px;
            padding: 10px 19px;
            border: 0;
            -webkit-border-radius: 50px;
            border-radius: 50px
        }

        .phone-verification-code--login .form-group::after {
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            content: " ";
            -webkit-transform: scale(.5);
            transform: scale(.5);
            border: 1px solid #e3e3e3;
            -webkit-border-radius: 50px;
            border-radius: 50px
        }

        .phone-verification-code--login .form-group::before {
            content: none
        }

        *, ::after, ::before {
            -webkit-box-sizing: border-box;
            box-sizing: border-box
        }

        .p-login-btn {
            font-size: 16px;
            letter-spacing: 5px;
            color: #fff;
            background: -webkit-gradient(linear, left top, right top, from(#55bc5b), to(#55bc5b));
            background: -webkit-linear-gradient(left, #55bc5b, #55bc5b);
            background: linear-gradient(to right, #55bc5b, #55bc5b);
            cursor: pointer;
        }

        .o-btn--h44 {
            line-height: 44px;
            height: 44px;
            cursor: pointer;
        }

        .o-btn--oval {
            -webkit-border-radius: 999px;
            border-radius: 999px;
            cursor: pointer;
        }

        .o-btn--block {
            display: block;
            width: 100%;
            cursor: pointer;
        }

        .o-btn {
            display: inline-block;
            text-align: center;
            cursor: pointer;
        }

        button {
            cursor: pointer;
        }

        button, input, textarea {
            font: inherit;
            margin: 0;
            padding: 0;
            color: inherit;
            border-style: none;
            outline-style: none;
            background: 0 0;
            -webkit-appearance: none;
            appearance: none
        }

        .p-login-header {
            text-align: center
        }

        .phone-verification-code--login input {
            position: relative;
            z-index: 100;
            color: #666
        }

        .c-toast {
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            align-items: center;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            background: 0 0
        }

        .c-toast__content {
            min-width: 100px;
            max-width: 200px;
            color: #fff;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            background: rgba(0, 0, 0, .85);
            padding: 10px
        }

        .c-toast__content > img:first-child {
            display: block;
            margin: 0 auto 5px
        }

        .c-toast {
            position: fixed;
            z-index: 10000;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            display: -webkit-box;
            display: -webkit-flex
        }

        .c-toast__content {
            font-size: 14px;
            line-height: 18px;
            text-align: center
        }

        .register {
            padding-top: 10px;
            padding-bottom: 10px;
            padding-left: 25%;
            font-size: .875rem;
            color: #5184bc
        }
    </style>

    <title>用户登录</title>
</head>
<body>
<div id="app-placeholder">
    <div class="o-credit p-login-container">
        <!-- 商家信息 -->
        <c:choose>
            <c:when test="${restaurantInfo != null}">
                <header class="p-login-header">
                    <!-- 商家logo -->
                    <img class="p-login-header__img"
                         src="${pageContext.request.contextPath}/img/${restaurantInfo.restaurantLogo}"
                         style="height: 100px;width: 100px;border-radius: 50%;">
                    <h1 class="p-login-header__title">
                        欢迎来到${restaurantInfo.restaurantName}
                    </h1>
                </header>
            </c:when>
            <c:otherwise>
                <header class="p-login-header">
                    <!-- 商家logo -->
                    <img class="p-login-header__img"
                         src="${pageContext.request.contextPath}/img/未选择餐厅图标.jpg"
                         style="height: 100px;width: 100px;border-radius: 50%;">
                    <h1 class="p-login-header__title">
                        欢迎登录
                    </h1>
                </header>
            </c:otherwise>
        </c:choose>
        <!--登录信息录入 -->
        <div class="phone-verification-code phone-verification-code--login">
            <div class="form-group">
                <input id="userPhone" type="tel" placeholder="请输入手机号" maxlength="11">
            </div>
            <div class="form-group">
                <input id="userPassword" type="password" placeholder="请输入密码" maxlength="12">
            </div>
            <div class="register">
                <a href="/user/register">还没有账号？现在注册</a>
            </div>
            <button class="o-btn o-btn--block o-btn--oval o-btn--h44 p-login-btn">
                登录
            </button>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script>
    $(function () {
        $("button.o-btn.o-btn--block.o-btn--oval.o-btn--h44.p-login-btn").click(function () {
            if ($("#userPhone").val().length == 0) {
                warning("请输入手机号码")
            } else if ($("#userPhone").val().length <= 10) {
                warning("请输入正确的手机号");
            } else if ($("#userPassword").val().length < 6) {
                warning("密码不得小于6位");
            } else if ($("#userPassword").val().length > 12) {
                warning("密码不得大于12位");
            } else {
                login();
            }

            <!-- 登录错误信息 -->
            function warning(message) {
                var falseDiv = "<div class=\"c-toast\">\n" +
                    "                <div class=\"c-toast__content\">\n" +
                    "                    <img src=\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjU1cHgiIGhlaWdodD0iNTVweCIgdmlld0JveD0iMCAwIDU1IDU1IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPCEtLSBHZW5lcmF0b3I6IFNrZXRjaCA0MCAoMzM3NjIpIC0gaHR0cDovL3d3dy5ib2hlbWlhbmNvZGluZy5jb20vc2tldGNoIC0tPgogICAgPHRpdGxlPnRvYXN0PC90aXRsZT4KICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBTa2V0Y2guPC9kZXNjPgogICAgPGRlZnM+PC9kZWZzPgogICAgPGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgaWQ9IueUqOaIt+iuvue9rl/ph43orr7lr4bnoIEtY29weSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTM0Mi4wMDAwMDAsIC01OTYuMDAwMDAwKSIgZmlsbD0iI0ZGRkZGRiI+CiAgICAgICAgICAgIDxnIGlkPSJ0b2FzdDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDI2Mi4wMDAwMDAsIDU2NC4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0xMDcuNSwzMiBDOTIuMzExOTc5MiwzMiA4MCw0NC4zMTE5NzkyIDgwLDU5LjUgQzgwLDc0LjY4ODAyMDggOTIuMzExOTc5Miw4NyAxMDcuNSw4NyBDMTIyLjY4ODAyMSw4NyAxMzUsNzQuNjg4MDIwOCAxMzUsNTkuNSBDMTM1LDQ0LjMxMTk3OTIgMTIyLjY4ODAyMSwzMiAxMDcuNSwzMiBMMTA3LjUsMzIgWiBNMTA1LjEzMDQxNyw0Ni4yNTg3NSBDMTA1LjEzMDQxNyw0NC45Mjk1ODMzIDEwNi4xOTE0NTgsNDMuODUxMzU0MiAxMDcuNSw0My44NTEzNTQyIEMxMDguODA4NTQyLDQzLjg1MTM1NDIgMTA5Ljg2OTU4Myw0NC45Mjk1ODM0IDEwOS44Njk1ODMsNDYuMjU4NzUgTDEwOS44Njk1ODMsNjMuMTExNjY2NyBDMTA5Ljg2OTU4Myw2NC40NDA4MzM0IDEwOC44MDg1NDIsNjUuNTE5MDYyNSAxMDcuNSw2NS41MTkwNjI1IEMxMDYuMTkxNDU4LDY1LjUxOTA2MjUgMTA1LjEzMDQxNyw2NC40NDA4MzMzIDEwNS4xMzA0MTcsNjMuMTExNjY2NyBMMTA1LjEzMDQxNyw0Ni4yNTg3NSBMMTA1LjEzMDQxNyw0Ni4yNTg3NSBaIE0xMDcuNSw3NS4xNDg2NDU4IEMxMDUuNTM3MTg4LDc1LjE0ODY0NTggMTAzLjk0NTYyNSw3My41MzE4NzUgMTAzLjk0NTYyNSw3MS41MzgxMjUgQzEwMy45NDU2MjUsNjkuNTQ0Mzc1IDEwNS41MzcxODgsNjcuOTI2NDU4MyAxMDcuNSw2Ny45MjY0NTgzIEMxMDkuNDYzOTU4LDY3LjkyNjQ1ODMgMTExLjA1NDM3NSw2OS41NDMyMjkxIDExMS4wNTQzNzUsNzEuNTM4MTI1IEMxMTEuMDU0Mzc1LDczLjUzMTg3NSAxMDkuNDYzOTU4LDc1LjE0ODY0NTggMTA3LjUsNzUuMTQ4NjQ1OCBMMTA3LjUsNzUuMTQ4NjQ1OCBaIiBpZD0idG9hc3QiPjwvcGF0aD4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+\"\n" +
                    "                         alt=\"\" style=\"width: 28px;\">\n" + message + "\n" +
                    "                </div>\n" +
                    "            </div>";
                $("button.o-btn.o-btn--block.o-btn--oval.o-btn--h44.p-login-btn").append(falseDiv);
                $(function () {
                    setTimeout(function () {
                        $(".c-toast").remove();
                    }, 1500);
                });
            }

            <!-- 发送登录信息 -->
            function login() {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    timeout: 1000, //超时时间设置，单位毫秒
                    url: "http://localhost:8080/user/loginValidate",
                    async: true,
                    data: {
                        userPhone: $("#userPhone").val(),
                        userPassword: $("#userPassword").val()
                    },
                    success: function (data) {
                        if (data.result == "true") {
                            location = "http://localhost:8080/restaurant/frontend";
                        } else {
                            warning("手机或密码错误");
                        }
                    }
                });
            }

        });
    });
</script>
</body>
</html>
