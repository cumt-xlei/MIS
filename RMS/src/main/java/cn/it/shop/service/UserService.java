package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.User;
public interface UserService extends BaseService<User>{
	public List<User> queryUser(String name,int page,int rows);
}
