var map = new Map();
$(function () {
    //加的效果
    $(".add").click(function () {
        $(this).prevAll().css("display", "inline-block");
        var n = $(this).prev().text();
        var num = parseInt(n) + 1;
        if (num == 0) {
            return;
        }
        $(this).prev().text(num);
        var goodsId = $(this).attr("data-id");//获取商品id
        var price = $(this).next().text(); //获取单价
        var totalPrice = $("#totalpriceshow").html(); //获取当前所选总价
        $("#totalpriceshow").html((totalPrice * 1 + price * 1).toFixed(2)); //计算当前所选总价

        var nm = $("#totalcountshow").html(); //获取数量
        map.set(goodsId, num);//将商品id和选购数量添加到map中
        $("#totalcountshow").html(nm * 1 + 1);
        jss(); //<span style='font-family: Arial, Helvetica, sans-serif;'></span>   改变按钮样式
    });
    //减的效果
    $(".minus").click(function () {
        var n = $(this).next().text();
        var num = parseInt(n) - 1;

        $(this).next().text(num); //减1

        var goodsId = $(this).attr("data-id");//获取商品id
        var price = $(this).nextAll(".price").text(); //获取单价
        var totalPrice = $("#totalpriceshow").html(); //获取当前所选总价
        $("#totalpriceshow").html((totalPrice * 1 - price * 1).toFixed(2)); //计算当前所选总价

        var nm = $("#totalcountshow").html(); //获取数量
        if (num != 0) {
            map.set(goodsId, num);
        }
        $("#totalcountshow").html(nm * 1 - 1);
        //如果数量小于或等于0则隐藏减号和数量
        if (num <= 0) {
            $(this).next().css("display", "none");
            $(this).css("display", "none");
            jss(); //改变按钮样式
            return
        }
    });

    function moreInfo() {
        $("div.o-flex__fixed.ads-more").click(function () {
            $("span.of.o-text-ellipsis").text("test");
        });
    }

    function jss() {
        var m = $("#totalcountshow").html();
        if (m > 0) {
            $(".right").find("button").removeClass("disable");
        } else {
            $(".right").find("button").addClass("disable");
        }
    };
    //选项卡
    $(".con>div").hide();
    $(".con>div:eq(0)").show();

    $(".left-menu li").click(function () {
        $(this).addClass("active").siblings().removeClass("active");
        var n = $(".left-menu li").index(this);
        $(".left-menu li").index(this);
        $(".con>div").hide();
        $(".con>div:eq(" + n + ")").show();
    });

    var order;

    $(".xhlbtn").click(function () {
        var array = new Array();
        for (var key of map) {
            var temp = key.toString().split(",");
            var json = '{"goodsId":' + temp[0] + ',"goodsCount":' + temp[1] + "}";
            array.push(json);
        }
        for (var i = 0; i < array.length; i++) {
            if (i == 0) {
                order = "[" + array[i] + ",";
            } else if (i == array.length - 1) {
                var temp = order + array[i] + "]";
                order = temp;
            } else {
                var temp = order + array[i];
                order = temp;
            }
        }

        $.ajax({
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            type: "POST",
            dataType: "json",
            url: "http://localhost:8080/order/createOrder",
            async: false,
            data: order,
            success: function (data) {
                if (data.result == "true") {
                    location = "http://localhost:8080/order/createOrder";
                } else {
                    warning("订单生成失败，请重新下单");
                }
            }
        });

        function warning(message) {
            alert(message);
        }

    });
});