<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link type="text/css" rel="stylesheet" href="style/all.css" />
    <link href="style/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="style/test.css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
	
<title>购网</title>



</head>

<body>
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
					<span class="fl">你好，</span>					
					<li class="dropdown fl mgr">
      				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
         				<s:property value="#session.username"/> <span class="caret"></span>
      				</a>
      				<ul class="dropdown-menu">
         				<li><a href="seeorder.action" >我的订单</a></li>
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
 <!--导航-->
    <div class="logoBar container navbar-wrapper">
      <div class="container  " id="navcontainer">
        <nav class="navbar navbar-pills " role="navigation">
	
		<div class="logo navbar-left">
			<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>	
						   								
		</div>			
  		
	
          
            <div class="navbar-header col-sm-5">
		
             <ul class="nav  navbar-nav ">
	 		<li class="active"><a href="index">网站首页</a></li>
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

<div class="banner  container">
	<div id="myCarousel" class="carousel slide ">
  	 <!-- 轮播（Carousel）指标 -->
   		<ol class="carousel-indicators">
      			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      			<li data-target="#myCarousel" data-slide-to="1"></li>
     			<li data-target="#myCarousel" data-slide-to="2"></li>
   		</ol>   
   	<!-- 轮播（Carousel）项目 -->
   	<div class="carousel-inner">
      		<div class="item active">
         		<img src="images/banner/banner_01.jpg" alt="First slide">
      		</div>
      		<div class="item">
         		<img src="images/banner/banner_01.jpg" alt="Second slide">
      		</div>
      		<div class="item">
         		<img src="images/banner/banner_01.jpg" alt="Third slide">
      		</div>
   	</div>
  	 <!-- 轮播（Carousel）导航 -->
  		 <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
   		 <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div> 
</div> 	


<!-- 第一栏商品 -->

<div class="shopList  container">
	<div class="shopTit row col-sm-12 col-xs-12">
		
			<span class="glyphicon glyphicon-align-justify tipIcon"></span><h3>明星单品</h3>

		<a href="#" class="more">更多&gt;&gt;</a>
	</div>
	<div class="oneArea  row ">
		<ul class="col-sm-12">
			<s:iterator id="goodlist" value="#request.goodlist">
					
			<li class="col-sm-3 shortLi">
				<form name="goodform" method="post">	
				<a class="img-rounded"  href="good.action?gid=<s:property value="#goodlist.gid"/>">
				
					<img class="goodImg" src="<s:property value="#goodlist.isrc"/>" alt="#"/>
					<input  type="hidden" name="gid" value="<s:property value="#goodlist.gid"/>"/>	
					<p class="goodName"><s:property value="#goodlist.gname"/></p>
				</a>	
				
				<p class="desc"><s:property value="#goodlist.desc"/></p>
				<p class="priceview"><s:property value="#goodlist.price"/>元</p>
				</form>
			</li>
				
			</s:iterator>	
			
		</ul>	
			
	</div>	
</div>
<div class="main2">
<!-- 第二栏商品 -->

<div class="shopList container shopListLong">
	<div class="shopTit row col-sm-12 col-xs-12">
		
			<span class="glyphicon glyphicon-align-justify tipIcon"></span><h3>智能硬件</h3>

		<a href="#" class="more">更多&gt;&gt;</a>
	</div>
	<div class="leftArea ">
		<ul >
			<li class="col-sm-3 longLi">
				<a class="#" href="good.action"><img class="longImg" src="images/goods/good_big1.jpg" alt="#"/></a>
			</li>	
		</ul>
	</div>
	<div class="rightArea ">
		
		<ul class="goodList2 row">
			<li  class="col-sm-3 shortLi">
				<form method="post">
                <a class="img-rounded" href="good.action" onclick="submit()">
					<img class="goodImg" src="images/goods/good_6.jpg" alt="#"/>
					<input  type="hidden" name="gid" value="1"/>
					<p class="goodName">米家压力IH电饭煲</p>
					</a>	
				</form>    
				<p class="desc">智能烹饪,居家能手</p>
				<p class="priceview">999元</p>
             </li>
			
			<li class="col-sm-3 shortLi">
                <a class="img-rounded" href="good.action">
					<img class="goodImg" src="images/goods/good_7.jpg" alt="#"/>
					<input  type="hidden" name="gid" value="1"/>
					<p class="goodName">小米路由器3</p>
					</a>	
				    
				<p class="desc">更安全更稳定，现货发售</p>
				 <p class="priceview">149元</p>
             </li>
			
			<li class="col-sm-3 shortLi">
                <a class="img-rounded" href="good.action">
					<img class="goodImg" src="images/goods/good_8.jpg" alt="#"/>
					<p class="goodName">小米智能安防套装</p>
					<input  type="hidden" name="gid" value="1"/>
					</a>	
				    
				<p class="desc">智能警戒，为您的家增添一份安心</p>
				<p class="priceview">169元</p>
            </li>		
     
			<li class="col-sm-3 shortLi last">
                <a class="img-rounded" href="good.action">
					<img class="goodImg" src="images/goods/good_9.jpg" alt="#"/>
					<p class="goodName">米兔儿童电话手表</p>
					<input  type="hidden" name="gid" value="1"/>
					</a>	
				    
				<p class="desc">安全防走丢，宝贝的贴身护卫</p>
				<p class="priceview">299元</p>
            </li>
		</ul>
		
		<ul class="goodList2 row">
			<li class="col-sm-3 shortLi">
                <a class="img-rounded" href="good.action">
					<img class="goodImg" src="images/goods/good_10.jpg" alt="#"/>
					<p class="goodName">九号平衡车</p>
					<input  type="hidden" name="gid" value="1"/>
					</a>	
				    
			    <p class="desc">年轻人的酷玩具，两种玩法等你来</p>
				<p class="priceview">1999元</p>
            </li>
		
		
			<li class="col-sm-3 shortLi">
                <a class="img-rounded" href="good.action">
					<img class="goodImg" src="images/goods/good_11.jpg" alt="#"/>
					<input  type="hidden" name="gid" value="1"/>
					<p class="goodName">小蚁运动相机</p>
					</a>	
				   
				<p class="desc">边玩边录边拍，手机随时分享</p>
				<p class="priceview">399元</p>
            </li>
		
		
			<li class="col-sm-3 shortLi">
                <a class="img-rounded" href="good.action">
					<img class="goodImg" src="images/goods/good_12.jpg" alt="#"/>
					<p class="goodName">小蚁智能摄像机 夜视版</p>
					<input  type="hidden" name="gid" value="1"/>
					</a>	
				<p class="desc">能看能听能说，手机远程观看</p>
				<p class="priceview">149元</p>
            </li>		
			
		
		
			<li class="col-sm-3 shortLi last">
                <a class="img-rounded" href="good.action">
					<input  type="hidden" name="gid" value="1"/>
					<img class="goodImg" src="images/goods/good_13.jpg" alt="#"/>
					<p class="goodName">Yeelight LED智能灯泡 彩光版</p>
					</a>	
				<p class="desc">亮度自由调节，WIFI远程操作</p>
				<p class="priceview">99元</p>
             </li>
		</ul>
			
	</div>
</div>

<!-- 第三栏商品 -->
<div class="shopList container shopListLong">
	<div class="shopTit row col-lg-12">
		
			<span class="glyphicon glyphicon-align-justify tipIcon"></span><h3>智能硬件</h3>

		<a href="#" class="more">更多&gt;&gt;</a>
	</div>
	<div class="leftArea col-sm-3">
		<ul >
			<li>
				<a class="img-rounded" href="good.action"><img class="goodImg " src="images/goods/good_sma1.jpg" alt="#"/></a>
			</li>	
			
		</ul>
	</div>
    <div class="rightArea">
	   <ul class="row">
		  <li class="col-sm-3 shortLi">
            <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_14.jpg" alt="#"/><p class="goodName">移动电源10000mAh</p></a>	
			
			<p class="desc">支持USB Type-C充放</p>
			<p class="priceview">79元</p>
		  </li>
		
		  <li class="col-sm-3 shortLi">
              <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_15.jpg" alt="#"/><p class="goodName">小米插线板</p></a>	
			 
			 <p class="desc">3USB插口，多重保护</p>
			 <p class="priceview">49元</p>
		  </li>  
		  <li class="col-sm-3 shortLi">
            <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_16.jpg" alt="#"/><p class="goodName">小米圈铁耳机</p></a>
			
			<p class="desc">动听音质，为你而生</p>
			<p class="priceview">99元</p>		
	      </li>	
		  <li class="col-sm-3 shortLi last">
            <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_17.jpg" alt="#"/><p class="goodName">小米自拍杆</p></a>
			
			<p class="desc">轻巧便携 蓝牙连接 无需安装App</p>
			<p class="priceview">49元</p>
          </li>	
	   </ul>
	</div>	
	<div class="leftArea col-sm-3">
		<ul>
			<li>
				<a class="img-rounded" href="good.action"><img class="goodImg " src="images/goods/good_sma2.jpg" alt="#"/></a>
			</li>	
			
		</ul>
	</div>
    <div class="rightArea">
		<ul class="row ">
		  <li class="col-sm-3 shortLi">
            <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_18.jpg" alt="#"/><p class="goodName">小米小钢炮音箱</p></a>	
			
			<p class="desc">极简完美设计，专业喇叭，7小时续航</p>
			<p class="priceview">129元</p>
		  </li>
	
		  <li class="col-sm-3 shortLi">
            <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_19.jpg" alt="#"/><p class="goodName">小米方盒子蓝牙音箱</p></a>	
			
			<p class="desc">双声道立体声 全金属外壳 12小时播放</p>
			<p class="priceview">99元</p>
          </li>
		
	
		  <li class="col-sm-3 shortLi">
            <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_20.jpg" alt="#"/><p class="goodName">彩虹5号电池（10粒装）</p></a>	
			
			<p class="desc">日制核心，电量持久，无汞无镉，安全环保</p>
			<p class="priceview">9.9元</p>		
	      </li>
			<li class="col-sm-3 shortLi last">
                <a class="img-rounded" href="good.action"><img class="goodImg" src="images/goods/good_21.jpg" alt="#"/><p class="goodName">小米蓝牙手柄</p></a>	
			
			    <p class="desc">双马达振动，三轴重力感应，游戏必备</p>
			    <p class="priceview">99元</p>
           </li>
		</ul>
	</div>	
	<div class="container">
        <a href="#" class="moreWord"><p>更有其他低价搭配</p><span class="glyphicon glyphicon-circle-arrow-right"></span></a> 
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
