package cn.it.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.UserDao;
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
		//StringBuffer bf=new StringBuffer();
		String bf="";
		//String username="test3";
		JSONArray array = new JSONArray();
		bf = "SELECT * FROM cf_privilege AS cp WHERE  "
                + "(cp.id IN (SELECT cfpl.toid FROM cf_privilege_list AS cfpl WHERE cfpl.PrivilegeMaster = 'role' "
                + "AND cfpl.PrivilegeAccess='permit' AND cfpl.PrivilegeMasterKey IN"
                + " (SELECT RoleID FROM cf_userrole AS cur LEFT JOIN cf_user AS cu ON cur.UserID = cu.id  "
                + "WHERE cu.LoginName='"+ user.getLoginName() +"' )) or "
                        + "cp.id IN (SELECT cfpl.toid FROM cf_privilege_list AS cfpl WHERE cfpl.PrivilegeMaster = 'user' "
                        + "AND cfpl.PrivilegeAccess='permit' AND cfpl.PrivilegeMasterKey "
                        + "IN (SELECT id FROM cf_user WHERE cf_user.LoginName='"+ user.getLoginName() +"'))) AND cp.ParentID=' " + parentId + "'";

		
		//hql = "FROM Privilege p WHERE p.parentID = " + parentId;
		for (Privilege privilege : (List<Privilege>) (getSession().createSQLQuery(bf).addEntity(Privilege.class).list())) {
			JSONObject jo = new JSONObject();
			jo.put("id", privilege.getId());
			jo.put("PrivilegeOperation", privilege.getPrivilegeOperation());
			jo.put("RecordStatus", privilege.getRecordStatus());
			jo.put("Icon", privilege.getIcon());
			jo.put("parendId", privilege.getParentID());
			jo.put("type", privilege.getType());
			jo.put("title", privilege.getTitle());
			jo.put("url", privilege.getUrl());
			// С�ڵ���2���������Ӳ˵���0Ϊ��߼���1��2Ϊ�μ�������Ϊѡ���
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
