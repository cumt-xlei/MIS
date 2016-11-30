package cn.it.shop.service.impl;

import org.springframework.stereotype.Service;

import cn.it.shop.model.Customer;
import cn.it.shop.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl  extends BaseServiceImpl<Customer> implements CustomerService{

    @Override
    public void test(String string) {
        // TODO Auto-generated method stub
        customerDao.test();
        System.out.print("serviceImpl110");
    }

}
