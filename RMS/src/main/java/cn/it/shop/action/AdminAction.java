package cn.it.shop.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.Admin;

@Controller
@Scope("prototype")
public class AdminAction extends BaseAction<Admin>{
	public String login(){
		//���е�¼���ж�
		model=adminService.login(model);
		if(model==null){
			System.out.println("ʧ��");
			session.put("adminremind", "��¼ʧ�ܣ������µ�¼");
			return "alogin";
		}else{
			//��¼�ɹ����ȴ洢��session�У�Ȼ�󷵻ص���Ӧ��ҳ��
			System.out.println("�ɹ�");
			session.put("admin", model);
			session.put("logout", "�˳���¼");
			session.put("active_admin","��ǰ�û��� "+ model.getAdmin_username());
			session.put("adminremind", "���Ѿ���¼��");
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
//			//���ݱ��
//			$('#usersdg').datagrid({
//			    url:'getallgood.action?gname='+a,
//			   	pagination:true,
//			   	rownumbers:true,
//			   	striped:true,
//			   	singleSelect:true, 			    
//			    columns:[[
//					{field:'RoleName',title:'�˺�',width:300,align:'center'},
//					{field:'RoleDesc',title:'����',width:300,align:'center'}
//			    ]],
//			 //���ݱ��  
//			   toolbar: [{
//				  	text:'��ɫ',
//				iconCls: 'icon-customer2',
//				handler: $('#usersdg').hide()
//				  	
//				},'-',{
//					text:'�û�',
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
//			//���ݱ��
//			$('#privilegedg').datagrid({
//			    url:'getallgood.action?gname='+a,
//			   	pagination:true,
//			   	rownumbers:true,
//			   	striped:true,
//			   	singleSelect:true, 			    
//			    columns:[[
//					{field:'distribution',title:'����Ȩ��',width:80,align:'center'},
//					{field:'forbid',title:'��ֹȨ��',width:80,align:'center'},
//					{field:'menuBtn',title:'�˵�-��ť',width:300,align:'center'},
//					{field:'code',title:'����',width:300,align:'center'},
//					{field:'MenuIcon',title:'ͼ��',width:300,align:'center'}
//			    ]],
//
//			});
//		});
//}
