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
<style type="text/css" src="./sytle/myStyle.css"></style>
<style type="text/css">
#main{
	position: float;
	margin: 20% 35% 50% 40%;
}
#sub-nav-container {
	position: float;
	margin: 10%;
	background:"#c1c8c4";
}
/* #submit{
	position:float;
	margin-right:10%;
	margin-left:10%;
} */
/* #input-group{
	width:60%;
	height:60%;
} */
</style>
<script type="text/javascript">
	window.onload = function(){
		//get page element
		var name = document.getElementById("name");
		var password = document.getElementById("password");
		//variable
		
		//event
		//lose focus
		name.onblur = function(){
			var num = name.value;
			//alert(num.length);
			if(num.length < 4){
				alert("user name lenght less than 4");
				name.value = "your username";
				name.style.color = "red";
				
			}
		}
		password.onblur = function(){
			var num = password.value;
			//alert(num.length);
			alert(num);
			if(num.length < 4){
				alert("password lenght less than 4");
				password.value = "your username";
				password.style.color = "red";
				
			}else if(num.match("\s")){
				alert("your password length or character is error--");
				password.value = "your password";
				password.style.color="red";
			}
			 else if(num.match("\p{Punct}")){
				alert("your password length or character is error--");
				password.value = "your password";
				password.style.color="red";
			} 
			/* else if(!num.match("\`[a-zA-Z0-9]{6,16}\$")){
				alert("your password length or character is error");
				password.value = "your password";
				password.style.color="red";
				
			} */
		}
		//function
		
		
	}
</script>
</head>
<body>
	<div id="top-nav"></div>
	<div id="body">
		<div id="nav-top-bar"></div>
		<div id="sidebar"></div>
		<div id="main">
			<div id="sub-nav-container">
				<!-- <form action="login" method="post">
					用户名:<input type="text" name="user.name" /><br /> 密码:<input
						type="password" name="user.password" /><br /> <input
						type="submit" value="登录" />
				</form> -->
				<form action="login" method="post">
					<br>
					<div class="input-group">
						<span class="input-group-addon">Username</span> <input type="text"
							class="form-control" placeholder="your username" name="user.name" id="name">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon">Password&nbsp;</span> <input type="password" id="password"
							class="form-control" placeholder="your password" name="user.password">
					</div>
					<br>
					<div  id="submit">
						<input type="submit" class="form-control" value="submit" >
					</div>
					<br>
				</form>
			</div>
		</div>
	</div>
	<div id="overlay"></div>

</body>
</html>