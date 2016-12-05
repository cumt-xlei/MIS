package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.UserRole;

public interface UserRoleService extends BaseService<UserRole> {

    List<UserRole> queryByUserId(Integer id);

}
