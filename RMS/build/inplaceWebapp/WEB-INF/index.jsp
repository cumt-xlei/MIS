<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	this is test<br>
	<a href="page_getPersonForPage.action?page=1">测试</a>	
	<a href="categoryAction_save.action">添加</a>
	<a href="categoryAction_query.action">查询所有</a>
	<a href="categoryAction_delete.action">删除</a>
	<a href="categoryAction_update.action">更新</a><br/>
	<c:forEach items="${requestScope.categoryList}" var="category">	
		${category.id}|${category.type}|${category.hot}<br/>
	</c:forEach>
	<hr>
	<c:forEach items="${sessionScope.categoryList}" var="category">	
		${category.id}|${category.type}|${category.hot}<br/>
	</c:forEach>
	<hr>
	<c:forEach items="${applicationScope.categoryList}" var="category">	
		${category.id}|${category.type}|${category.hot}<br/>
	</c:forEach> 
</body>
</html>