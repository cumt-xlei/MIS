package cn.it.shop.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import cn.it.shop.dao.PrivilegeDao;
import cn.it.shop.model.Privilege;
import cn.it.shop.model.Role;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Repository("privilegeDao")
public class PrivilegeDaoImpl extends BaseDaoImpl<Privilege> implements PrivilegeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Privilege> queryPrivilege(int oldParentId) {
		// TODO Auto-generated method stub
		String hql = "FROM Privilege p WHERE p.parentID = " + oldParentId;
		return (List<Privilege>) getSession().createQuery(hql).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public JSONArray getMenu(int parentId) {
		// TODO Auto-generated method stub
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

	@Override
	public Privilege findByMKR(String priMaster, int priKey, String recordStatus, String type) {
		// TODO Auto-generated method stub
		String hql = "SELECT p FROM Privilege p WHERE p.privilegeMaster = " + "\'" + priMaster + "\'"
				+ " and p.privilegeMasterKey = " + "\'" + priKey + "\'" + " and p.recordStatus = " + "\'" + recordStatus
				+ "\'" + " and p.type = " + "\'" + type + "\'";
		System.out.println(hql);
		Privilege priSingle = new Privilege();
		try {
			priSingle = (Privilege) getSession().createQuery(hql).getSingleResult();
		} catch (NoResultException e) {
			return priSingle;
		}
		return priSingle;
	}

	@Override
	public boolean savePrivilege(Privilege privi) {
		// TODO Auto-generated method stub
		// String hql = "UPDATE Privilege p SET
		// p.privilegeAccess=:newPrivilegeAccess WHERE p.id=:id";
		// Query query= getSession().createQuery(hql)
		// .setInteger("id", privi.getId())
		// .setString("newPrivilegeAccess", privi.getPrivilegeAccess());
		// if(query.executeUpdate()>0)
		// return true;
		// else
		return false;
	}

}
