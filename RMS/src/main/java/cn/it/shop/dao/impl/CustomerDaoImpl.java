package cn.it.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.CustomerDao;
import cn.it.shop.dao.RoleDao;
import cn.it.shop.model.Customer;

@Repository("customerDao")
public class CustomerDaoImpl extends BaseDaoImpl<Customer> implements CustomerDao {
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<Customer> queryCustomer(String contactName, int page, int rows) {
		String hql = "FROM Customer c WHERE c.contactName LIKE :contactName";
		return getSession().createQuery(hql).setString("contactName", "%" + contactName + "%")
				.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}

	@Override
	public void deleteByIds(String ids) {
		String hql = "DELETE  FROM Customer  WHERE customerID in (" + ids + ")";
		getSession().createQuery(hql).executeUpdate();
	}
	@Override
	public long getCount(String contactName) {
		String hql="SELECT count(c) FROM Customer c WHERE c.contactName LIKE :contactName";
		return (Long) getSession().createQuery(hql)
				.setString("contactName", "%" + contactName + "%")
				.uniqueResult();
	}

}
