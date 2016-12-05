package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.User;
import net.sf.json.JSONArray;
public interface UserService extends BaseService<User>{
    //查询满足条件的客户
	public List<User> queryUser(String name,int page,int rows);
	//查询所有的客户
	List<User> queryAllUser(String string, int page, int rows);
	public User login(User user) ;
	public JSONArray getUserMenu(int parentId, User user) ;
}
