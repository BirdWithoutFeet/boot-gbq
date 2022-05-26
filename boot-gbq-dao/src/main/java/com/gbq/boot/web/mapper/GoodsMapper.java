package com.gbq.boot.web.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gbq.boot.web.bean.Goods;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author aqian666
 * @since 2022-05-25
 */
public interface GoodsMapper extends BaseMapper<Goods> {

//    关联sql分页查询
    IPage<Map<String,Object>> selectGoodsPageMap(Page page, @Param(Constants.WRAPPER) Wrapper<Goods> queryWrapper);

    boolean insertGoodCar(Map map);

    Integer selectGoodCar(Map map);

    boolean removeByGoodId(Map map);
}
