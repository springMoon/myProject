<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Music Player</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="top-nav">
	</div>
	<div id="body">
	    <div id="nav-top-bar">
	    </div>
	    <div id="sidebar">
	    </div>
	    <div id="main">
		      <div id="sub-nav-container">
		      <table>
		      	<c:if test="${not empty list }">
		      	 <c:forEach items="${list }" var="name" varStatus="s">
		      		<tr>
		      			<td><c:out value="${name }"></c:out>
		      			<td><c:out value="${s.index }"></c:out>
		      			<td><c:out value="${s.count }"></c:out>
		      			<td><c:out value="${s.first }"></c:out>
		      			<td><c:out value="${s.last }"></c:out>
		      			</td>
		      			<td mp3="mp3">${name }</td>
		      		</tr>
		      	 </c:forEach>
		      	</c:if>
		      </table>
		      </div>
	     </div>
	</div>
</body>
</html>