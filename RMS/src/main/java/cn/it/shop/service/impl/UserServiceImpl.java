package cn.it.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.shop.model.User;
import cn.it.shop.service.UserService;
import net.sf.json.JSONArray;
@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Override
	public List<User> queryUser(String name, int page, int rows) {
		return userDao.queryUser(name, page, rows);
	}
	
	  @Override
	    public List<User> queryAllUser(String string,int page, int rows) {
	        return (List<User>)userDao.queryAllUser(string,page,rows);
	    }

	@Override
	public User login(User user) {
		return userDao.login(user);
	}

	@Override
	public JSONArray getUserMenu(int parentId, User user) {
		return userDao.getUserMenu(parentId, user);
	}
}
