package cn.it.shop.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.UserRoleDao;
import cn.it.shop.model.UserRole;

@Repository("userRoleDao")
public class UserRoleDaoImpl extends BaseDaoImpl<UserRole> implements UserRoleDao {

    @SuppressWarnings("unchecked")
    @Override
    public List<UserRole> queryByUserId(Integer userId) {
        // TODO Auto-generated method stub
        String hql="select ur from UserRole ur where ur.userID=:userID";
        return (List<UserRole>)getSession().createQuery(hql)
        		.setInteger("userID", userId)
        		.getResultList();
    }

}
