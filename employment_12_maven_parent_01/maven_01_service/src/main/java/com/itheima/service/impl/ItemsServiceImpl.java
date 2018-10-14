package com.itheima.service.impl;

import com.itheima.dao.IItemDao;
import com.itheima.domain.Items;
import com.itheima.service.IItemsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ItemsServiceImpl implements IItemsService{
    @Autowired
    private IItemDao iItemDao;

    public List<Items> findAll() {
        List<Items> all = iItemDao.findAll();
        return all;
    }
}
