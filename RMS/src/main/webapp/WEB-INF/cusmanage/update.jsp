<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/public/head.jspf"%>
<script type="text/javascript">
	$(function(){
		//iframe中的dg对象
		var dg = parent.$("iframe[title='客户']").get(0).contentWindow.$("#roledg");
		//完成数据的回显
		var rows=dg.datagrid("getSelections");
		$('#ff').form('load', {
			realName : rows[0].realName,
			title : rows[0].title,
			nickName : rows[0].nickName,
			address : rows[0].address
		});
		//窗体弹出默认时禁用验证
		$("#ff").form("disableValidation");
		//注册button的事件
		$("#btn").click(function() {
			//开启验证
			$("#ff").form("enableValidation");
			//如果验证成功，则提交数据
			if ($("#ff").form("validate")) {
				//调用submit,则提交数据
				$('#ff').form('submit', {
					url : 'user_update.action',
					success : function() {
						//关闭当前窗体
						parent.$("#win").window("close");
						//刷新页面,获取aindex-   iframe--->dg
						dg.datagrid("reload");
					}
				});

			}
		})
	})
</script>
</head>
<body>
	<form id="ff" method="post" style="margin-left:48;">
		<div>
			<label for="type">客户:</label> <input type="text" name="realName" />
		</div>
		<div>
			<label for="type">公司名称:</label> <input type="text" name="title" />
		</div>
		<div>
			<label for="type">联系名:</label> <input type="text" name="nickName" />
		</div>
		<div>
			<label for="type">地址:</label> <input type="text" name="address" />
		</div>
		<div>
			<a id="btn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-edit'">确认修改</a> <input type="hidden"
				name="id" />
		</div>
	</form>
</body>
</html>
