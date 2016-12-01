package cn.it.shop.dao.impl;

import javax.persistence.NoResultException;

import org.springframework.stereotype.Repository;

import cn.it.shop.dao.PriListDao;
import cn.it.shop.model.PriList;

@Repository("priListDao")
public class PriListDaoImpl extends BaseDaoImpl<PriList> implements PriListDao{

    @Override
    public PriList findByMKR(String priMaster, int priKey, int toId) {
        // TODO Auto-generated method stub
        String hql ="SELECT p FROM Privilege p WHERE p.privilegeMaster = "+"\'"+priMaster+"\'"+
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

}
