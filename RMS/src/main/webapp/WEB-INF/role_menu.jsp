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
	    url:'queryAllRole.action',
	    pagination:true,
	    singleSelect:true,
	    columns:[[
			{field:'RoleName',title:'角色名称',width:400,align:'center'},
			{field:'RoleDesc',title:'角色描述',width:1100,align:'center'},
	    ]],
	    toolbar: [{
	    	text:'保存',
			iconCls: 'icon-save' 
		},'-',{
			text:'添加',
			iconCls: 'icon-add',
			handler: function(){addRole()}
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
	    
	    $('#dd' ).dialog({
	    	closed:'true'
	    })
	})

	
	function addRole(){
		$('#dd').dialog({
		    title: '添加角色',
		    width: 400,
		    height: 200,
		    closed: false,
		    cache: false,
		    modal: true
		});
		$('#ff').form({
			success:function(){
				$.messager.alert('添加成功');
			}
		});
		
	}

	</script>  
<body>
 
<table id="dg"></table>
<div id="dd">
	<form id="ff" action="addRole.action" method="post">
		<table>
			<tr>
				<td>角色名称</td>
				<td><input name="RoleName" type="text"></input></td>
			</tr>
			<tr>
				<td>角色描述:</td>
				<td><input name="RoleDesc" type="text"></input></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="保存"></input></td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>