package com.qf.novel.dao;

import com.qf.novel.pojo.vo.NAuthorCustom;

import java.util.List;
import java.util.Map;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 11:07
 * Version:V1.0
 */
public interface NAuthorCustomMapper {
    int countAuthors(Map<String, Object> map);
    List<NAuthorCustom> listAuthorsByPage(Map<String, Object> map);
}
