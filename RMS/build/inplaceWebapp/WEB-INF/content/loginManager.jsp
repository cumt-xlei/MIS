<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link type="text/css" rel="stylesheet" href="style/all.css" />
    <link href="style/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="style/test.css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
<title>登录</title>
</head>
<body class="bodyControl">
<div class="headerBar">
	<div class="container">
		<div class="row">
			
		</div>
	</div>
</div>
<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 loginCenter">
				<div class="logo loginHead"> 
					<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>
					<h2>心网后台登录</h2>
					
				</div>
				<div class="loginArea">
					<div class="tipMsg"><s:actionerror cssStyle="color:red"/></div>
				<form class="form-horizontal" action="managerlogin.action" role="form" method="post">
   					<div class="form-group">
      					<div class="col-sm-12">
         						<input type="text" class="form-control" name="mananame" id="username" placeholder="请输入用户名"  />
      					</div>
   					</div>
   					<div class="form-group">
      					<div class="col-sm-12">
         					<input type ="password" class="form-control" name="manapsw" id="password" placeholder="请输入密码 "  value="${pword}" />
      					</div>
				   </div>
				   
				     
   				<div class="form-group">
     				 <div class="col-sm-12">
         				<button type="submit" class="btn btn-primary">立即登录</button>
      				</div>
   				</div>
			     </form>
			     </div>	
				
			
			</div>
		</div>
	</div>
    <footer class="footer loginFooter">
    <div id="copyright">
        <div class="container">
	       <p class="copyP">&copy; 2016 | All Will Be Ok,Belive Youself Please | Designed by<a href="#">DKL</a></p>
	   </div>
    </div>
	</footer> 
</div>

</body>
</html>