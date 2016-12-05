package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.UserRole;

public interface UserRoleDao extends BaseDao<UserRole> {

    List<UserRole> queryByUserId(Integer userId);

}
