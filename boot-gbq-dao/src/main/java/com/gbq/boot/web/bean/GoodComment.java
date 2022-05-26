package com.gbq.boot.web.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import java.io.Serializable;
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
@TableName("blog_good_comment")
public class GoodComment implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    /**
     * 商品id
     */
    private Integer goodId;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 发布时间
     */
    private LocalDateTime updateTime;


}
