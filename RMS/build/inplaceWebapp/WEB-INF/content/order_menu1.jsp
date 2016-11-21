<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>用户信息</title>

    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/esui.js"></script>

    <script type="text/javascript">
    	
 		$(function(){
 			var a=null;
 			//数据表格
 			$('#orderdg').datagrid({
 			    url:'getallorder.action?username='+a,
 			   	fitColumns:true,
 			   	pagination:true,
 			   	rownumbers:true,
 			   	striped:true,
 			   	singleSelect:true,
 			    
 			    columns:[[
 					{field:'username',title:'用户名',width:100,align:'center'},
 					{field:'buymsg',title:'收货信息',width:100,align:'center'},
 					{field:'goodsmsg',title:'商品信息',width:100,align:'center'},
 					{field:'amount',title:'商品总价',width:100,align:'center'},
 					{field:'ordercode',title:'订单号',width:100,align:'center'},
 					{field:'status',title:'订单状态',width:100,align:'left'}
 					
 			    ]],
 			//工具栏    
 			toolbar:[{
 			//确认发货
 				text:'确认发货',   
				iconCls: 'icon-ok',
				handler: function(){
					var row = $('#orderdg').datagrid('getSelected');
 					if (row){
 						$.messager.confirm('提示', '确定发货？', function(r){
 							if (r){
 								$.post("postorder.action",{ordercode:row.ordercode},
 	 								
 										function(status){
 	 										// 这里是请求发送成功后的回调函数。
 	 										if(status != null){
 	 											$.messager.alert('成功','发货成功','info');
 	 	 										$('#orderdg').datagrid("reload");
 	 										}
 	 										else{
 	 											$.messager.alert('失败','发货失败','info');
 	 											$('#orderdg').datagrid("reload");
 	 										}
 	 									},"text")
 	 								
 								}
 						});
 					}else {
 						$.messager.alert('提示','请选择要操作的数据','info');
 			        }
				}
			   },'-',{
 			// 删除订单
 				text:'删除订单',
 				iconCls: 'icon-remove',
 				handler: function(){
 					var row = $('#orderdg').datagrid('getSelected');
 					if (row){
 						$.messager.confirm('提示', '确定删除？', function(r){
 							if (r){
 								$.post("deleteorder.action",{ordercode:row.ordercode},
 	 								
 										function(status){
 	 										// 这里是请求发送成功后的回调函数。
 	 										if(status != null){
 	 											$.messager.alert('成功','删除成功','info');
 	 	 										$('#orderdg').datagrid("reload");
 	 										}
 	 										else{
 	 											$.messager.alert('失败','删除失败','info');
 	 											$('#orderdg').datagrid("reload");
 	 										}
 	 									},"text")
 	 								
 								}
 						});
 					}else {
 						$.messager.alert('提示','请选择要操作的数据','info');
 			        }
 				}
 			},'-',{
 				//查找订单
 				text:'订单搜索',   
				iconCls: 'icon-search',
				handler: function(){
					$('#searchOrderWindow').dialog({
					    title: '订单查找',
					    width: 330,
					    height:	230,
					    closed: false,
					    cache: false,
					    href:'order_sub_search',
					    modal: true
					})}
			   }]
 			});
 		})
 				
 		
 		
				
			//search窗口提交action
			function submitOrederSearch()
			{				
					var a=document.getElementById('searchOname').value;
					if(a!=""){
						var url='getallorder.action?username='+a;					
						$('#orderdg').datagrid('reload',url);
						$('#searchOrderWindow').dialog('close');				
					}
					
			}
		
 		
 		//search窗口点击确定取消查找之后
 		function searchOrederCancel()
		{
			$('#searchOrderWindow').dialog('close');
		}
 		
 		
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
    <!--表格-->
    <table id="orderdg" ></table>
    
 


	<div id="searchOrderWindow"> </div> 

</body>
</html>