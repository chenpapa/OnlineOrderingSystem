<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no"/>
    <title>添加菜品</title>
</head>
<body>
<form method="post" action="<c:url value="/goods/addGoods"/>" enctype="multipart/form-data">
    <table>
        <tr>
            <td>菜品名称：</td>
            <td><input type="text" name="goodsName"/></td>
        </tr>
        <tr>
            <td>菜品图片：</td>
            <td><input type="file" name="file"/></td>
        </tr>
        <tr>
            <td>原价：</td>
            <td><input type="text" name="goodsPrice"/></td>
        </tr>
        <tr>
            <td>折扣价（可不填）：</td>
            <td><input type="text" name="goodsDiscount"/></td>
        </tr>
        <tr>
            <td>菜品状态：</td>
            <td><input type="radio" name="goodsStatus" value="true"/>在售</td>
            <td><input type="radio" name="goodsStatus" value="false"/>售完</td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="提交"/></td>
        </tr>
    </table>
</form>
</body>
</html>