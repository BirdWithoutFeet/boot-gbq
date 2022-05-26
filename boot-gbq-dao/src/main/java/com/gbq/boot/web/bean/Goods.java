package com.gbq.boot.web.bean;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author lmm
 * @since 2022-05-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("blog_goods")
public class Goods implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 商品id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 商品名
     */
    private String title;

    /**
     * 商品资源源地址
     */
    private String url;

    /**
     * 来源（0：未知 1：京东 2：淘宝 3：拼多多）
     */
    private Integer source;

    /**
     * 销量
     */
    private Integer sale;

    /**
     * 好评率
     */
    private Double degree;

    /**
     * 商品图片地址
     */
    private String imageUrl;

    /**
     * 店铺名
     */
    private String shopTitle;

    /**
     * 商品价格
     */
    private BigDecimal price;


}
