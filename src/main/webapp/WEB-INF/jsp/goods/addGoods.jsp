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
                    <a href="#" data-id="${catalog.catalogId}">${catalog.catalogName}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
    <form id="uploadForm" enctype="multipart/form-data">
        <table>
            <tr>
                <td>菜品名称：</td>
                <td><input type="text" name="goodsName" id="goodsName"/></td>
            </tr>
            <tr>
                <td>菜品图片：</td>
                <td><input type="file" name="file"/></td>
            </tr>
            <tr>
                <td>原价：</td>
                <td><input type="text" name="goodsPrice" id="goodsPrice"/></td>
            </tr>
            <tr>
                <td>折扣价（可不填）：</td>
                <td><input type="text" name="goodsDiscount" id="goodsDiscount"/></td>
            </tr>
            <tr>
                <td>菜品状态：</td>
                <td><input type="radio" name="goodsStatus" value="true"/>在售</td>
                <td><input type="radio" name="goodsStatus" value="false"/>售完</td>
            </tr>
        </table>
    </form>
    <button id="upload">上传文件</button>
</div>

<script>
    var catalogId;
    var catalogName;
    $("a").click(function () {
        catalogId = $(this).attr("data-id");
        catalogName = $(this).text();
        console.log(catalogId);
        console.log(catalogName);
    });

    $("#upload").click(function () {
        var formData = new FormData($('#uploadForm')[0]);
        formData.append("catalogId", catalogId);
        formData.append("catalogName", catalogName);
        formData.append("goodsName", $("#goodsName").val());
        formData.append("goodsPrice", $("#goodsPrice").val());
        formData.append("goodsDiscount", $("#goodsDiscount").val());
        formData.append("goodsStatus", $("input[name='radio']:checked").val());
        $.ajax({
            type: 'post',
            url: "${pageContext.request.contextPath}/goods/addGoods",
            data: formData,
            processData: false,
            contentType: false,
        }).success(function (data) {
            $(".row").html(data);
        });
    });
</script>