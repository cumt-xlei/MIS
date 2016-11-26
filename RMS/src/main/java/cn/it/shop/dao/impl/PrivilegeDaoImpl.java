package cn.it.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.PrivilegeDao;
import cn.it.shop.model.Privilege;
import cn.it.shop.model.Role;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Repository("privilegeDao")
public class PrivilegeDaoImpl extends BaseDaoImpl<Privilege> implements PrivilegeDao{

	@Override
	public List<Privilege> queryPrivilege(int oldParentId) {
		// TODO Auto-generated method stub
		String hql ="FROM Privilege p WHERE p.parentID = "+oldParentId;
		return (List<Privilege>)getSession().createQuery(hql).getResultList();
	}

	@Override
	public JSONArray getMenu(int parentId) {
		// TODO Auto-generated method stub
		String hql="";
		JSONArray array=new JSONArray();
		hql="FROM Privilege p WHERE p.parentID = "+parentId;
		for(Privilege privilege:(List<Privilege>)(getSession().createQuery(hql).list())){
			JSONObject jo=new JSONObject();
			jo.put("id", privilege.getId());
			jo.put("RecordStatus", privilege.getRecordStatus());
			jo.put("parendId",privilege.getParentID());
			 if(privilege.getParentID()==0){
			    	jo.put("state","closed");		    	
			    }
			    else{
			    	jo.put("state","open");
			    	System.out.println(parentId);
			    }
			array.add(jo);
		}
		return array;
	}

}
