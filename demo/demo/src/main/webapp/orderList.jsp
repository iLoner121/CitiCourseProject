<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/10/21
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@page import="entity.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="orderMgr" class="entity.OrderMgr" scope="request"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>订单列表</title>
</head>
<body>
<a href="addOrder.jsp">添加订单</a>
<p>订单列表</p>
<table width="948" height="233" border="1">
    <tr>
        <td height="60">index</td>
        <td>邮寄地址</td>
        <td>邮编</td>
        <td>收件人</td>
        <td>是否需要发票</td>
        <td>产品描述</td>
    </tr>

    <%
        int i = 1;
    %>
    <!-- 加了一个c:set 设置变量 -->
    <c:set var="orderList" value="${orderMgr.getOrderList()}" scope="request" />
    <c:forEach items="${orderList}" var="order">
        <tr>
            <td align="center"><%=i++%></td>
            <td align="center">${order.address}, ${order.street}</td>
            <td align="center">${order.postcode}</td>
            <td align="center">${order.recipient}</td>
            <td align="center">
                <c:if test="${order.invoice=='0'}">否</c:if>
                <c:if test="${order.invoice=='1'}">是</c:if>
            </td>
            <td align="center">${order.product}</td>

        </tr>
    </c:forEach>
</table>
<p>&nbsp;</p>
</body>
</html>
