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
 			var a=null;
 			//数据表格
 			$('#roledg').datagrid({
 			    url:'getallgood.action?gname='+a,
 			   	pagination:true,
 			   	rownumbers:true,
 			   	striped:true,
 			   	singleSelect:true, 			    
 			    columns:[[
 					{field:'RoleName',title:'角色名',width:200,align:'center'},
 					{field:'RoleDesc',title:'角色描述',width:505,align:'center'}
 			    ]],
 			 //数据表格  
 			   toolbar: [{
 				  	text:'用户',
 					iconCls: 'icon-users',
 					handler: function(){alert('编辑按钮')}
 				},'-',{
 					text:'角色',
 					iconCls: 'icon-customer2',
 					handler: function(){alert('帮助按钮')}
 				}]

 			});
 		});
 		
 		$(function(){
 			var a=null;
 			//数据表格
 			$('#privilegedg').datagrid({
 			    url:'getallgood.action?gname='+a,
 			   	pagination:true,
 			   	rownumbers:true,
 			   	striped:true,
 			   	singleSelect:true, 			    
 			    columns:[[
 					{field:'distribution',title:'分配权限',width:80,align:'center'},
 					{field:'forbid',title:'禁止权限',width:80,align:'center'},
 					{field:'menuBtn',title:'菜单-按钮',width:300,align:'center'},
 					{field:'code',title:'编码',width:300,align:'center'},
 					{field:'MenuIcon',title:'图标',width:300,align:'center'}
 			    ]],

 			});
 		});
 		
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
    <!--表格-->
    <div class="top-area">
    	<p class="title">用户角色</p>
    	<table id="roledg" ></table> 
    </div>
    <div class="btm-area">
    	<p class="title">权限控制</p>
    	<table id="privilegedg" ></table> 
    </div>
	<div id="searchGoodWindow"> </div> 

</body>
</html>