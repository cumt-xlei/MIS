package cn.it.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.shop.model.UserRole;
import cn.it.shop.service.UserRoleService;

@Service("userRoleService")
public class UserRoleServiceImpl extends BaseServiceImpl<UserRole> implements UserRoleService {

    @Override
    public List<UserRole> queryByUserId(Integer userId) {
        // TODO Auto-generated method stub
        return (List<UserRole>)userRoleDao.queryByUserId(userId);
    }

}
