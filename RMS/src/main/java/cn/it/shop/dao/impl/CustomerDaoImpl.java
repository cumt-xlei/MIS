package cn.it.shop.dao.impl;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.CustomerDao;
import cn.it.shop.dao.RoleDao;
import cn.it.shop.model.Customer;

@Repository("customerDao")
public class CustomerDaoImpl  extends BaseDaoImpl<Customer> implements CustomerDao{

    @Override
    public void test() {
        // TODO Auto-generated method stub
        System.out.println("DAOIMpl110");
    }

}
