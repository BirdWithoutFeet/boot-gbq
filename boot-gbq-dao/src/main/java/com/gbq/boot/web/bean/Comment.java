package com.gbq.boot.web.bean;

import com.baomidou.mybatisplus.annotation.*;
import com.gqb.boot.utils.BaseTreeNode;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 
 * </p>
 *
 * @author aqian666
 * @since 2019-09-12
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("blog_comment")
public class Comment  extends BaseTreeNode implements Serializable  {

    private static final long serialVersionUID = 1L;

    /**
     * 文章id
     */
    @TableField("articleId")
    private Integer articleId;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 文章id
     */
    @TableField("articleName")
    private String articleName;

    /**
     * 评论时间
     */
    @TableField(value = "createTime",fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 已登录评论人
     */
    @TableField("byManagerId")
    private Integer byManagerId;


    /**
     * 已登录获取登陆人名称，未登录随意游客名称
     */
    private String  nickname;

}
