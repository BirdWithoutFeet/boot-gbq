package com.gbq.boot.web.controller;


import com.gbq.boot.web.bean.Article;
import com.gbq.boot.web.bean.GoodCar;
import com.gbq.boot.web.bean.Goods;
import com.gbq.boot.web.service.GoodCarService;
import com.gbq.boot.web.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gqb.boot.utils.PageBounds;
import org.springframework.web.bind.annotation.CrossOrigin;
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
@RequestMapping("goods")
public class GoodsController {

    @Resource
    private GoodsService goodsService;

    @Resource
    private GoodCarService goodCarService;

    /*查询商品
    * */

    /**
     * 分页查询
     */
    @GetMapping("/list")
    public HashMap<String, Object> getArticlePage(Goods good ,Integer pageSize, Integer currentPage){
        HashMap<String,Object> result = new HashMap<>();
        List<Goods> goodsList = goodsService.getGoods(pageSize,currentPage);
        PageBounds<Goods> pageBounds = new PageBounds(currentPage,goodsList.size(),pageSize);
        pageBounds.setPageList(goodsList);
        result.put("data",pageBounds);
        return result;
    }

    /*添加到购物车
    * */

    @GetMapping("/add")
    public HashMap<String,Object> addGood(Integer managerId, Integer goodId){
        HashMap<String,Object> result = new HashMap<>();
        boolean res = goodsService.insertGoodCar(managerId,goodId);
        if (res){
//            加入成功
            result.put("status",200);
        }
        else{
//            加入失败
            result.put("status",-1);
        }
        return result;
    }

    @GetMapping("/remove")
    public HashMap<String,Object> removeGood(Integer managerId,Integer goodId){
        HashMap<String,Object> result = new HashMap<>();
        boolean res = goodsService.removeByGoodId(managerId,goodId);
        if (res){
//            删除成功
            result.put("status",200);
        }
        else{
//           删除失败
            result.put("status",-1);
        }
        return result;
    }

}
