package cn.it.shop.dao.impl;
import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.CategoryDao;
import cn.it.shop.dao.UserDao;
import cn.it.shop.model.Category;
import cn.it.shop.model.User;
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<User> queryUser(String name, int page, int rows) {
		String hql="FROM User u WHERE u.realName LIKE :name";
		return getSession().createQuery(hql)				
				.setString("name", "%" + name + "%")
				.setFirstResult((page-1)*rows)
				.setMaxResults(rows)
				.list();
	}
	   @SuppressWarnings({ "unchecked", "deprecation" })
	    @Override
	    public List<User> queryAllUser(String username,int page, int rows) {
	        String hql="select u FROM User u";
	        return (List<User>)getSession().createQuery(hql)
	                .setFirstResult(rows*(page-1))
	                .setMaxResults(rows)
	                .getResultList();
	        
	        
	    }
	
<<<<<<< HEAD
		//		bf.append("SELECT * FROM cf_privilege AS cp ");
//		bf.append("WHERE  (cp.id IN (SELECT cfpl.toid FROM cf_privilege_list AS cfpl WHERE cfpl.PrivilegeMaster = 'role' ");
//		bf.append("AND cfpl.PrivilegeMasterKey IN (SELECT RoleID ");
//		bf.append("FROM cf_userrole AS cur LEFT JOIN cf_user AS cu ON cur.UserID = cu.id  WHERE cu.LoginName=");
//		bf.append("'test3' ");
//		bf.append(")) or (SELECT cfpl.toid FROM cf_privilege_list AS cfpl WHERE cfpl.PrivilegeMaster = 'user' ");
//		bf.append("AND cfpl.PrivilegeMasterKey IN (SELECT id FROM cf_user WHERE cf_user.LoginName=");
//		bf.append("'test3'");
//		bf.append("))) AND cp.ParentID=");
//		bf.append("'1'");
//		bf.append("\");");
		
		//hql = "FROM Privilege p WHERE p.parentID = " + parentId;
		for (Privilege privilege : (List<Privilege>) (getSession().createSQLQuery(bf).addEntity(Privilege.class).list())) {
			JSONObject jo = new JSONObject();
			jo.put("id", privilege.getId());
			jo.put("PrivilegeOperation", privilege.getPrivilegeOperation());
			jo.put("RecordStatus", privilege.getRecordStatus());
			jo.put("Icon", privilege.getIcon());
			jo.put("parendId", privilege.getParentID());
			jo.put("type", privilege.getType());
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
=======
>>>>>>> origin/master
}
