<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/public/head.jspf"%>
<link rel="stylesheet" type="text/css" href="${RMS}/css/good_menu2.css"/>
	<script type="text/javascript">
 		$(function role(){
 			//数据表格
 			$('#roledg').datagrid({
 			    url:'user_queryUser.action',
 			    width:1460,
 			   	pagination:true,
 			   	rownumbers:true,
 			   	striped:true,
 			   	singleSelect:true,
 			   pagination : true,
				pageSize : 20,
				pageList : [ 5, 10, 15,20 ],
				loadMsg : '正在查询学生信息，请等待...',
				//指定id字段为标识字段
				idField : 'id',
				//自动适应列
				fitColumns : true,
	 			frozenColumns : [ [ 
	 			    {field : 'xyz',checkbox : true},
	 			    {field : 'id',title : '编号',width : 30}
	 			    ] ],
 			    columns:[[
 					{field:'realName',title:'客户',width:100,align:'center'},
 					{field:'title',title:'公司名称',width:100,align:'center'},
 					{field:'nickName',title:'联系名',width:100,align:'center'},
 					{field:'RoleDesc',title:'头衔',width:100,align:'center'},
 					{field:'address',title:'地址',width:200,align:'center'},
 					{field:'RoleDesc',title:'城市',width:100,align:'center'},
 					{field:'RoleDesc',title:'区域',width:100,align:'center'},
 					{field:'RoleDesc',title:'邮政编码',width:700,align:'center'}
 			    ]],
 			 //数据表格  
 			   toolbar: [{
 				  	text:'新增',
					iconCls: 'icon-add',
					handler : function() {
						$("#win")
								.window(
										{
											title : '添加客户信息',
											width : 500,
											height : 570,
											content : '<iframe src="send_cusmanage_save.action" width="100%" height="100%" frameborder="0" />'
										});	
					}, 
					width:100
 				},'-',{
 					text:'修改',
 					iconCls: 'icon-edit',
 					width:100,
 					
 				},'-',{
 					text:'删除',
 					iconCls: 'icon-cancel',
 					handler:function (){$('#roledg').hide()},
 					width:100
 				},'-',{
 					text:'查看',
 					iconCls: 'icon-users',
 					handler:function (){$('#roledg').hide()},
 					width:100
 				}
 				]
 			});
 			/* //面板
 			$('#aa').accordion({    
 			    animate:false,
 			   //fit:true
 			   width:1460		
 			});  */
 			$('#ss').searchbox({ 
 				searcher:function(value,name){ 
 				alert(value + "," + name) 
 				}, 
 				menu:'#mm', 
 				prompt:'请输入值' 
 				}); 
 		});	
 		function qq(value,name){ 
 			alert(value+":"+name) 
 			};
    </script>
</head> 
<body>
	<h3 style="color:#0099FF;">搜索</h3>
	<input id="ss" class="easyui-searchbox" style="width:300px" 
		data-options="searcher:qq,prompt:'Please Input Value',menu:'#mm'"></input> 
		
	<div id="mm" style="width:120px"> 
		<div data-options="name:'all',iconCls:'icon-ok'">客户</div> 
		<div data-options="name:'sports'">公司名称</div>
		<div data-options="name:'sports'">联系名</div>
		<div data-options="name:'sports'">头衔</div> 
	</div>
	
    <!--表格-->
    <div class="top-area">
    	<table id="roledg" ></table>
    	<table id="usersdg" ></table>  
    </div>
	<div id="searchGoodWindow"> </div> 
	<div id="win" data-options="collapsible:false,minimizable:false,maximizable:false,modal:true"></div>
</body>
</html>

