<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商品类别</title>
    <link type="text/css" rel="stylesheet" href="style/all.css" />
    <link href="style/bootstrap.min.css" rel="stylesheet">
    <link  rel="stylesheet" href="style/test.css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

	
</head>

 <body>  
<div class="headerBar">
	<div class="container">
		<div class="row">
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
					<span class="fl">你好，</span>					
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
				
				<span class="fr" id="shopping-cart">
        			<form action="inputcart.action">
        				<button type="submit" class="btn btn-link ">
        					<span class="glyphicon glyphicon-shopping-cart"></span>
   							<span class="shopText">我的购物车</span>
            				<span class="badge"><span class="shopNum"><s:property value="#application.cartqty"/></span></span>
            			</button>
         			</form>	
     		 	</span>		
			</div>
	</div>  	
		</div>
	</div>
</div> 
<div class="logoBar container navbar-wrapper">
      <div class="row" id="navcontainer">
        <nav class="navbar navbar-pills " role="navigation">
	
		<div class="logo navbar-left"> 
			<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>					   		
        </div>			         
            <div class="navbar-header col-sm-5">		
              <ul class="nav  navbar-nav ">
     			<li><a  href="goodtype.action?type=手机">手机</a></li>
      			<li><a  href="goodtype.action?type=平板">平板</a></li>
      			<li><a  href="goodtype.action?type=电视">电视</a></li>
      			<li><a  href="goodtype.action?type=配件">配件</a></li>
				<li><a  href="goodtype.action?type=智能硬件">智能硬件</a></li>
		      </ul>
            </div>
	     <div class="navbar-right">
            <form class="navbar-form " role="search">
              <div class="form-group">
                <input type="text" class="form-control search_text" placeholder="Search">
              </div>
              <button type="submit" class="btn btn-default search_btn">搜索</button>
            </form>
         </div>
         	
        </nav>
      </div>
   </div>

<div class="main">
    <div class="mainHead">
        <div class="container">    
            <div class="row">
                <a href="index">首页</a><span>&nbsp; / &nbsp;</span><span><s:property value="#request.type"/></span>
            </div>
        </div>
    </div>        
</div>
<div class="shopList  container">

	<div class="oneArea  row ">
		<ul class="col-sm-12">
			<s:iterator id="goodTypeList" value="#request.goodTypeList">
					
			<li class="col-sm-3 shortLi">
				<form name="goodform" method="post">	
				<a class="img-rounded"  href="good.action?gid=<s:property value="#goodTypeList.gid"/>">
				
					<img class="goodImg" src="<s:property value="#goodTypeList.isrc"/>" alt="#"/>
					<input  type="hidden" name="gid" value="<s:property value="#goodTypeList.gid"/>"/>	
					<p class="goodName"><s:property value="#goodTypeList.gname"/></p>
				</a>	
				
				<p class="desc"><s:property value="#goodTypeList.desc"/></p>
				<p class="priceview"><s:property value="#goodTypeList.price"/>元</p>
				</form>
			</li>
				
			</s:iterator>	
			
		</ul>	
			
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