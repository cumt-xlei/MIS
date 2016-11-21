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

    <script type="text/javascript">

        $(document).ready(function() { 

        // 任何需要执行的js特效 
            var j=0;
            $("div.mydiv").each(function(){
            this.id = j;           
            initEvent(j);
       
            j++;
           
            });
        });     

        var isclick = false;
        function change(mydivid,num) {
            if (!isclick) {
                var tds = $("#"+mydivid+" ul li");
                for (var i = 0; i < num; i++) {
                    var td = tds[i];
                    $(td).find("img").attr("src","images/icon/star_full.png");
                }
                var tindex = $("#"+mydivid).attr("currentIndex");
                tindex = tindex==0?0:tindex+1;
                for (var j = num; j < tindex; j++) {
                    var td = tds[j];
                    $(td).find("img").attr("src","images/icon/star_empty.png");
                }
                $("#"+mydivid).attr("currentIndex",num);
                $("#"+mydivid+" span").text(num+"分"); 
                $("#"+mydivid+" input").val(num)
            }
        }
        function repeal(mydivid,num) {
            if (!isclick) {
                var tds = $("#"+mydivid+" ul li");
                var tindex = $("#"+mydivid).attr("currentIndex");
                tindex = tindex==0?0:tindex+1;
                for (var i = tindex; i < num; i++) {
                    var td = tds[i];
                    $(td).find("img").attr("src","images/icon/star_empty.png");
                }
                $("#"+mydivid).attr("currentIndex",num);
                $("#"+mydivid+" span").text(num+"分");
                $("#"+mydivid+" input").val(num)
                
            }
        }
        function change1(mydivid,num) {
            if (!isclick) {
                change(mydivid,num);

            }
            else {
                alert("Sorry,You had clicked me!");
            }
        }
      
        function initEvent(mydivid) {
            //var tableWjx =$("#tableWjx ul li");
            // var items= tableWjx.getElementsByTagName("ul");

            var tds = $("#"+mydivid+" ul li");
            for (var i = 0; i < tds.length; i++) {
                var td = tds[i];
                $(td).on('mouseover',function(){var num = $(this).attr("num");change(mydivid,num);});
                //$(td).live('mouseout',function(){var num = $(this).attr("num");repeal(mydivid,num);});
                $(td).on('click',function(){var num = $(this).attr("num");change1(mydivid,num);});
            }
        }
    </script>


<title>商品评价</title>
</head>
<body class="bodyControl">
<div class="cartBar">
	<div class="container">
		<div class="row">
			
		    <div class="logo col-sm-1 fl"> 
			     	<a href="index"><img class="logoImg" src="images/icon/logo.jpg" onmouseover="this.src='images/icon/logo2.png'" onmouseout="this.src='images/icon/logo.jpg'" alt="主页" /></a>					   		
            </div>
            				         
            <div class="fl col-sm-8">
                <p class="cartTitle">商品评价</p>   
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
<div class="main2 mgt ">
	<div class="container mgt">
		<div class="row rectangle">
		<s:iterator id="evaluateList" value="#request.evaluateList">
            <div class="col-sm-3">
            
            	<p class="fontBold"><s:property value="#evaluateList.goodname"/></p>
			    <img class="goodImg" src="<s:property value="#evaluateList.src"/>" alt="<s:property value="#evaluateList.goodname"/>"/>
            </div>
            <div class="col-sm-9 pdl">
            <s:form action="evaluateorder.action" enctype="multipart/form-data">
              
                <div class="mgb  mydiv fl mgrBig" id=""  currentIndex="0">
                    <p class="dpinline">物流:<span></span></p>
                    <input type="hidden" name="evLogistics" value=""/>
                    
                    <ul class="star_ul">
                        <li class="fl" num="1"><img src="images/icon/star_empty.png" class="xing_hui"/></li>
                        <li class="fl" num="2"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="3"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="4"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="5"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                    </ul>
                </div>

                <div class="mgb  mydiv fl mgrBig" id=""  currentIndex="0">
                    <p class="dpinline">质量：<span>0分</span> </p>
                    <input type="hidden" name="evQuality" value=""/>

                    <ul class="star_ul">
                        <li class="fl" num="1"><img src="images/icon/star_empty.png" class="xing_hui"/></li>
                        <li class="fl" num="2"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="3"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="4"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="5"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                    </ul>
                </div>

                <div class="mgb  mydiv fl mgrBig" id=""  currentIndex="0">
                    <p class="dpinline">服务：<span></span></p>
                    <input type="hidden" name="evService" value=""/>               
                    <ul class="star_ul">
                        <li class="fl" num="1"><img src="images/icon/star_empty.png" class="xing_hui"/></li>
                        <li class="fl" num="2"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="3"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="4"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                        <li class="fl" num="5"><img src="images/icon/star_empty.png"  class="xing_hui"/></li>
                    </ul>
                </div>
                
                <div class="mgb">
                    <textarea class="form-control" rows="5" name="comment" placeholder="请输入评论"></textarea>                   
                </div>
                <div class="loadPicture">
               		<label>添加图片：</label>
                 	<s:file name="upload"/>
                </div>	 	
                <div  class="fr">
                       
                    <input type="hidden" name="goodname" value="<s:property value="#evaluateList.goodname"/>"/>
                    <input type="hidden" name="ordercode" value="<s:property value="#evaluateList.ordercode"/>"/>
                    <button type="submit" class="btn btn-primary">提交评价</button>
                </div>
            </s:form>
            </div>    	
        </s:iterator>           
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



