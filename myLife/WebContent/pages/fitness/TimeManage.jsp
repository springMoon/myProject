<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Time Manage</title>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>	
	<link href="./pages/fitness/myCss.css" rel="stylesheet" ></link>
	<script src="./pages/fitness/myJs.js"></script>
	
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
      	<form action="fitness" type="post" id="fitnessForm">
      		<input type="hidden" id="fitnessOutput" name = "fitnessOutput" value="${ fitness }">
      		<input type="hidden" id="fitnessInput" name = "fitness">
      	</form>
        <table class="table table-hover " id="mainTable">
        	<caption>本周健身记录</caption>
		   <thead>
		      <tr id="header">
		         <th>头（单位：组）</th>
		         <th>俯卧撑</th>
		         <th>哑铃（举）</th>
		         <th>哑铃（提）</th>
		         <th>拉力器</th>
		         <th>臂力器</th>
		         <th>仰卧起坐</th>
		         <th>热身动作</th>
		      </tr>
		   </thead>
        	<tr id="tr2">
        		<th>周一</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	<tr id="tr3">
        		<th>周二</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	<tr id="tr4">
        		<th>周三</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	<tr id="tr5">
        		<th>周四</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	<tr id="tr6">
        		<th>周五</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	<tr id="tr7">
        		<th>周六</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	<tr id="tr8">
        		<th>周天</th>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        		<td></td>
        	</tr>
        	
        </table>
      </div>
      <div id="button">
      	<button type="button" class="btn btn-primary btn-lg" id="submit">
      		&nbsp;Submit&nbsp;
   		</button>
   		<button type="button" class="btn btn-primary btn-lg" id="clear">
      		&nbsp;&nbsp;Clear&nbsp;&nbsp;&nbsp;
   		</button>
   		<button type="button" class="btn btn-primary btn-lg" id="random">
      		Random
   		</button>
      </div>
    </div>
  </div>
  <div id="overlay"></div>
</body>
</html>