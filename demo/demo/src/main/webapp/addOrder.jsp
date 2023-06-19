<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/9
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交订单</title>
</head>
<body>
<form id="orderForm" name="orderForm" method="post" action="<%=request.getContextPath()%>/OrderServlet">
<table width="713" height="535" border="1">
    <tr>
        <td colspan="2">订单信息:</td>
    </tr>
    <tr>
        <td width="95">邮寄地址:</td>
        <td width="163"><label for="省份选择">Province:</label>
            <label for="省份选择"></label>
            <select name="province" size="1" id="province">
                <option value="1">湖南</option>
                <option value="2">湖北</option>
                <option value="3">河南</option>
                <option value="4">河北</option>
            </select>
            City:
            <label for="城市选择"></label>
            <select name="city" size="1" id="city">
                <option value="1">长沙</option>
                <option value="2">湘潭</option>
                <option value="3">株洲</option>
                <option value="4">宁乡</option>
            </select></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>街道名称:
            <input type="text" name="street" id="street" /></td>
    </tr>
    <tr>
        <td>收件人:</td>
        <td><label for="收件人 "></label>
            <input type="text" name="recipient" id="recipient" /></td>
    </tr>
    <tr>
        <td>Post Code:</td>
        <td><label for="邮政编码"></label>
            <input type="text" name="postCode" id="postCode" /></td>
    </tr>
    <tr>
        <td>是否需要发票:</td>
        <td><input type="radio" name="invoice" id="invoice" value="yes" />
            <label for="radio">是
                <input type="radio" name="invoice" id="invoice" value="no" />
            </label>
            否</td>
    </tr>
    <tr>
        <td>产品描述:</td>
        <td><label for="product"></label>
            <input type="text" name="product" id="product" /></td>
    </tr>
    <tr>
        <td><input type="submit" name="button" id="button" value="提交" /></td>
        <td><label for="reset">
            <input type="reset" name="reset" id="reset" value="重置" />
        </label></td>
    </tr>
</table>
</form>
</body>
</html>

