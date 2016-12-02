package cn.it.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.CategoryDao;
import cn.it.shop.dao.UserDao;
import cn.it.shop.model.Admin;
import cn.it.shop.model.Category;
import cn.it.shop.model.Privilege;
import cn.it.shop.model.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<User> queryUser(String name, int page, int rows) {
		String hql = "FROM User u WHERE u.realName LIKE :name";
		return getSession().createQuery(hql).setString("name", "%" + name + "%").setFirstResult((page - 1) * rows)
				.setMaxResults(rows).list();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<User> queryAllUser(String username, int page, int rows) {
		String hql = "select u FROM User u";
		return (List<User>) getSession().createQuery(hql).setFirstResult(rows * (page - 1)).setMaxResults(rows)
				.getResultList();

	}

	@Override
	public User login(User user) {
		String hql = "FROM User u WHERE u.loginName=:username AND u.loginPassword=:password";
		return (User) getSession().createQuery(hql).setString("username", user.getLoginName())
				.setString("password", user.getLoginPassword()).uniqueResult();
	}

	@Override
	public JSONArray getUserMenu(int parentId, User user) {
		String hql = "";
		JSONArray array = new JSONArray();
		hql = "FROM Privilege p WHERE p.parentID = " + parentId;
		for (Privilege privilege : (List<Privilege>) (getSession().createQuery(hql).list())) {
			JSONObject jo = new JSONObject();
			jo.put("id", privilege.getId());
			jo.put("PrivilegeOperation", privilege.getPrivilegeOperation());
			jo.put("RecordStatus", privilege.getRecordStatus());
			jo.put("Icon", privilege.getIcon());
			jo.put("parendId", privilege.getParentID());
			// 小于等于2即代表有子菜单，0为最高级，1、2为次级，其他为选项。。
			if (privilege.getParentID() <= 2) {
				jo.put("state", "closed");
			} else {
				jo.put("state", "open");
				System.out.println(parentId);
			}
			array.add(jo);
		}
		return array;
	}


}
