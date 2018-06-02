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

    <title>餐厅注册</title>
</head>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <h3 class="form-title">注册</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="手机号码" id="restaurantPhone"
                           autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="餐厅名称" id="restaurantName"
                           maxlength="8"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="餐厅密码" id="restaurantPassword"
                           maxlength="8"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="确认密码" id="rePassword"
                           maxlength="8"/>
                </div>
                <div class="form-group col-md-offset-9">
                    <button type="submit" class="btn btn-success pull-right" name="submit">注册</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
        $(".btn").click(function () {
            if ($("#restaurantPhone").val().length < 1) {
                warning("请输入餐厅手机号码")
            } else if ($("#restaurantName").val().length < 1) {
                warning("请输入餐厅名称");
            } else if ($("#restaurantName").val().length >= 10) {
                warning("餐厅名称过长");
            } else if ($("#restaurantPassword").val().length < 1) {
                warning("请输入密码");
            } else if ($("#restaurantPassword").val().length < 6) {
                warning("密码不得小于6位");
            } else if ($("#restaurantPassword").val().length > 16) {
                warning("密码不得大于16位");
            } else if ($("#restaurantPassword").val() != $("#rePassword").val()) {
                warning("两次密码不一致！");
            } else {
                restaurantPhoneIsExist();
            }

            <!-- 注册错误信息 -->
            function warning(message) {
                alert(message);
            }

            <!-- 发送注册信息 -->
            function restaurantPhoneIsExist() {
                $.post("http://localhost:8080/restaurant/registerValidate", {
                    restaurantPhone: $("#restaurantPhone").val()
                }, function (data) {
                    if (data != null) {
                        if (data.restaurantPhone != null) {
                            warning("手机号已存在");
                        } else {
                            register();
                        }
                    }
                });
            }

            function register() {
                $.post("http://localhost:8080/restaurant/register", {
                    restaurantPhone: $("#restaurantPhone").val(),
                    restaurantName: $("#restaurantName").val(),
                    restaurantPassword: $("#restaurantPassword").val(),
                    restaurantLogo: "未选择餐厅图标.jpg"
                }, function (data) {
                    $("html").html(data);
                }, "html")
            }


        });
    });
</script>
</html>
