package com.itheima.dao;

import com.itheima.domain.Items;

import java.util.List;

public interface IItemDao {

    /**
     * 查询所有
     */
    List<Items> findAll();


}
