package cn.it.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.shop.model.Privilege;
import cn.it.shop.service.PrivilegeService;
import net.sf.json.JSONArray;

@Service("privilegeService")
public class PrivilegeServiceImpl extends BaseServiceImpl<Privilege> implements PrivilegeService{

	@Override
	public List<Privilege> queryAllPrivilege() {
		// TODO Auto-generated method stub
		return (List<Privilege>)privilegeDao.query();
	}

	@Override
	public List<Privilege> queryPrivilege(int oldParentId) {
		// TODO Auto-generated method stub
		return (List<Privilege>)privilegeDao.queryPrivilege(oldParentId);
	}

	@Override
	public JSONArray getMenu(int parentId) {
		// TODO Auto-generated method stub
		return (JSONArray)privilegeDao.getMenu(parentId);
	}

    @Override
    public Privilege findByMKR(String priMaster, int priKey,
            String recordStatus,String type) {
        // TODO Auto-generated method stub
        return (Privilege)privilegeDao.findByMKR(priMaster,priKey,recordStatus,type);
    }

    @Override
    public boolean savePrivilege(Privilege privi) {
        // TODO Auto-generated method stub
        return privilegeDao.savePrivilege(privi);
    }

}
