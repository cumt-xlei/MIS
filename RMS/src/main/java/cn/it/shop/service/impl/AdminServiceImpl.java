package cn.it.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.shop.model.Admin;
import cn.it.shop.service.AdminService;

@Service("adminService")
public class AdminServiceImpl extends BaseServiceImpl<Admin> implements AdminService {
	@Override
	public Admin login(Admin admin) {
		return adminDao.login(admin);
	}
}
