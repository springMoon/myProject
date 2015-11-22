<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my life</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<style type="text/css">
	#top-nav{
		float:top;
		height:50px;
		width:100%;
		text-align:center;
		/* background:green; */
	}
	#topBar{
	}
	#menuItem{
		width:16.66%;
		border-right:1px #ccc solid; 
	}
	#body{
		position:relative;
	}
	#main{
		position:absolute;
		float:right;
		width:80%;
		height:100%;
		text-align:center;
		/* background:#00dd00; */
	}
</style>
<script type="text/javascript">
window.onload = function(){
	//get page element
	var fitnessRegime = document.getElementById("fitnessRegime");
	var timeManage = document.getElementById("timeManage");
	//variable
	
	//event
	//add click event to fitnessRegime forward to fitnessRegime page
	fitnessRegime.onclick = function(){
		window.open("TimeManage2810.html");
	}
	timeManage.onclick = function(){
		window.open("pages/fitness/TimeManage.html");
	}
	//function
}
</script>
</head>
<body>
 	<div id="top-nav">
		<ul class="nav nav-tabs" id="topBar">
		   <li id="menuItem"><a href="#">Home</a></li>
		   <li class="dropdown" id="menuItem">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
		         	Timer Manage <span class="caret"></span>
		      </a>
		      <ul class="dropdown-menu">
		         <li><a href="pages/timer/ExerciseTimer.html">Exercise Timer</a></li>
		         <li><a href="#">1--2</a></li>
		         <li><a href="#">1--3</a></li>
		         <li class="divider"></li>
		         <li><a href="#">1--5</a></li>
		      </ul>
		   </li>
		   <li class="dropdown" id="menuItem">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
		         	Fitness <span class="caret"></span>
		      </a>
		      <ul class="dropdown-menu">
		      <!-- 将链接写到Action，先访问一遍，得到历史数据，再加载网页，显示颜色 -->
		         <li><a href="loadFitness_TimeManage">Fitness Page</a></li>
		         <li><a href="#">2--2</a></li>
		         <li><a href="#">2--3</a></li>
		         <li class="divider"></li>
		         <li><a href="#">2--5</a></li>
		      </ul>
		   </li>
		   <li class="dropdown" id="menuItem">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
		         	Player <span class="caret"></span>
		      </a>
		      <ul class="dropdown-menu">
		         <li><a href="musicPlayer">Music Player</a></li>
		         <li><a href="#">3--2</a></li>
		         <li><a href="#">3--3</a></li>
		         <li class="divider"></li>
		         <li><a href="#">3--5</a></li>
		      </ul>
		   </li>
		   <li class="dropdown" id="menuItem">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
		         	菜单4 <span class="caret"></span>
		      </a>
		      <ul class="dropdown-menu">
		         <li><a href="#">4--1</a></li>
		         <li><a href="#">4--2</a></li>
		         <li><a href="#">4--3</a></li>
		         <li class="divider"></li>
		         <li><a href="#">4--5</a></li>
		      </ul>
		   </li>
		   <li class="dropdown" id="menuItem">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
		         	菜单4 <span class="caret"></span>
		      </a>
		      <ul class="dropdown-menu">
		         <li><a href="#">4--1</a></li>
		         <li><a href="#">4--2</a></li>
		         <li><a href="#">4--3</a></li>
		         <li class="divider"></li>
		         <li><a href="#">4--5</a></li>
		      </ul>
		   </li>
		</ul>
	</div>
	<div id="body">
		<div id="sidebar"></div>
		<div id="main">main
			<div id="sub-nav-container">
				 <button type="button" class="btn btn-primary btn-lg" id="fitnessRegime">
      				Fitness Regime
   				 </button>
   				 <button type="button" class="btn btn-primary btn-lg" id="timeManage1">
      				Time Manage-old
   				 </button>
   				 <button type="button" class="btn btn-primary btn-lg" id="timeManage">
      				Time Manage-fitness
   				 </button>
			</div>
		</div>
	</div>
	<div id="overlay"></div>
</body>
</html>