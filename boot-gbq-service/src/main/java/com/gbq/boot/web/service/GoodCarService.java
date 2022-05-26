package com.gbq.boot.web.service;

import com.gbq.boot.web.bean.GoodCar;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gbq.boot.web.bean.Goods;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author aqian666
 * @since 2022-05-25
 */
public interface GoodCarService extends IService<GoodCar> {

    boolean add(GoodCar goodCar);
}
