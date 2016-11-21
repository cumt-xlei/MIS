<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>商品信息</title>

    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/esui.js"></script>

    <script type="text/javascript">
 		$(function(){
 			var a="电视";
 			//数据表格
 			$('#goodtypedg').datagrid({
 			    url:'getalltypegood.action?type='+a,
 			   	fitColumns:true,
 			   	pagination:true,
 			   	rownumbers:true,
 			   	striped:true,
 			   	singleSelect:true,
 			    
 			    columns:[[
					{field:'type',title:'类别',width:100,align:'center'},    
					{field:'gid',title:'商品ID',width:100,align:'center'},      
 					{field:'gname',title:'商品名',width:100,align:'center'}
 			    ]],
 			//工具栏    
 			toolbar:[{
 			// 删除商品
 				text:'删除商品',
 				iconCls: 'icon-remove',
 				handler: function(){
 					var row = $('#goodtypedg').datagrid('getSelected');
 					if (row){
 						$.messager.confirm('提示', '确定删除？', function(r){
 							if (r){
 								$.post("deletegood.action",{gid:row.gid},
 	 								
 										function(returnpd){
 	 										// 这里是请求发送成功后的回调函数。
 	 										if(returnpd != "\"error\""){
 	 											$.messager.alert('成功','删除成功','info');
 	 	 										$('#goodtypedg').datagrid("reload");
 	 										}
 	 										else{
 	 											$.messager.alert('失败','删除失败','info');
 	 											$('#goodtypedg').datagrid("reload");
 	 										}
 	 									},"text")
 	 								
 								}
 						});
 					}else {
 						$.messager.alert('提示','请选中操作的数据行','info');
 			        }
 				}
 			}]
 			});
 		})
 		
 		

 		
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
    <!--表格-->
    <table id="goodtypedg" ></table>


</body>
</html>