package cn.it.shop.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import cn.it.shop.dao.RoleDao;
import cn.it.shop.model.Role;


@SuppressWarnings("deprecation")
@Repository("roleDao")
public class RoleDaoImpl  extends BaseDaoImpl<Role> implements RoleDao{
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Role> queryAllRole(String username,int page, int rows) {
		String hql="select r FROM Role r";
		return (List<Role>)getSession().createQuery(hql)
				.setFirstResult(rows*(page-1))
				.setMaxResults(rows)
				.getResultList();
		
		
	}
	@Override
	public Long count() {
		String hql="select count(*) FROM Role r";	
		return (Long) getSession().createQuery(hql).uniqueResult();
	}

}
