<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/public/head.jspf"%>
<style type="text/css">
	form div{
		margin:5px;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("input[name=type]").validatebox({
			 required: true,
			 missingMessage:'请输入客户信息'
		});
		//窗体弹出默认时禁用验证
		$("#ff").form("disableValidation");
		$('#cc').combobox({    		    
		    width:120,
		    panelWidth:120		   
		});
		$('#realName').validatebox({    
		    required: true,  	    
		    missingMessage:'请输入客户名'  
		}); 
		$('#title').validatebox({    
		    required: true,  	    
		    missingMessage:'请输入公司名称'  
		}); 
		$('#nickName').validatebox({    
		    required: true,  	    
		    missingMessage:'请输入联系名'  
		}); 
		 $('#address').validatebox({    
			required: true,
		    missingMessage:'请输入地址信息'	    		    
		}); 
		
		//注册button的事件
		$("#btn").click(function(){
			//开启验证
			$("#ff").form("enableValidation");
			//如果验证成功，则提交数据
			if($("#ff").form("validate")){
				//调用submit,则提交数据
				$('#ff').form('submit', {
				url: 'user_saveUser.action',
				success: function(){
					//关闭当前窗体
					parent.$("#win").window("close");
					//刷新页面,获取aindex--->iframe--->dg
					parent.$("#roledg").datagrid("reload");
				}
			});				
			}
		})
	});
</script>
</head>
<body>
	<form id="ff" method="post" style="margin-left:48;">
		<div>
			<label for="type">客户:</label> <input id="realName" type="text" name="realName" />
		</div>
		<div>
			<label for="type">公司名称：</label> <input id="title" type="text" name="title" />
		</div>
		<div>
			<label for="type">联系名：</label> <input id="nickName" type="text" name="nickName" />
		</div>
		<div>
			<label for="type">地址：</label> <input id="address" type="text" name="address" />
		</div>
		<div>
			<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加客户</a>  
		</div>
	</form>
</body>
</html>
