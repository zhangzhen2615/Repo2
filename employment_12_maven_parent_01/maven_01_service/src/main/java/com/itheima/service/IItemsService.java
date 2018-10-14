package com.itheima.service;

import com.itheima.domain.Items;

import java.util.List;

public interface IItemsService {
    /**
     * 查询所有
     */
    List<Items> findAll();
}
