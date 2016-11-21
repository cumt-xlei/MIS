<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link type="text/css" rel="stylesheet" href="style/all.css" />
    <link type="text/css" rel="stylesheet" href="style/bootstrap.min.css">
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
<div class="main2 mgt ">
	<div class="container mgt">
		<div class="row">
			
			<div class="logo fl">
					<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>	
			</div>
		</div>		
		
		<div class="row rectangle mgt">	
			<div class="col-sm-2 pdr">
				<div class="panel-group" id="accordion">
						<div class="panel panel-info">
							<div class="panel-heading fontBold">
							
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
										订单中心
								</a>
							
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-group">
										<a  class="list-group-item" href="#">全部订单</a>
										<a  class="list-group-item mgt" href="#">待支付订单</a>
										<a  class="list-group-item mgt" href="#">已完成订单</a>
										<a  class="list-group-item mgt" href="#">已关闭订单</a>								
									</ul>
								</div>
							</div>
						</div>
					</div>	
			</div>
				
			<div class="col-sm-10">
				<s:if test="#request.orderList.size()==0">
					<p class="cartEmpty">您的订单是空的</p>
                	<button type="submit" class="btn btn-info cartBtn"><a href="index">去主页开始购物</a></button>
				</s:if>
				<s:else>
				<div class="panel panel-info">
   					<div class="panel-heading fontBold">我的订单</div>
   					<table class="table table-hover centlin">
      					<th>订单号</th>
      					<th>商品信息</th>
      					<th class="order_td_control">状态</th>
      					<s:iterator id="orderList" value="#request.orderList">
      					<tr>
      						<td><s:property value="#orderList.ordercode"/></td>
      						<td>
      							<s:property value="#orderList.goodsmsg"/>
      							<s:property value="#orderList.amount"/>元
      						</td>
      						<td class="order_td_control"><s:property value="#orderList.status"/></td>      						
      					</tr> 
      					<tr>
      						<td></td>
      						<td></td>
      						<td>
      							<button type="submit" class="btn"><a href="#">查看详情</a></button>
      							 <s:if test="#orderList.status == '待收货'">
            						<button type="submit" class="btn mgt2"><a href="confirmgetorder.action?ordercode=<s:property value="#orderList.ordercode"/>">确认收货</a></button>
        						</s:if>
        						<s:elseif test="#orderList.status == '待支付'">
            						<button type="submit" class="btn mgt2"><a href="gotobuy.action?ordercode=<s:property value="#orderList.ordercode"/>">去支付</a></button>
        						</s:elseif>
        						<s:elseif test="#orderList.status == '待评价'">
            						<button type="submit" class="btn mgt2"><a href="goevaluate.action?ordercode=<s:property value="#orderList.ordercode"/>">去评价</a></button>
        						</s:elseif>
        						<s:elseif test="#orderList.status == '待发货'">
            						<button type="submit" class="btn"><a href="#">提醒发货</a></button>
        						</s:elseif>
        						<s:else>
        							<button type="submit" class="btn"><a href="#">更多商品</a></button>
        						</s:else>     						
      						</td>						
      					</tr>
      					</s:iterator>    					
   					</table>
				</div>
				</s:else>
			</div>			
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



