package com.gbq.boot.web.mapper;

import com.gbq.boot.web.bean.GoodCar;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author aqian666
 * @since 2022-05-25
 */
public interface GoodCarMapper extends BaseMapper<GoodCar> {

    GoodCar selectByManagerId(Integer managerId);
}
