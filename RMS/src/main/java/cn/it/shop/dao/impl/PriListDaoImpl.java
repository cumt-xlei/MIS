package cn.it.shop.dao.impl;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import cn.it.shop.dao.PriListDao;
import cn.it.shop.model.PriList;
import cn.it.shop.model.Privilege;

@Repository("priListDao")
public class PriListDaoImpl extends BaseDaoImpl<PriList> implements PriListDao{

    @Override
    public PriList findByMKR(String priMaster, int priKey, int toId) {
        // TODO Auto-generated method stub
        String hql ="SELECT p FROM PriList p WHERE p.privilegeMaster = "+"\'"+priMaster+"\'"+
                    " and p.privilegeMasterKey = " +"\'"+priKey+
                   "\'"+" and p.toId = "+"\'"+toId+"\'";
        System.out.println(hql);
        PriList priSingle =new PriList();
        try { 
        priSingle=(PriList) getSession().createQuery(hql).getSingleResult();
        } catch (NoResultException  e) {  
        return priSingle;    
        } 
        return priSingle;
    }

    @Override
    public boolean savePrivilege(PriList priviListModel) {
        // TODO Auto-generated method stub
      String hql = "UPDATE PriList p SET p.privilegeAccess=:newPrivilegeAccess WHERE p.id=:id";
      Query query= getSession().createQuery(hql)
              .setInteger("id", priviListModel.getId())
              .setString("newPrivilegeAccess", priviListModel.getPrivilegeAccess());
      if(query.executeUpdate()>0)
          return true;
      else
          return false;
    }

    @SuppressWarnings({ "unchecked", "deprecation" })
    @Override
    public List<PriList> queryByPriId(String tuser, Integer uid) {
        // TODO Auto-generated method stub
        String hql = "select p from PriList p WHERE p.privilegeMasterKey=:uid and p.privilegeMaster=:tuser and p.privilegeAccess='permit'";
        
        List<PriList> pList= (List<PriList>)getSession().createQuery(hql)
                               .setInteger("uid",uid)
                               .setString("tuser", tuser)
                               .getResultList();
        return pList;
    }

}
