package cn.it.shop.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.Admin;

@Controller
@Scope("prototype")
public class AdminAction extends BaseAction<Admin>{
	public String login(){
		//进行登录的判断
		model=adminService.login(model);
		if(model==null){
			System.out.println("失败");
			session.put("adminremind", "登录失败，请重新登录");
			return "alogin";
		}else{
			//登录成功，先存储到session中，然后返回到相应的页面
			System.out.println("成功");
			session.put("admin", model);
			session.put("logout", "退出登录");
			session.put("active_admin","当前用户： "+ model.getAdmin_username());
			session.put("adminremind", "您已经登录！");
			return "admin";
		}
	}
	public String logout(){
		session.remove("admin");
		session.remove("active_admin");
		session.remove("logout");
		session.remove("adminremind");
		return "alogin";
	}
}







//
//	$(function users(){
//			var a=null;
//			//数据表格
//			$('#usersdg').datagrid({
//			    url:'getallgood.action?gname='+a,
//			   	pagination:true,
//			   	rownumbers:true,
//			   	striped:true,
//			   	singleSelect:true, 			    
//			    columns:[[
//					{field:'RoleName',title:'账号',width:300,align:'center'},
//					{field:'RoleDesc',title:'名称',width:300,align:'center'}
//			    ]],
//			 //数据表格  
//			   toolbar: [{
//				  	text:'角色',
//				iconCls: 'icon-customer2',
//				handler: $('#usersdg').hide()
//				  	
//				},'-',{
//					text:'用户',
//					iconCls: 'icon-users',
//					handler: $('#roledg').hide()
//				}]
//
//			});
//		});
//				
//		
//		$(function detail(){
//			var a=null;
//			//数据表格
//			$('#privilegedg').datagrid({
//			    url:'getallgood.action?gname='+a,
//			   	pagination:true,
//			   	rownumbers:true,
//			   	striped:true,
//			   	singleSelect:true, 			    
//			    columns:[[
//					{field:'distribution',title:'分配权限',width:80,align:'center'},
//					{field:'forbid',title:'禁止权限',width:80,align:'center'},
//					{field:'menuBtn',title:'菜单-按钮',width:300,align:'center'},
//					{field:'code',title:'编码',width:300,align:'center'},
//					{field:'MenuIcon',title:'图标',width:300,align:'center'}
//			    ]],
//
//			});
//		});
//}
