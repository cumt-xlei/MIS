package cn.it.shop.service;

import cn.it.shop.model.PriList;

public interface PriListService extends BaseService<PriList>{

    PriList findByMKR(String priMaster, int priKey, int toId);

}
