package cn.it.shop.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
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
            jo.put("PrivilegeOperation", privilege.getPrivilegeOperation());
            jo.put("RecordStatus",privilege.getRecordStatus());
            jo.put("Icon",privilege.getIcon());
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

    @Override
    public boolean findByMKR(String priMaster, int priKey,
            String recordStatus) {
        // TODO Auto-generated method stub
        String hql ="SELECT p FROM Privilege p WHERE p.privilegeMaster = "+"\'"+priMaster+"\'"+" and p.privilegeMasterKey = " +"\'"+priKey+"\'"+" and p.recordStatus = "+"\'"+recordStatus+"\'";
        System.out.println(hql);
        boolean pd = false;
        try {
            List<Privilege> list=getSession().createQuery(hql).getResultList();
            int i = list.size();
            if(i!=0) {
                pd = true;
            }
            System.out.println(i);
        }
        catch(HibernateException e) {
            
        }
               
        return pd;
    }
	


}
