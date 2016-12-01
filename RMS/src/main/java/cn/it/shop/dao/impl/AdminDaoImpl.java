package cn.it.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.AdminDao;

import cn.it.shop.model.Admin;

@Repository("adminDao")
public class AdminDaoImpl extends BaseDaoImpl<Admin> implements AdminDao {

	@SuppressWarnings("deprecation")
	@Override
	public Admin login(Admin admin) {
		String hql="FROM Admin a WHERE a.admin_username=:username AND a.admin_password=:password";
		return (Admin)getSession().createQuery(hql)
		.setString("username", admin.getAdmin_username())
		.setString("password", admin.getAdmin_password())
		.uniqueResult();
	}


}
