package com.itheima.controller;

import com.itheima.domain.Items;
import com.itheima.service.IItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    @Qualifier("itemsServiceImpl")
    private IItemsService iItemsService;

    @RequestMapping("/testFindAll")
    public String testFindAll(Model model){
        List<Items> all = iItemsService.findAll();

        model.addAttribute("item",all.get(0));
        return "itemDetail";
    }

    @RequestMapping("/testFindAll2")
    public @ResponseBody Items testFindAll1(Items items){
        System.out.println(items);

        return items;
    }

}
