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
 			//数据表格
 			$('#userdg').datagrid({
 			    url:'getalluser.action',
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
					 $('#adduser').window('open');}
			   },'-',{
 			// 删除用户
 				text:'删除用户',
 				iconCls: 'icon-remove',
 				handler: function(){
 					var row = $('#userdg').datagrid('getSelected');
 					if (row){
 						$.messager.confirm('提示', '确定删除？', function(r){
 							if (r){
 								$.post("deleteuser.action",{username:row.username},
 	 								
 										function(status){
 	 										// 这里是请求发送成功后的回调函数。
 	 										if(status != null){
 	 											alert("删除成功");
 	 	 										$('#userdg').datagrid("reload");
 	 										}
 	 										else{
 	 											alert("删除失败");
 	 											$('#userdg').datagrid("reload");
 	 										}
 	 									},"text")
 	 								
 								}
 						});
 					}else {
 			            alert("提示, 请选中要编辑的行！");
 			        }
 				}
 			}]
 			});
 		})
 		
 		//提交添加到action
 		function submitAdd()
			{
 				
 				$.post("adduser.action",{addUname:document.getElementById('addUname').value,addPsw:document.getElementById('addPsw').value,addEmail:document.getElementById('addEmail').value},
						function(status){
							// 这里是请求发送成功后的回调函数。
							if(status != null){
									$('#adduser').window('close');
									alert("添加成功！");
									$('#userdg').datagrid("reload");
								}
								else{
									alert("添加失败");
									$('#adduser').window('close');
								}	
							
							
						},"text")
			}
 		
 		//提交添加到action
 		function sbmCancel()
		{
 			$('#adduser').window('close');
		}
    </script>
    </head>
<!--1. 在整个页面创建布局面板-->
<body>
    <!--表格-->
    <table id="userdg" ></table>
    
    <!--添加用户-->
<div id="adduser" class="easyui-window addUserLog" title="添加用户" collapsible="false" minimizable="false"
      maximizable="false" icon="icon-save" closed="true">
      <div class="easyui-layout" fit="true">
        <div region="center" class="logCenter" border="false" >
          <form id="addUserBack">
          <table cellpadding=8>
            <tr>
              <td>用户名：</td>
              <td><input id="addUname" name="addUname" type="text" class="txt01" /></td>
            </tr>
            <tr>
              <td>密码：</td>
              <td><input id="addPsw" name="addPsw" type="Password" class="txt01" /></td>
            </tr>
            <tr>
              <td>邮箱：</td>
              <td><input id="addEmail" name="addEmail" type="text" class="txt01" /></td>
            </tr>
        </table>
        </form>
       </div>
       <div region="south" class="logSouth" border="false" > 
       <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="submitAdd()"> 确定</a> 
       <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="sbmCancel()">取消</a> </div>
     </div>
</div>


</body>
</html>