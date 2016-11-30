package cn.it.shop.action;
import java.io.ByteArrayInputStream;
/**
 * �ͻ�����
 * ����ΰ
 */
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.User;
@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
	
	private static final long serialVersionUID = 1L;
	//��ѯ���������������û�
	public String queryUser(){
		pageMap=new HashMap<String,Object>();
		System.out.println("page:"+page);
		List<User> userList=userService.queryUser("", page, rows);
		long total=userService.getCount("");
		pageMap.put("rows", userList);
		pageMap.put("total", total);
		System.out.println(userList.size());
		return "jsonMap";
	}
	//��ӿͻ�
	public void saveUser(){
		User user=new User();
		user.setRealName(model.getRealName());
		user.setTitle(model.getTitle());
		user.setNickName(model.getNickName());
		user.setAddress(model.getAddress());
		user.setUserId(69);
		System.out.println("dfsdf"+user.getAddress());
		userService.save(user);
	}
	//ɾ��
	public String deleteByIds(){
		System.out.println("Ҫɾ����idsΪ"+ids);
		userService.deleteByIds(ids);
		inputStream=new ByteArrayInputStream("true".getBytes());
		return "stream";
	}
	//����
	public void update(){
		userService.update(model);
	}
}
