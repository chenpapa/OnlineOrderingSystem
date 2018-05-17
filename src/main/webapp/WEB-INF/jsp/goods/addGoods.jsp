<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div>
    <div class="btn-group">
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">请选择菜系
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <c:forEach items="${catalogList}" var="catalog">
                <li>
                    <a href="#">${catalog.catalogName}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
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
</div>