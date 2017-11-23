package com.qf.novel.dao;

import com.qf.novel.pojo.vo.NBookCustom;

import java.util.List;
import java.util.Map;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
public interface NBookCustomMapper {

    int countBooks();

    List<NBookCustom> listBooksByPage(Map<String,Object> map);

}
