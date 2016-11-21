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
<title>All</title>
</head>
<body class="bodyControl">
<div class="headerBar">
<div class=" container">
	<div class=" navbar-inner">			
				<a href="inputcollect.action" class="collection">我的收藏<span class="glyphicon glyphicon-heart-empty collect_color"></span></a>
				<span>|</span>			
				当前在线人数：<s:property value="#application.count"/>	
			<div class="rightArea fr">
				<s:if test="#session.username == null">
					<a id="loginSmall2" href="loginUser" >[登录]</a>
					<span>|</span>
					<a href="registerUser" >[免费注册]</a>
					<span>|</span>	
				</s:if>
				<s:else>
					<li class="dropdown fl mgr">
      				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
         				<s:property value="#session.username"/> <span class="caret"></span>
      				</a>
      				<ul class="dropdown-menu">
         				<li><a href="seeorder.action">我的订单</a></li>
		  				<li class="divider"></li>  
         				<li><a href="updateUser">修改信息</a></li>
      				</ul>
   					</li>
					<a href="logout.action">[退出登录]</a>
					<span>|</span>
				</s:else>				
				
				<div class="fr" id="shopping-cart">
					<form action="inputcart.action">
        				<button type="submit" class="btn btn-link ">
        					<span class="glyphicon glyphicon-shopping-cart"></span>
   							<span class="shopText">我的购物车</span>
            				 <span class="badge"><span class="shopNum"><s:property value="#application.cartqty"/></span></span>
            			</button>
         			</form>	
    					
     		 	</div>		
			</div>
	</div>
</div>
</div>
<div class="sxcontrol"></div>
<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 loginCenter">	
				<div class="logo loginHead"> 
					<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>					
				</div>			
				<div class="loginArea">
				
					<div class="fontBold">
						<span class="msgall "><span class="glyphicon glyphicon-volume-down" ></span></span>
    					<s:if test="tip != null">
		 					<s:property value="tip"/>				
						</s:if>
	 
		 		
		 				<span>
		 				
		 					<s:actionmessage/>				
							<s:actionerror/>
						</span>			
					<div class="buttonLign">
						<div class="ohterHelp row ">
                    		<div class="col-sm-4"></div>
                    		<div class="col-sm-4 registerLogin"><hr class="fl" /><a href="loginUser">点此登录</a><hr class="fr" /></div>
                    		<div class="col-sm-4"></div>              
                 		</div>
                 	</div>			
					</div>			
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



