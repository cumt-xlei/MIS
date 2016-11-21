<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的收藏</title>
    <link type="text/css" rel="stylesheet" href="style/all.css" />
    <link rel="stylesheet"  href="style/bootstrap.min.css"  />   
    <link type="text/css" rel="stylesheet" href="style/test.css" />
   
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/demo.js"></script>

   
	
</head>

 <body>  
<div class="cartBar">
	<div class="container">
		<div class="row">
			
		    <div class="logo col-sm-1 fl"> 
			     	<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>					   		
            </div>
            				         
            <div class="fl col-sm-8">
                <p class="cartTitle">我的收藏</p>   
            </div> 
            <div class="col-sm-3 fr">
                <s:if test="#session.username == null">
                	<div class="fr">
                    	<a href="registerUser" >[免费注册]</a>					
                    	<span >|</span>
						<a id="loginSmall2" href="loginUser" >[登录]</a>
					</div>	
				</s:if>
				<s:else>
					<div class="fr">						
						
						<li class="dropdown mgr fl">
							<span class="glyphicon glyphicon-user "></span>
      						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
         						<s:property value="#session.username"/> <span class="caret"></span>
      						</a>
      					<ul class="dropdown-menu">
         					<li><a href="seeorder.action">我的订单</a></li>
		  					<li class="divider"></li>  
         					<li><a href="updateUser">修改信息</a></li>
      					</ul>
   						</li>	                    
                    </div>
					
					
				</s:else>
            </div>
        </div>
    </div>     
</div>             
   

<div class="main2">      
       
    <div class="container">
    	
        <div class="row rectangle">
        	<s:if test="#request.collectList.size()==0">
        		<p class="cartEmpty">您的收藏空的</p>
                	<button type="submit" class="btn btn-info cartBtn"><a href="index">去主页浏览吧</a></button>
        	</s:if>
        	<s:else>
        		<table class="table table-hover centlin">
      					<th>商品信息</th>
      					<th class="order_td_control">价格</th>
      					<th class="order_td_control">状态</th>
      					<s:iterator id="collectList" value="#request.collectList">
      					<tr>
      						<td class="textc">
      							<s:property value="#collectList.gname"/>
      							<img class="goodImg" src="<s:property value="#collectList.src"/>" />     						
      						</td>      						
      						<td class="textc">
      							<s:property value="#collectList.price"/>
      						</td>      						      					
      						<td class="textc">
      							<button type="submit" class="btn"><a href="good.action?gid=<s:property value="#collectList.gid"/>">查看详情</a></button>
      							<button type="submit" class="btn"><a href="deletecollect.action?gid=<s:property value="#collectList.gid"/>">取消收藏</a></button>				
      						</td>						
      					</tr>
      					
      					</s:iterator>    					
   					</table>	       	
        	</s:else>
        		
        </div>
    </div>
</div>

<!-- footer -->
<footer class="footer" id="footer">
  <div class="container">
    <div class="row">
        <div class="col-sm-3 footerOne">
             <span class="glyphicon glyphicon-repeat"></span><p >7天无理由退货</p>
        </div>
        <div class="col-sm-3 footerOne decorate">
             <span class="glyphicon glyphicon-refresh"></span><p >15天免费换货</p>
        </div>
        <div class="col-sm-3 footerOne decorate">
            <span class="glyphicon glyphicon-gift"></span><p >满150元包邮</p>
        </div>
        <div class="col-sm-3 footerOne decorate">
            <span class="glyphicon glyphicon-cog"></span><p >1小时快修服务</p>
        </div>
        
    </div>  
    <hr>
            <div class="col-sm-2">
                <aside class="widget">
                <h5 class="widget-title">帮助中心</h5>
                <ul>
                    <li><a href="#">支付方式</a></li>
                    <li><a href="#">配送方式</a></li>
                    <li><a href="#">客服服务</a></li>
                </ul>
                </aside>
            </div>

            <div class="col-sm-2">
                <aside class="widget">
                <h5 class="widget-title">关于购网</h5>
                <ul>
                    <li><a href="#">了解我们</a></li>
                    <li><a href="#">加入我们</a></li>
                    <li><a href="#">联系我们</a></li>                  
                </ul>
                </aside>
            </div>

            <div class="col-sm-2">
                <aside class="widget">
                <h5 class="widget-title">关注我们</h5>
                <ul>
                    <li><a href="#">新浪微博</a></li>
                    <li><a href="#">官方论坛</a></li>
                    <li><a href="#">官方微信</a></li>
                </ul>
                </aside>
            </div>
                 
            <div class="col-sm-3 decorate">

                <aside class="widget">
                       <p class="phone"> 400-100-5678</p>
                       <p>周一至周日 8:00-18:00 </p>
                       <p>（仅收市话费）</p>
                </aside>

              
            </div>

            <div class="col-sm-3 decorate">
                
                <aside class="widget ">
                    <img class="logoImg " src="images/icon/logo.jpg"  alt="购网">
                </aside>

                <aside class="widget ">
                <p class="logoTitle">用心服务，放心购物</p>        
                </aside>

            </div>

            </div>

        </div>

  <div class="copyright">
    <div class="container">
	<p class="copyP">&copy; 2016 | All Will Be Ok,Belive Youself Please | Designed by<a href="#">DKL</a></p> 
	
	</div>
  </div>

</footer>


</body>
</html>  


