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
			 missingMessage:'请输入学生信息'
		});
		//窗体弹出默认时禁用验证
		$("#ff").form("disableValidation");
		$('#cc').combobox({    		    
		    width:120,
		    panelWidth:120		   
		});
		$('#name').validatebox({    
		    required: true,  	    
		    missingMessage:'请输入学生姓名'  
		}); 
		$('#phone').validatebox({    
		    required: true,  	
		    validType:'length[11,11]',    
		    invalidMessage:'请输入正确的手机号码',
		    missingMessage:'请输入手机号'  
		}); 
		$('#qq').validatebox({    
		    required: true,  	
		    validType:'length[7,12]',    
		    missingMessage:'请输入QQ号'  
		}); 
		 $('#address').validatebox({    
			required: true,
		    missingMessage:'请输入地址信息'	    		    
		}); 
		$('#school').validatebox({    
			required: true,
		    missingMessage:'请输入学校信息'	    		    
		}); 
		$('#grade').validatebox({    
			required: true,
		    missingMessage:'请输入年级信息'	    		    
		}); 
		$('#course').validatebox({    
			required: true,
		    missingMessage:'请输入课程信息'	    		    
		}); 
		$('#schooltime').validatebox({    
			required: true,
		    missingMessage:'请输入期望上课时间信息'	    		    
		}); 
		$('#prize').validatebox({    
			required: true,
		    missingMessage:'请输入期待价格信息'	    		    
		}); 
		$('#studentrequire').validatebox({    
			required: true,
		    missingMessage:'请输入学生的需求信息'	    		    
		}); 
		//注册button的事件
		$("#btn").click(function(){
			//开启验证
			$("#ff").form("enableValidation");
			//如果验证成功，则提交数据
			if($("#ff").form("validate")){
				//调用submit,则提交数据
				$('#ff').form('submit', {
				url: 'student_save.action',
				success: function(){
					//关闭当前窗体
					parent.$("#win").window("close");
					//刷新页面,获取aindex--->iframe--->dg
					parent.$("iframe[title='学生管理']").get(0).contentWindow.$("#dg").datagrid("reload");
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
			<label for="type">&nbsp;姓&nbsp;名:&nbsp;</label> <input id="name" type="text" name="name" />
		</div>
		<div>
			<label for="sex">&nbsp;性&nbsp;别：&nbsp;</label>
			<label for="sex">男</label> 
			<input id="sex" type="radio" name="sex" value="男" data-options="required:true"/>
			<label for="sex">女</label> 
			<input id="sex" type="radio" name="sex" value="女" />
		</div>
		<div>
			<label for="status">&nbsp;状&nbsp;态：&nbsp;</label>
			<label for="status">已阅</label> 
			<input type="radio" name="status" value="true" />
			<label for="status">未阅</label> 
			<input type="radio" name="status" value="false" checked="checked"/>
		</div>
		<div>
			<label for="type">手机号:</label> 
				<input id="phone" type="text" name="phone"  />
		</div>
		<div>
			<label for="type">&nbsp;q&nbsp;q&nbsp;号:</label> <input id="qq" type="text" name="qq" />
		</div>
		<div>
			<label for="type">微信号:</label> <input id="weixin" type="text" name="weixin" />
		</div>
		<div>
			<label for="type">所在区域:</label>
		
		<select id="cc" class="easyui-combobox"name="area" style="width:200px;" >
		    <option value="未选择">请选择</option>   
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
			<label for="type">&nbsp;地&nbsp;址：&nbsp;</label> <input id="address" type="text" name="address" />
		</div>
		<div>
			<label for="type">&nbsp;学&nbsp;校：&nbsp;</label> <input id="school" type="text" name="school" />
		</div>
		<div>
			<label for="type">&nbsp;年&nbsp;级：&nbsp;</label> <input id="grade" type="text" name="grade" />
		</div>
		<div>
			<label for="type">&nbsp;课&nbsp;程：&nbsp;</label> <input id="course" type="text" name="course" />
		</div>
		<div>
			<label for="type">期望上课时间：</label> <input id="schooltime" type="text" name="schooltime" style="width:120;"/>
		</div>
		<div>
			<label for="type">期待价格：</label> <input id="prize" type="text" name="prize" style="width:145;"/>
		</div>
		<div>
			<label for="type">特殊需求：</label> <input id="studentrequire" type="text" name="studentrequire" style="width:145;"/>
		</div>
		<div>
			<label for="type">&nbsp;备&nbsp;注：&nbsp;</label> <input type="text" name="ps" />
		</div>
		<div>
			<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加学生</a>  
		</div>
	</form>
</body>
</html>
