<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <title>员工注册</title>
</head>
<body>
<form method="post" action="<c:url value="/staff/login"/>">
    <table>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="staffName" value="${staff.staffName}"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="staffPassword" value="${staff.staffPassword}"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="登录"/></td>
        </tr>
    </table>
</form>
</body>
</html>