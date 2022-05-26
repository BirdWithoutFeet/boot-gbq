package com.gbq.boot.web.service;

import com.gbq.boot.web.bean.Goods;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lmm
 * @since 2022-05-25
 */
public interface GoodsService extends IService<Goods> {

    /*
    * 商品分页查询
    * */
    List<Goods> getGoods(Integer pageSize, Integer currentPage);

    List<Goods> getGoodsByCar(Integer carId, Integer pageSize, Integer currentPage);

    boolean insertGoodCar(Integer managerId, Integer goodId);

    boolean removeByGoodId(Integer managerId, Integer goodId);
}
