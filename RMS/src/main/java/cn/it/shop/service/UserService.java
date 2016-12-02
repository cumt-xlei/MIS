package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.User;
import net.sf.json.JSONArray;
public interface UserService extends BaseService<User>{
    //查询满足条件的客户
	public List<User> queryUser(String name,int page,int rows);
	//查询所有的客户
	List<User> queryAllUser(String string, int page, int rows);
	//用户登录
    public User login(User user);
  //得到用户能看到的最左侧的按钮
    JSONArray getUserMenu(int parentId,User user);
}
