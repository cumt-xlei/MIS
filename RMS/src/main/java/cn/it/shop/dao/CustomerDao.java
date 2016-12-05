package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.Customer;

public interface CustomerDao extends BaseDao<Customer>{
	public List<Customer> queryCustomer(String contactName,int page,int rows);
	//根据ids删除多条记录
	public void deleteByIds(String ids);
	public long getCount(String contactName);
}
