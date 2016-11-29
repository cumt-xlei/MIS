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
			text:'添加',
			iconCls: 'icon-add',
			handler: function(){addRole()}
		},'-',{
			text:'删除',
			iconCls: 'icon-remove',
			handler: function(){deleteRole()}
		},'-',{
			text:'修改',
			iconCls: 'icon-edit',
			handler: function(){alert('help')}
		}]
		});
	    
	    $('#dd' ).dialog({
	    	closed:'true'
	    });
	    $('#dd2' ).dialog({
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
				$.messager.alert('消息','添加成功','');	
				$('#dg').datagrid('reload');
				$('#dd').dialog({closed: true});
			}
		});
	}
	
	function deleteRole(){
		var row = $('#dg').datagrid('getSelected');
		if (row){
			$('#dd2').dialog({
			    title: '确认窗口',
			    width: 300,
			    height: 150,
			    closed: false,
			    cache: false,
			    modal: true,
			    buttons:[{
					text:'确定',
					iconCls:'icon-ok',
					handler:function(){
						$.ajax({
						      url:'deleteRole.action',
						      dataType:'json', 
						      data:{'RoleName':row.RoleName},
						      method:'POST',
						      success:function(){
						    	  $.messager.alert('消息','删除成功','');
								  $('#dd2').dialog({closed: true});
						    	  $("#dg").datagrid("reload");
						      }						    
						})
					}					

				},{
					text:'取消',
					iconCls:'icon-cancel',
					handler:function(){$('#dd2').dialog('close');}
				}]
			    
			});
		};

	}

	</script>  
<body>
 
<table id="dg"></table>
<div id="dd" class="dialog_text">
	<form id="ff" action="saveRole.action" method="post">
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

<div id="dd2" class="dialog_text">
确定删除？
</div>

</body>
</html>