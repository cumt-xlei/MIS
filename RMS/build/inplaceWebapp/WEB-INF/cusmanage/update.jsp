<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/public/head.jspf"%>
<style type="text/css">
form div {
	margin: 5px;
}
</style>
<script type="text/javascript">
	$(function() {
		//iframe中的dg对象
		var dg = parent.$("#roledg");
		console.log("返回的dg：" + dg);
		//对管理员的下拉列表框进行远程加载

		$('#cc').combobox({
			//url : 'student_query.action',
			//valueField : 'area',
			//textField : 'area',
			panelHeight : 'auto',
			panelWidth : 120,
			width : 120,
			editable : false
		});
		//完成数据的回显
		var rows = dg.datagrid("getSelections");
		$('#ff').form('load', {
			customerID : rows[0].customerID,
			companyName : rows[0].companyName,
			contactName : rows[0].contactName,
			contactTitle : rows[0].contactTitle,
			address : rows[0].address,
			city : rows[0].city,
			region : rows[0].region,
			postalCode : rows[0].postalCode,
			country : rows[0].country,
			phone : rows[0].phone,
			fax : rows[0].fax
		});

		$("input[name=type]").validatebox({
			required : true,
			missingMessage : '请输入学生信息'
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
					url : 'customer_update.action',
					success : function() {
						//关闭当前窗体
						parent.$("#win").window("close");
						//刷新页面,获取aindex-   iframe--->dg
						dg.datagrid("reload");
					}
				});

			}
		})
	});
</script>
</head>
<body>
	<form id="ff" method="post" style="margin-left: 48;">
		<div>
			<label for="type">客户:</label> <input id="customerID" type="text"
				name="customerID" />
		</div>
		<div>
			<label for="type">公司名称:</label> <input id="companyName" type="text"
				name="companyName" />
		</div>
		<div>
			<label for="type">联系名:</label> <input id="contactName" type="text"
				name="contactName" />
		</div>
		<div>
			<label for="type">头衔:</label> <input id="contactTitle" type="text"
				name="contactTitle" />
		</div>
		<div>
			<label for="type">地址:</label> <input id="address" type="text"
				name="address" />
		</div>
		<div>
			<label for="type">城市:</label> <input id="city" type="text"
				name="city" />
		</div>
		<div>
			<label for="type">区域:</label> <input id="region" type="text"
				name="region" />
		</div>
		<div>
			<label for="type">邮政编码:</label> <input id="postalCode" type="text"
				name="postalCode" />
		</div>
		<div>
			<label for="type">国籍:</label> <input id="country" type="text"
				name="country" />
		</div>
		<div>
			<label for="type">联系方式:</label> <input id="phone" type="text"
				name="phone" />
		</div>
		<div>
			<label for="type">传真:</label> <input id="fax" type="text" name="fax" />
		</div>
		<div>
			<a id="btn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-edit'">确认更新</a> <input type="hidden"
				name="id" />
		</div>
	</form>
</body>
</html>
