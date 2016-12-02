package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.User;
import net.sf.json.JSONArray;

public interface UserDao extends BaseDao<User>{
	public List<User> queryUser(String name,int page,int rows);
    List<User> queryAllUser(String string, int page, int rows);
    //�û���¼
    public User login(User user);
    //�õ��û��ܿ����������İ�ť
    JSONArray getUserMenu(int parentId,User user);
}
