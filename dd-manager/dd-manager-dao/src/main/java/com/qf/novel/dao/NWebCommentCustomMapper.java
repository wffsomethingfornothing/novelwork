package com.qf.novel.dao;

import com.qf.novel.pojo.vo.CommentCustom;

import java.util.List;
import java.util.Map;

/**
 * User: LXH
 * Date: 2017/11/22 0022
 * Time: 22:34
 */
public interface NWebCommentCustomMapper {

    int countComments(Map<String, Object> map);

    List<CommentCustom> listCommentsByPage(Map<String, Object> map);
}
