package cn.it.shop.service;

import java.util.List;

import cn.it.shop.model.PriList;

public interface PriListService extends BaseService<PriList>{

    PriList findByMKR(String priMaster, int priKey, int toId);

    boolean savePrivilege(PriList priviListModel);

    List<PriList> queryByPriId(String tuser, Integer uid);

}
