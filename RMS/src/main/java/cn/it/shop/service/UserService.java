package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.User;
public interface UserService extends BaseService<User>{
    //查询满足条件的客户
	public List<User> queryUser(String name,int page,int rows);
	//查询所有的客户
	List<User> queryAllUser(String string, int page, int rows);

}
