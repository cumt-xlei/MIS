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
<% 
 				String uname = "";
                String pword = "";
                Cookie[] cookies = request.getCookies();
                if(cookies!=null)
                {
             
                    for (int j = 0; j < cookies.length; j++) 
                    {
                        Cookie c = cookies[j];     
                       if(c.getName().equalsIgnoreCase("username"))
                       {
                    	   uname = java.net.URLDecoder.decode(c.getValue(),"UTF-8");
                         }
                        else if(c.getName().equalsIgnoreCase("password"))
                         {
                        	pword = java.net.URLDecoder.decode(c.getValue(),"UTF-8");
                         }     
                     } 
                   
                }
                request.setAttribute("uname", uname);
                request.setAttribute("pword", pword);
%>
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
					<h2>欢迎登录心网</h2>
					
				</div>
				<div class="loginArea">
					<div class="tipMsg"><s:actionerror cssStyle="color:red"/></div>
				<form class="form-horizontal" action="login.action" role="form" method="post">
   					<div class="form-group">
      					<div class="col-sm-12">
         						<input type="text" class="form-control" name="username" id="username" placeholder="请输入用户名"  value="<s:property value="#request.uname"/>" />
      					</div>
   					</div>
   					<div class="form-group">
      					<div class="col-sm-12">
         					<input type ="password" class="form-control" name="password" id="password" placeholder="请输入密码 "  value="<s:property value="#request.pword"/>" />
      					</div>
				   </div>
				   
				   <div class="form-group">
     				 <div class="col-sm-12">
         				<s:checkbox label="Remember Me" id="cb1" name="checkbox" value="true" ></s:checkbox> 
      				</div>
   				</div>
				     
   				<div class="form-group">
     				 <div class="col-sm-12">
         				<button type="submit" class="btn btn-primary">立即登录</button>
      				</div>
   				</div>
			     </form>
			     </div>	
                 <div class="ohterHelp row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><a class="" href="registerUser">注册购网账号！</a>|<a class="" href="searchUser">忘记密码？</a></div>
                    <div class="col-sm-4"></div>              
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