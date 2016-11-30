<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/public/head.jspf"%>
<!-- 
	<link rel="stylesheet" type="text/css" href="${RMS}/css/good_menu2.css" />
 -->

<script type="text/javascript">
	$(function role() {
		//数据表格
		$('#roledg')
				.datagrid(
						{
							url : 'user_queryUser.action',
							width : 1460,
							rownumbers : true,
							striped : true,
							singleSelect : false,
							//设置分页
							pagination : true,
							pageSize : 20,
							pageList : [ 5, 10, 15, 20 ],
							loadMsg : '正在查询用户信息，请等待...',
							//指定id字段为标识字段
							idField : 'id',
							//自动适应列
							fitColumns : true,
							frozenColumns : [ [ {
								field : 'xyz',
								checkbox : true
							}, {
								field : 'id',
								title : '编号',
								width : 30
							}, ] ],
							columns : [ [ {
								field : 'realName',
								title : '客户',
								width : 100,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'title',
								title : '公司名称',
								width : 100,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'nickName',
								title : '联系名',
								width : 100,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'RoleDesc',
								title : '头衔',
								width : 100,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'address',
								title : '地址',
								width : 200,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'RoleDesc',
								title : '城市',
								width : 100,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'RoleDesc',
								title : '区域',
								width : 100,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							}, {
								field : 'RoleDesc',
								title : '邮政编码',
								width : 700,
								align : 'center',
								//用来格式化当前列的值，返回的是最终的数据
								formatter : function(value, row, index) {
									return "<span title=" + value + ">"
											+ value + "</span>";
								}
							} ] ],
							//数据表格  
							toolbar : [
									{
										text : '新增',
										iconCls : 'icon-add',
										handler : function() {
											$("#win")
													.window(
															{
																title : '添加客户信息',
																width : 400,
																height : 470,
																content : '<iframe src="send_cusmanage_save.action" width="100%" height="100%" frameborder="0" />'
															});
										},
										width : 100
									},
									'-',
									{
										text : '修改',
										iconCls : 'icon-edit',
										width : 100,
										handler : function() {
											var rows = $("#roledg").datagrid(
													"getSelections");
											if (rows.length != 1) {
												//弹出提示信息
												$.messager.show({
													title : '错误提示',
													msg : '只能更新一条记录。',
													timeout : 5000,
													showType : 'slide'
												});
											} else {
												//完成弹出更新页面
												$("#win")
														.window(
																{
																	title : '更新用户信息',
																	width : 400,
																	height : 570,
																	content : '<iframe src="send_cusmanage_update.action" width="100%" height="100%" frameborder="0" />'
																});
											}
										}
									}, '-', {
										text : '删除',
										iconCls : 'icon-cancel',
										handler : function() {
											//判断是否有选中行记录
											var rows = $("#roledg").datagrid(
													"getSelections");
											//rows返回被选中的行，没有任何行被选中，返回空数组
											if (rows.length == 0) {
												//弹出提示信息
												$.messager.show({
													title : '错误提示',
													msg : '请至少选择一条记录。',
													timeout : 5000,
													showType : 'slide'
												});

											} else {
												//提示是否确认删除
												$.messager
														.confirm(
																'删除确认对话框',
																'是否要删除选中的记录？',
																function(r) {
																	if (r) {
																		//获取被选中的记录，然后从记录中获取相应的id
																		var ids = "";
																		for ( var i = 0; i < rows.length; i++) {
																			ids += rows[i].id
																					+ ",";
																		}
																		//拼接id的值，然后发送给后台
																		ids = ids
																				.substring(
																						0,
																						ids
																								.lastIndexOf(","));
																		//发送ajax请求
																		$
																				.post(
																						"user_deleteByIds.action",
																						{
																							ids : ids
																						},
																						function(
																								result) {
																							if (result == "true") {
																								//取消选中所有行
																								$(
																										"#roledg")
																										.datagrid(
																												"uncheckAll");
																								//重新刷新当前页面
																								$(
																										"#roledg")
																										.datagrid(
																												"reload");
																							} else {
																								//弹出提示信息
																								$.messager
																										.show({
																											title : '错误提示',
																											msg : '删除失败，请检查操作',
																											timeout : 5000,
																											showType : 'slide'
																										});
																							}
																						},
																						"text");
																	}
																});

											}
										},
										width : 100
									}, '-', {
										text : '查看',
										iconCls : 'icon-users',
										handler : function() {
											$('#roledg').hide()
										},
										width : 100
									} ]
						});
		/* //面板
		$('#aa').accordion({    
		    animate:false,
		   //fit:true
		   width:1460		
		});  */
		$('#ss').searchbox({
			searcher : function(value, name) {
				alert(value + "," + name)
			},
			menu : '#mm',
			prompt : '请输入值'
		});
	});
	function qq(value, name) {
		alert(value + ":" + name)
	};
</script>
</head>
<body>
	<h3 style="color: #0099FF;">搜索</h3>
	<input id="ss" class="easyui-searchbox" style="width: 300px"
		data-options="searcher:qq,prompt:'Please Input Value',menu:'#mm'"></input>

	<div id="mm" style="width: 120px">
		<div data-options="name:'all',iconCls:'icon-ok'">客户</div>
		<div data-options="name:'sports'">公司名称</div>
		<div data-options="name:'sports'">联系名</div>
		<div data-options="name:'sports'">头衔</div>
	</div>

	<!--表格-->
	
		<table id="roledg"></table>
		<!-- <table id="usersdg"></table> 
		<div id="searchGoodWindow"></div>
		-->
		
	
	<div id="win"
		data-options="collapsible:false,minimizable:false,maximizable:false,modal:true"></div>
</body>
</html>

