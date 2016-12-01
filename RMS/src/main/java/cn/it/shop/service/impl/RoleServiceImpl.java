package cn.it.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.shop.model.Role;
import cn.it.shop.service.RoleService;


@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService{

	@Override
	public List<Role> queryAllRole(String string,int page, int rows) {
		return (List<Role>)roleDao.queryAllRole(string,page,rows);
	}

	@Override
	public Long count() {
		return (Long)roleDao.count();
	}

	@Override
	public boolean deleteRole(String RoleName) {
		// TODO Auto-generated method stub
		return roleDao.deleteRole(RoleName);
	}

	@Override
	public boolean updateRole(String newRoleName, String roleName, String roleDesc) {
		// TODO Auto-generated method stub
		return roleDao.updateRole(newRoleName, roleName, roleDesc);
	}	

}
