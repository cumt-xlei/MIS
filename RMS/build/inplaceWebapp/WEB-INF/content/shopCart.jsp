<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的购物车</title>
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
                <p class="cartTitle">我的购物车</p>   
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
    	
        <div class="row catbox">
        	<s:if test="#session.username == null">
				<p class="cartEmpty">您的购物车是空的</p>
			<button type="submit" class="btn btn-info cartBtn"><a href="loginUser">登录开始购物</a></button>	
			</s:if>
            <s:elseif test="#request.cartlist.size()==0 ">
                <p class="cartEmpty">您的购物车是空的</p>
                <button type="submit" class="btn btn-info cartBtn"><a href="index">去主页开始购物</a></button>
            </s:elseif>    
			<s:else>
                <table class="table table-hover table-control" id="cartTable">
                <thead>
                <tr>
                    <th><label>
                        <input class="check-all check" type="checkbox"/>&nbsp;&nbsp;全选</label>
                    </th>
                    <th>商品</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>小计</th>
                    <th>操作</th>
                </tr>
                </thead>
                
                <tbody>
                       
                <s:iterator id="cartlist" value="#request.cartlist">
                
                <tr>
                    <td class="checkbox cartTd_control"><input class="check-one check" type="checkbox"/></td>
                    <td class="goods cartTd_control" ><img class="goodImg" src="<s:property value="#cartlist.src"/>" alt=""/><s:property value="#cartlist.goodname"/></td>
                    
                    <td class="price cartTd_control"><s:property value="#cartlist.price"/></td>
                    
                    <td class="count cartTd_control">
                        
                            
                        <a href="changeqtyre.action?gid=<s:property value="#cartlist.gid"/>" ><span class="reduce" >-</span></a>
                        
                         <input class="count-input cartTd_control" type="text" name="qty" value="<s:property value="#cartlist.qty_item_1"/>"/>
                         <input  type="hidden" name="gid" value="<s:property value="#cartlist.gid"/>"/>
                         <input  type="hidden" name="goodname" value="<s:property value="#cartlist.goodname"/>"/>
                        
                        <a href="changeqtyad.action?gid=<s:property value="#cartlist.gid"/>"><span class="add" >+</span></a>
                        
                         
                    </td>
                                 
                    <td class="subtotal cartTd_control"><s:property value="(#cartlist.qty_item_1)*(#cartlist.price)"/></td>
                    
                    <td class="operation cartTd_control"><form action="deletegood.action" method="post"><button type="submit" class="btn"><span class="delete">删除</span></botton><input  type="hidden" name="gid" value="<s:property value="#cartlist.gid"/>"/></form></td>
                </tr>
                
                </s:iterator>
                </tbody> 
                </table>
                
                <div class="foot" id="foot">
                <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;&nbsp;全选</label>
                <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
                <form method="post" action ="addorder.action">
                <div class="fr closing" ><button type="submit" class="btn cartbtn" >结 算</button></div>
                
                <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
            
                <input  type="hidden" id="amount" name="amount" value=""/>
                </form>
                <div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
                <div class="selected-view">
                <div id="selectedViewList" class="clearfix">
                    <div><img src="images/1.jpg"><span>取消选择</span></div>
                </div>
                <span class="arrow">◆<span>◆</span></span> </div>
                </div>

          
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


