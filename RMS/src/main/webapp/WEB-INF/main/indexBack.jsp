<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台首页</title>

<link rel="stylesheet" type="text/css" href="themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="themes/icon.css" />
<link rel="stylesheet" type="text/css" href="themes/esui.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/esui.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var parentId = 1;
						$('#tts')
								.treegrid(
										{
											url : 'user_getUserMenu.action?parentId='
													+ parentId,							
											selectOnCheck : true,								
											idField : 'id',
											treeField : 'PrivilegeOperation',
											onBeforeExpand : function(row) {
												//动态设置展开查询的url
												$(this).treegrid('options').url = 'user_getUserMenu.action?parentId='
														+ row.id;
											},
											onClickRow: function(row){
												console.log(row);
												if(row.type=3){
													console.log(row.type);
													addTab('类别','good_menu2')
												}
											},
											columns : [ [ {
												field : 'PrivilegeOperation',
												//title : '',
												width : 240
											} ] ],
										});
					});
	function addTab(title, url){
		if ($('#tt').tabs('exists', title)){
			$('#tt').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
		    $('#tt').tabs('add',{
					title:title,
					content:content,
		            closable:true
					});
			}
		}
</script>
</head>
<!--1. 在整个页面创建布局面板-->
<body class="easyui-layout" scroll="no">

	<!--1.1 egion="north"，指明高度，可以自适应-->
	<div region="north" class="north" scroll="no">
		<div class="fl northLeft">
			<a href="index"> <img class="logoImg fl"
				src="images/icon/logo.jpg" alt="XX网" />
			</a>
			<h3 class="fl mgl">权限管理系统</h3>
		</div>

		<div class="fr northRight">
			<span>欢迎您</span>
		</div>
	</div>

	<!--1.2 region="west",必须指明宽度-->
	<div region="west" class="west" title="导航菜单" split="true">
		<!-- 
		<div class="easyui-accordion">
			<ul class="easyui-tree"
				data-options="url:'http://localhost:8070/RMS/json'"></ul>
		</div>
	 -->
		<ul id="tts"></ul>
	</div>

	<!--1.3region="center",这里的宽度和高度都是由周边决定，不用设置-->
	<div region="center" class="center">

		<!--2. 对<div>标签引用'easyui-layout'类,fit="true"自动适应父窗口,这里我们指定了宽度和高度-->
		<div id="tt" class="easyui-tabs" fit="true">
			<div title="Home">
				<center class="mgt fontBold">欢迎来到后台管理空间</center>
			</div>
		</div>

	</div>

	<!--1.4 region="east",必须指明宽度-->
	<div region="east" title="日历" split="true" class="east">
		<div class="easyui-calendar calendareast"></div>
	</div>

	<!--1.5 region="south"，指明高度，可以自适应-->
	<div region="south" class="south">
		<center>
			<p>
				&copy; 2016 | All Will Be Ok,Belive Youself Please | Designed by<a
					href="#">DKL</a>
			</p>
		</center>
	</div>
</body>
</html>