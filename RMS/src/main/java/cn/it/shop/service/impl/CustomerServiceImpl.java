package cn.it.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.shop.model.Customer;
import cn.it.shop.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl  extends BaseServiceImpl<Customer> implements CustomerService{
	public List<Customer> queryCustomer(String contactName,int page,int rows){
		return customerDao.queryCustomer(contactName, page, rows);
	}

	@Override
	public void deleteByIds(String ids) {
		 customerDao.deleteByIds(ids);
	}

	@Override
	public long getCount(String contactName) {
		return customerDao.getCount(contactName);
	}
}
