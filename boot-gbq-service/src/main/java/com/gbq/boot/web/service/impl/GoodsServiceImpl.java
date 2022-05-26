package com.gbq.boot.web.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gbq.boot.web.bean.GoodCar;
import com.gbq.boot.web.bean.Goods;
import com.gbq.boot.web.mapper.GoodCarMapper;
import com.gbq.boot.web.mapper.GoodsMapper;
import com.gbq.boot.web.service.GoodsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gqb.boot.utils.BusinessException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lmm
 * @since 2022-05-25
 */
@Service
public class GoodsServiceImpl extends ServiceImpl<GoodsMapper, Goods> implements GoodsService {

    @Resource
    private GoodsMapper goodsMapper;

    @Resource
    private GoodCarMapper goodCarMapper;

    @Override
    public List<Goods> getGoods(Integer pageSize, Integer currentPage) {
        Page<Goods> page = new Page<>();
        page.setCurrent(currentPage);
        page.setSize(pageSize);
        goodsMapper.selectPage(page, null);
        return page.getRecords();
    }

    @Override
    public List<Goods> getGoodsByCar(Integer carId, Integer pageSize, Integer currentPage) {
        Page<Goods> page = new Page<>();
        page.setCurrent(currentPage);
        page.setSize(pageSize);
        QueryWrapper<Goods> w = new QueryWrapper<>();
        w.eq("cg.car_id",carId);
        IPage<Map<String, Object>> mapIPage = goodsMapper.selectGoodsPageMap(page, w);
        return page.getRecords();
    }

    @Override
    public boolean insertGoodCar(Integer managerId, Integer goodId) {
        if (managerId == null || goodId == null)
            return false;
        // 1、判断购物车是否存在
        GoodCar goodCar = goodCarMapper.selectByManagerId(managerId);
        if (goodCar == null){
            //2 、 不存在的话 就创建一个购物车信息
            goodCar = new GoodCar();
            goodCar.setManagerId(managerId);
            goodCarMapper.insert(goodCar);
        }
        HashMap<String, Integer> paramMap = new HashMap<>();
        paramMap.put("carId",goodCar.getId());
        paramMap.put("goodId",goodId);
        // 3、判断该商品是否加入过购物车
        Integer isAdd = goodsMapper.selectGoodCar(paramMap);
        // 3.1 加入过的话 false  todo
        if (isAdd > 0)
            return false;
        // 3.2 没加入过的话 封装并存到数据库
        boolean res = goodsMapper.insertGoodCar(paramMap);
        return res;
    }

    @Override
    public boolean removeByGoodId(Integer managerId,Integer goodId) {
        GoodCar goodCar = goodCarMapper.selectByManagerId(managerId);
        HashMap<String, Integer> param = new HashMap<>();
        if (goodCar == null)
            throw new BusinessException("数据错误！managerId:"+managerId);
        param.put("goodId",goodId);
        param.put("carId",goodCar.getId());

        return goodsMapper.removeByGoodId(param);
    }
}
