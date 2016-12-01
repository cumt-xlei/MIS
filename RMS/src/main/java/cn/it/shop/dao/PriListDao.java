package cn.it.shop.dao;

import cn.it.shop.model.PriList;

public interface PriListDao extends BaseDao<PriList>{

    PriList findByMKR(String priMaster, int priKey, int toId);

}
