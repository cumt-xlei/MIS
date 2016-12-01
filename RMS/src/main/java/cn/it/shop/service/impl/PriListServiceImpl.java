package cn.it.shop.service.impl;

import org.springframework.stereotype.Service;

import cn.it.shop.model.PriList;
import cn.it.shop.service.PriListService;

@Service("priListService")
public class PriListServiceImpl extends BaseServiceImpl<PriList> implements PriListService {

    @Override
    public PriList findByMKR(String priMaster, int priKey, int toId) {
        // TODO Auto-generated method stub
        return (PriList)priListDao.findByMKR(priMaster,priKey,toId);
    }

    @Override
    public boolean savePrivilege(PriList priviListModel) {
        // TODO Auto-generated method stub
        return priListDao.savePrivilege(priviListModel);
    }

}
