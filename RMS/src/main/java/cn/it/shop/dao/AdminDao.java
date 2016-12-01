package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.Admin;

public interface AdminDao extends BaseDao<Admin> {
	//µÇÂ¼
	public Admin login(Admin admin);
}
