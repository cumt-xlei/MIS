<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门</title>
    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="themes/esui.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/esui.js"></script>
	<script type="text/javascript">
	$(function(){
	    $('#dg').datagrid({
	    url:'#',
	    pagination:true,
	    singleSelect:true,
	    columns:[[
			{field:'role_name',title:'部门名称',width:400,align:'center'},
			{field:'description',title:'部门描述',width:1100,align:'center'},
	    ],[
	        {field:'role_name'},
	        {field:'description'},
	    ]],
	    toolbar: [{
	    	text:'保存',
			iconCls: 'icon-save',
			handler: function(){alert('edit')}
		},'-',{
			text:'添加',
			iconCls: 'icon-add',
			handler: function(){alert('help')}
		},'-',{
			text:'删除',
			iconCls: 'icon-remove',
			handler: function(){alert('help')}
		},'-',{
			text:'修改',
			iconCls: 'icon-edit',
			handler: function(){alert('help')}
		}]
	});
	})


	</script>  
<body>
 
<table id="dg"></table>

</body>
</html>