package com.gbq.boot.web.controller;


import com.gbq.boot.web.bean.Goods;
import com.gbq.boot.web.service.GoodCarService;
import com.gbq.boot.web.service.GoodsService;
import com.gqb.boot.utils.PageBounds;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lmm
 * @since 2022-05-25
 */
@RestController
@RequestMapping("/good-car")
public class GoodCarController {
    @Resource
    private GoodCarService goodCarService;

    @Resource
    private GoodsService goodsService;

    /**
     * 根据购物车id分页查询
     *
     */
    @GetMapping("/list")
    public HashMap<String, Object> getGoodsPageOfCar(Integer managerId , Integer pageSize, Integer currentPage){
        HashMap<String,Object> result = new HashMap<>();

        List<Goods> goodsList = goodsService.getGoodsByCar(managerId,pageSize,currentPage);
        PageBounds<Goods> pageBounds = new PageBounds(currentPage,goodsList.size(),pageSize);
        pageBounds.setPageList(goodsList);
        result.put("data",pageBounds);
        return result;
    }

}
