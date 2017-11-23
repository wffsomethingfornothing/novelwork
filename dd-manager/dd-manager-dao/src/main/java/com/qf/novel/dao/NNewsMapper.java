package com.qf.novel.dao;

import com.qf.novel.pojo.po.NNews;
import com.qf.novel.pojo.po.NNewsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NNewsMapper {
    int countByExample(NNewsExample example);

    int deleteByExample(NNewsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NNews record);

    int insertSelective(NNews record);

    List<NNews> selectByExample(NNewsExample example);

    NNews selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NNews record, @Param("example") NNewsExample example);

    int updateByExample(@Param("record") NNews record, @Param("example") NNewsExample example);

    int updateByPrimaryKeySelective(NNews record);

    int updateByPrimaryKey(NNews record);
}