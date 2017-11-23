package com.qf.novel.dao;

import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.po.NBookCatExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NBookCatMapper {
    int countByExample(NBookCatExample example);

    int deleteByExample(NBookCatExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NBookCat record);

    int insertSelective(NBookCat record);

    List<NBookCat> selectByExample(NBookCatExample example);

    NBookCat selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NBookCat record, @Param("example") NBookCatExample example);

    int updateByExample(@Param("record") NBookCat record, @Param("example") NBookCatExample example);

    int updateByPrimaryKeySelective(NBookCat record);

    int updateByPrimaryKey(NBookCat record);
}