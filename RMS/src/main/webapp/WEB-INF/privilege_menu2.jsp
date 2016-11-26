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
    	//查询所有角色
 		$(function role(){
 			//数据表格
 			$('#roledg').datagrid({
 			    url:'queryAllRole.action',
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
 				  	text:'角色',
					iconCls: 'icon-customer2',
					handler: function role(){}
 				  	
 				},'-',{
 					text:'用户',
 					iconCls: 'icon-users',
 					handler:function (){$('#roledg').hide()}
 				}]

 			});
 		});
    	
    	//查询所有用户
    	
    	
    	//权限列表
		$( document ).ready(function(){
			var parentId = 0;
			$('#tt').treegrid({    
			    url:'queryPrivilege.action?parentId='+parentId,
			    rownumbers:true,
			    idField:'id',    
			    treeField:'RecordStatus',
			    columns:[[    
			        {title:'id',field:'id',width:180}, 
			        {field:'RecordStatus',title:'RecordStatus',width:180} ,
			        {field:'PrivilegeOperation',title:'PrivilegeOperation',width:180}    
			    ]],
			    onBeforeExpand:function(row){
			    	//动态设置展开查询的url
			    	$(this).treegrid('options').url = 'queryPrivilege.action?parentId='+row.id;   
				}
			});  
		})
 	
 		
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
    <!--表格-->
    <div class="top-area">
    	<p class="title">用户角色</p>
    	<table id="roledg" ></table>
    	<table id="usersdg" ></table>  
    </div>
    <div class="btm-area">
    	<p class="title">权限控制</p>
    	<table id="privilegedg" ></table> 
    </div>
	<div id="searchGoodWindow"> </div> 
	<table id="tt" style="width:600px;height:400px"></table>  

</body>
</html>