//package cn.it.shop.action;
//
//import java.util.List;
//
//import org.springframework.context.annotation.Scope;
//import org.springframework.stereotype.Controller;
//
//import cn.it.shop.model.Admin;
//
//@Controller
//@Scope("prototype")
//public class AdminAction extends BaseAction<Admin>{
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
