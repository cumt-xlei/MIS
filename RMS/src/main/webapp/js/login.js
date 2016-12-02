$(function(){
	//登录界面
	$('#login').dialog({	
		title:'权限管理系统',
		width:330,
		height:260,
		modal:true,
		iconCls:'icon-login',
		buttons:'#btn',
	});
	//管理员账号验证
	$('#manager').validatebox({
		required:true,
		missingMessage:'请输入管理员账号',
		invalidMessage:'管理员账号不得为空',
	});
	//管理员密码验证
	$('#password').validatebox({
		required:true,
		validType:'length[5,30]',
		missingMessage:'请输入密码',
		invalidMessage:'密码不得小于五个字符',		
	});
	//加载时判断
	if(!$('#manager').validatebox('isValid')){
		$('#manager').focus();
	}else if(!$('#password').validatebox('isValid')){
		$('#password').focus();
	}
	//点击登录
	$('#btn a').click(function(){
		if(!$('#manager').validatebox('isValid')){
			$('#manager').focus();
		}else if(!$('#password').validatebox('isValid')){
			$('#password').focus();
		}else{
			$('<form action="user_login.action" method="post" style="display:none" ><input type="hidden"  name="loginName"  value="' + $('#manager').val() +
					'"/><input type="hidden"  name="loginPassword"  value="' + $('#password').val() + '"/></form>').appendTo('body').submit().remove();
		}
	});
});