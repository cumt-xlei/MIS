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
 			$('#managerdg').datagrid({
 			    url:'getallmanager.action?username='+a,
 			   	fitColumns:true,
 			   	pagination:true,
 			   	rownumbers:true,
 			   	striped:true,
 			   	singleSelect:true,
 			    
 			    columns:[[
 					{field:'username',title:'用户名',width:100,align:'center'},
 					{field:'password',title:'密码',width:100,align:'center'},
 					{field:'email',title:'邮箱',width:100,align:'left'}
 			    ]],
 			//工具栏    
 			toolbar:[{
 			//添加用户
 				text:'添加用户',   
				iconCls: 'icon-add',
				handler: function(){
					$('#addmanagerWindow').dialog({
					    title: '添加用户',
					    width: 330,
					    height: 230,
					    closed: false,
					    cache: false,
					    href:'user_sub_add',
					    modal: true
					})}
			   },'-',{
 			// 删除用户
 				text:'删除用户',
 				iconCls: 'icon-remove',
 				handler: function(){
 					var row = $('#userdg').datagrid('getSelected');
 					if (row){
 						$.messager.confirm('提示', '确定删除？', function(r){
 							if (r){
 								$.post("deletemanager.action",{username:row.username},
 	 								
 										function(status){
 	 										// 这里是请求发送成功后的回调函数。
 	 										if(status != null){
 	 											$.messager.alert('成功','删除成功','info');
 	 	 										$('#userdg').datagrid("reload");
 	 										}
 	 										else{
 	 											$.messager.alert('失败','删除失败','info');
 	 											$('#userdg').datagrid("reload");
 	 										}
 	 									},"text")
 	 								
 								}
 						});
 					}else {
 			            alert("提示, 请选中要编辑的行！");
 			        }
 				}
 			},'-',{
 				//查找用户
 				text:'查找用户',   
				iconCls: 'icon-search',
				handler: function(){
					$('#searchmanagerWindow').dialog({
					    title: '查找用户',
					    width: 330,
					    height: 230,
					    closed: false,
					    cache: false,
					    href:'user_sub_search',
					    modal: true
					})}
			   }]
 			});
 		})
 		
 		//add窗口用户提交添加到action
 		function submitAdd()
			{
 				
 				$.post("addmanager.action",{addUname:document.getElementById('addMname').value,addPsw:document.getElementById('addMPsw').value,addEmail:document.getElementById('addMEmail').value},
						function(status){
							// 这里是请求发送成功后的回调函数。
							if(status != null){
									$('#addmanagerWindow').dialog('close');									
									$.messager.alert('成功','添加成功','info');
									$('#managerdg').datagrid("reload");
								}
								else{
									$.messager.alert('失败','添加失败','info');
									$('#addmanagerWindow').dialog('close');
								}	
							
							
						},"text")
			}
 		
 		//add窗口点击确定取消添加之后
 		function sbmCancel()
		{
 			$('#addmanagerWindow').dialog('close');
		}
 		
 		
				
			//search窗口提交action
			function submitSearch()
			{				
					var a=document.getElementById('searchmanagerUname').value;
					var url='getallmanager.action?username='+a;					
					$('#managerdg').datagrid('reload',url);
					$('#searchmanagerWindow').dialog('close');
								
			}
		
 		
 		//search窗口点击确定取消查找之后
 		function searchCancel()
		{
			$('#searchmanagerWindow').dialog('close');
		}
 		
 		
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
    <!--表格-->
    <table id="managerdg" ></table>
    
 

<div id="addmanagerWindow"> </div> 

<div id="searchmanagerWindow"> </div> 

</body>
</html>