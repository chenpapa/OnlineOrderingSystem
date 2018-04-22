<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>

        body {
            background: url("/img/1.jpg");
            -webkit-animation-name: myfirst;
            -webkit-animation-duration: 12s;
            /*变换时间*/
            -webkit-animation-delay: 2s;
            /*动画开始时间*/
            -webkit-animation-iteration-count: infinite;
            /*下一周期循环播放*/
            -webkit-animation-play-state: running;
            /*动画开始运行*/
        }

        @-webkit-keyframes myfirst {
            0% {
                background: url("/img/1.jpg");
            }
            34% {
                background: url("/img/2.jpg");
            }
            67% {
                background: url("/img/3.jpg");
            }
            100% {
                background: url("/img/1.jpg");
            }
        }

        .form {
            background: rgba(255, 255, 255, 0.2);
            width: 400px;
            margin: 120px auto;
        }

        /*阴影*/
        .fa {
            display: inline-block;
            top: 27px;
            left: 6px;
            position: relative;
            color: #ccc;
        }

        input[type="text"], input[type="password"] {
            padding-left: 26px;
        }

    </style>

    <title>餐厅登录</title>
</head>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title">登录</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="餐厅账号" id="restaurantId"
                           autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="密码" id="restaurantPassword"
                           maxlength="8"/>
                </div>
                <div class="form-group col-md-offset-9">
                    <button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
        $(".btn").click(function () {
            if ($("#restaurantId").val().length < 1) {
                warning("请输入餐厅账号")
            } else if ($("#restaurantId").val().length <= 3) {
                warning("请输入正确的账号");
            } else if ($("#restaurantPassword").val().length < 1) {
                warning("请输入密码");
            } else if ($("#restaurantPassword").val().length < 6) {
                warning("密码不得小于6位");
            } else if ($("#restaurantPassword").val().length > 16) {
                warning("密码不得大于16位");
            } else {
                login();
            }

            <!-- 登录错误信息 -->
            function warning(message) {
                alert(message);
            }

            <!-- 发送登录信息 -->
            function login() {
                $.post("http://localhost:8080/restaurant/loginValidate", {
                    restaurantId: $("#restaurantId").val(),
                    restaurantPassword: $("#restaurantPassword").val()
                }, function (data) {
                    if (data.result == "true") {
                        window.location.href = "http://localhost:8080/restaurant/1000";
                    } else {
                        warning("账号或密码错误");
                    }
                });
            }

        });
    });
</script>
</html>
