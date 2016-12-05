package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.Customer;

public interface CustomerService extends BaseService<Customer>{
	public List<Customer> queryCustomer(String contactName,int page,int rows);
	public void deleteByIds(String ids);
	public long getCount(String contactName);
}
