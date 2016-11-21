<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商品详情</title>
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
     			<li><a  href="good.action">手机</a></li>
      			<li><a  href="good.action">平板</a></li>
      			<li><a  href="good.action">电视</a></li>
      			<li><a  href="good.action">配件</a></li>
			    <li><a  href="good.action">智能硬件</a></li>
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
                <a href="index">首页</a><span>&nbsp; / &nbsp;</span><a href="goodtype.action?type=<s:property value="#request.type"/>"><s:property value="#request.type"/></a><span>&nbsp; / &nbsp;</span><span><s:property value="#request.gname"/></span>   
            </div>
        </div>
    </div>        
    
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <ul id="etalage">
							<li>								
								<img class="etalage_thumb_image" src="<s:property value="#request.src1"/>"  class="img-responsive" />
								<img class="etalage_source_image" src="<s:property value="#request.src1"/>" class="img-responsive" />								
							</li>
							<li>
								<img class="etalage_thumb_image" src="<s:property value="#request.src2"/>"  class="img-responsive" />
								<img class="etalage_source_image" src="<s:property value="#request.src2"/>" class="img-responsive" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="<s:property value="#request.src3"/>"  class="img-responsive"  />
								<img class="etalage_source_image" src="<s:property value="#request.src3"/>" class="img-responsive"  />
							</li>
						    <li>
								<img class="etalage_thumb_image" src="<s:property value="#request.src4"/>"  class="img-responsive"  />
								<img class="etalage_source_image" src="<s:property value="#request.src4"/>" class="img-responsive"  />
							</li>
                            <li>
								<img class="etalage_thumb_image" src="<s:property value="#request.src5"/>"  class="img-responsive"  />
								<img class="etalage_source_image" src="<s:property value="#request.src5"/>" class="img-responsive"  />
							</li>
						</ul>    
            </div>
            <div class="col-sm-5 goodMsg">
            	
               		<h1 ><s:property value="#request.gname" /></h1>
               		
                	<p>触摸式操作 给卧室1600万种颜色<br/>支持小米2s/3/4，小米 Note，iPhone 4s 及以上机型</p>
                	<hr/>
                    	<p class="priceview"><s:property value="#request.price" />元</p>
                    	
                    	
                	<hr/>
                	<form class="form-horizontal" action="shopcart.action" role="form" method="post">
                	<div class="input-group">
                	
                      	<label>数量：</label>
                      	<a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)"><span class="glyphicon glyphicon-minus"></span></a>
		              	<input type="text" class="text" name="qty_item_1" value="1" id="qty_item_1" onKeyUp="setAmount.modify('#qty_item_1')"  />
		              	<a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)"><span class="glyphicon glyphicon-plus"></span></a>
                	</div>
                	<hr/>
                	<div class="button-control fl mgrBig">
                		<input  type="hidden" name="price" value="<s:property value="#request.price"/>"/>
                		<input  type="hidden" name="goodname" value="<s:property value="#request.gname"/>"/>
               			<input  type="hidden" name="src" value="<s:property value="#request.isrc"/>"/>
                    	<button type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span>加入购物车</button>                    	
                	            		
                	</div>
                	</form> 
                	<div class="fl">
                		<form class="form-horizontal" action="addcollect.action" role="form" method="post">
                			<input  type="hidden" name="price" value="<s:property value="#request.price"/>"/>
                			<input  type="hidden" name="goodname" value="<s:property value="#request.gname"/>"/>
               				<input  type="hidden" name="src" value="<s:property value="#request.isrc"/>"/>
               				<input  type="hidden" name="gid" value="<s:property value="#request.gid"/>"/>
               				<s:if test="#request.cid == null ">
               					<button type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-heart"></span>收藏</button>
               				</s:if>
                			<s:else>
                				<button type="button" class="btn btn-default btn-lg" disabled="disabled"><span class="glyphicon glyphicon-heart"></span>已收藏</button>
                			</s:else>
                		</form>
                	</div>       
                	 
	        	</div>
             
         </div>
    </div>
</div>

<!-- 评价详情部分 -->
<div class="goodDepa">
    <a id="desc"></a>
    <div class="container">
        <div class="row depaTitle">            
            <ul>
     			<li><a  href="#desc">商品详情</a></li>
                <span>|</span>
      			<li><a  href="#param">规格参数</a></li>
                <span>|</span>  
      			<li><a  href="#evaluate">评价晒单</a></li>
		    </ul>
        </div>
    </div>
</div>
<div class="main2">        
    <div class="container">      
        <div class="row goodDesc">           
            <img class="descControl" src="images/goods/goodDesc_1.jpg" >             
            <img class="descControl" src="images/goods/goodDesc_2.jpg" >      
            <img class="descControl" src="images/goods/goodDesc_3.jpg" >      
            <img class="descControl" src="images/goods/goodDesc_4.jpg" >      
            <img class="descControl" src="images/goods/goodDesc_5.jpg" >      
        </div>
        <div class="row param">
            <div class="col-sm-12 titleClass">
                <a id="param"></a>
                <div class="col-sm-4 heightControl">
                    <hr class="fl" />
                </div>    
                <div class="col-sm-4 ">
                    <h1>规格参数</h1>
                </div>
                <div class="col-sm-4 heightControl">    
                    <hr class="fr" />
                </div>        
            </div>
            
            <div class="col-sm-3 paramControl">
                <img class="paramImg" src="images/goods/goodParam_1.jpg" />    
            </div>        
            <div class="col-sm-3 paramControl">             
                <ul class="fl">
                    <li>重量：680g</li>
                    <li>App支持平台：iOS、Android</li>
                    <li>直径：100毫米</li>
                    <li>高度：221毫米</li>
                    <li>色温范围：1700K - 6500K</li>
                    
            </div>
            <div class="col-sm-3 paramControl">     
               </ul>
               <ul class="fl">
                 <li>流明：300lm</li>
                 <li>调光：触摸调光、软件调光</li>
                 <li>额定功率：10W</li>
                 <li>额定输入：100-240V ~ 50/60Hz 0.5A</li>
                 <li>色彩调节：1600万</li>
               </ul>
            </div>
            <div class="col-sm-3 paramControl">  
               <ul class="fl">                                  
                 <li>床头灯输入：12V  1A</li>                                
                 <li>使用寿命：20000小时</li>
                 <li>颜色：白色</li>
                 <li>商品编号：1152300006</li>                                                       
              </ul>
            </div>         
        </div>
        <div class="row">
            <a id="evaluate"></a> 
               
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 titleClass">
                <a id="param"></a>
                <div class="col-sm-4 heightControl">
                    <hr class="fl" />
                </div>    
                <div class="col-sm-4 ">
                    <h1>评价晒单</h1>
                </div>
                <div class="col-sm-4 heightControl">    
                    <hr class="fr" />
                </div>        
            </div>    
        </div> 
        <div class="row">
        <s:if test="#request.commentList.size()==0">
        	<p class="cartEmpty">暂无小伙伴评论哦~</p>	
        </s:if>
        <s:else>
        
        <s:iterator id="commentList" value="#request.commentList">
        	<table class="table" >
                <thead>
                <tr>                                 
                    <th></th>
	            </tr>
                </thead>
                
                <tbody>
                <tr><td><span>物流：<s:property value="#commentList.logistics"/>分；</span><span>质量：<s:property value="#commentList.quality"/>分；</span> <span>服务：<s:property value="#commentList.service"/>分；</span></td></del></tr>
                <tr>                   
                    <td class="fontBold"><s:property value="#commentList.comment"/></td>
                </tr>
                <tr> 
                	<s:if test=" #commentList.picture != null ">
                		            
                    	<td class="textl goodMsg_td_border"><a href="<s:property value="#commentList.picture" />"><img class="commentImg" src="<s:property value="#commentList.picture" />"  alt="点击看大图" title="点击看大图"></a></td>         
                		
                	</s:if>
                	<s:else>
                		<td class="goodMsg_td_border">
                			&nbsp;
                		</td>
                		
                	</s:else>
                	
                </tr>
                
                <tr>            
                    <td class="textr">用户：<s:property value="#commentList.username"/></td>           
                </tr>             
                </tbody> 
              </table>
        </s:iterator>
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