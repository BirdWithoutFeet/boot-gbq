package com.gbq.boot.web.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author aqian666
 * @since 2022-05-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("blog_car")
public class GoodCar implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 购物车id
     */
    private Integer id;

    /**
     * 用户id
     */
    private Integer managerId;

    /*
    * 商品列表
    * */
    private List<Goods> goodsList;


}
