package cn.it.shop.action;
import java.io.ByteArrayInputStream;
/**
 * 客户管理
 * 苏雄伟
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
	//查询所有满足条件的用户
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
	//添加客户
	public void saveUser(){
		model.setUserId(69);
		System.out.println("dfsdf"+model.getAddress());
		userService.save(model);
	}
	//删除
	public String deleteByIds(){
		System.out.println("要删除的ids为"+ids);
		userService.deleteByIds(ids);
		inputStream=new ByteArrayInputStream("true".getBytes());
		return "stream";
	}
}
