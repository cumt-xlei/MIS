package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.Admin;

public interface AdminService extends BaseService<Admin> {
	public Admin login(Admin model);
}
