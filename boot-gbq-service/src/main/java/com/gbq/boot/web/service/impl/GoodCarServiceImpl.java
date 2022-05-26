package com.gbq.boot.web.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gbq.boot.web.bean.GoodCar;
import com.gbq.boot.web.bean.Goods;
import com.gbq.boot.web.mapper.GoodCarMapper;
import com.gbq.boot.web.service.GoodCarService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author aqian666
 * @since 2022-05-25
 */
@Service
public class GoodCarServiceImpl extends ServiceImpl<GoodCarMapper, GoodCar> implements GoodCarService {

    @Resource
    GoodCarMapper goodCarMapper;
    @Override
    public boolean add(GoodCar goodCar) {
        if (goodCar != null){
            goodCarMapper.insert(goodCar);
        }
        goodCarMapper.insert(goodCar);
        return false;
    }

}
