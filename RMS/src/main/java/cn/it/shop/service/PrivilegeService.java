package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.Privilege;
import net.sf.json.JSONArray;

public interface PrivilegeService extends BaseService<Privilege>{

	List<Privilege> queryAllPrivilege();
	List<Privilege> queryPrivilege(int oldParentId);
	JSONArray getMenu(int parentId);
    Privilege findByMKR(String priMaster, int priKey, String recordStatus, String type);
    boolean savePrivilege(Privilege privi);
	
}
