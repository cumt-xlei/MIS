package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.Role;

public interface RoleDao  extends BaseDao<Role>{

	List<Role> queryAllRole(String string, int page, int rows);
	Long count();
}
