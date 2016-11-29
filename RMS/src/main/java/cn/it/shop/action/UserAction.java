package cn.it.shop.action;

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
	public String queryAllUser(){
		pageMap=new HashMap<String,Object>();
		System.out.println("page:"+page);
		List<User> userList=userService.queryUser("", page, rows);
		pageMap.put("rows", userList);
		return "jsonMap";
	}
}
