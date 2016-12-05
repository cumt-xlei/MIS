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
		var dg = parent.contentWindow.$("#roledg");
		console.log(dg);
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
			sex : rows[0].sex,
			status : rows[0].status,
			phone : rows[0].phone,
			qq : rows[0].qq,
			weixin : rows[0].weixin,
			area : rows[0].area,
			address : rows[0].address,
			school : rows[0].school,
			grade : rows[0].grade,
			course : rows[0].course,
			schooltime : rows[0].schooltime,
			prize : rows[0].prize,
			studentrequire : rows[0].studentrequire,
			ps : rows[0].ps
				
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
					url : 'student_update.action',
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
	<form id="ff" method="post" style="margin-left:48;">
		<div>
			<label for="type">&nbsp;姓&nbsp;名:&nbsp;</label> <input id="name" type="text" name="companyName" />
		</div>
		<div>
			<label for="sex">&nbsp;性&nbsp;别：&nbsp;</label>
			<label for="sex">男</label> 
			<input type="radio" name="sex" value="男" />
			<label for="sex">女</label> 
			<input type="radio" name="sex" value="女" />
		</div>
		<div>
			<label for="status">&nbsp;状&nbsp;态：&nbsp;</label>
			<label for="status">已阅</label> 
			<input type="radio" name="status" value="true" />
			<label for="status">未阅</label> 
			<input type="radio" name="status" value="false" />
		</div>
		<div>
			<label for="type">手机号:</label> <input type="text" name="phone" />
		</div>
		<div>
			<label for="type">&nbsp;q&nbsp;q&nbsp;号:</label> <input type="text" name="qq" />
		</div>
		<div>
			<label for="type">微信号:</label> <input type="text" name="weixin" />
		</div>
		<div>
			<label for="type">所在区域:</label>
		
		<select id="cc" class="easyui-combobox" name="area" style="width:200px;">   
		    <option value="aa">请选择</option>   
		    <option>云龙区</option>
	          <option>鼓楼区</option>
	          <option>泉山区</option>
	          <option>铜山区</option>
	          <option>贾汪区</option>
	          <option>新沂市</option>
	          <option>邳州市</option>
	          <option>睢宁县</option>
	          <option>沛县</option>
	          <option>丰县</option>   
		</select>  
		</div>
		<div>
			<label for="type">&nbsp;地&nbsp;址：&nbsp;</label> <input type="text" name="address" />
		</div>
		<div>
			<label for="type">&nbsp;学&nbsp;校：&nbsp;</label> <input type="text" name="school" />
		</div>
		<div>
			<label for="type">&nbsp;年&nbsp;级：&nbsp;</label> <input type="text" name="grade" />
		</div>
		<div>
			<label for="type">&nbsp;课&nbsp;程：&nbsp;</label> <input type="text" name="course" />
		</div>
		<div>
			<label for="type">期望上课时间：</label> <input type="text" name="schooltime" style="width:120;"/>
		</div>
		<div>
			<label for="type">期待价格：</label> <input type="text" name="prize" style="width:145;"/>
		</div>
		<div>
			<label for="type">特殊需求：</label> <input type="text" name="studentrequire" style="width:145;"/>
		</div>
		<div>
			<label for="type">&nbsp;备&nbsp;注：&nbsp;</label> <input type="text" name="ps" />
			<!-- <input type="hidden" name="addtime" /> -->
		</div>
		<div>
			<a id="btn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-edit'">确认更新</a> <input type="hidden"
				name="id" />
		</div>
	</form>
</body>
</html>
