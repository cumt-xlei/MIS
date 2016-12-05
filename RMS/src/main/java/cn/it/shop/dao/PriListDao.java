package cn.it.shop.dao;

import java.util.List;

import cn.it.shop.model.PriList;

public interface PriListDao extends BaseDao<PriList>{

    PriList findByMKR(String priMaster, int priKey, int toId);

    boolean savePrivilege(PriList priviListModel);

    List<PriList> queryByPriId(String tuser, Integer uid);

}
