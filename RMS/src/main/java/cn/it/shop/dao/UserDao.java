package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.User;

public interface UserDao extends BaseDao<User>{
	public List<User> queryUser(String name,int page,int rows);
    List<User> queryAllUser(String string, int page, int rows);
}
