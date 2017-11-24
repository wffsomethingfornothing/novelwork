package com.qf.novel.dao;

import com.qf.novel.pojo.po.NContent;
import com.qf.novel.pojo.po.NContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NContentMapper {
    int countByExample(NContentExample example);

    int deleteByExample(NContentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NContent record);

    int insertSelective(NContent record);

    List<NContent> selectByExampleWithBLOBs(NContentExample example);

    List<NContent> selectByExample(NContentExample example);

    NContent selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NContent record, @Param("example") NContentExample example);

    int updateByExampleWithBLOBs(@Param("record") NContent record, @Param("example") NContentExample example);

    int updateByExample(@Param("record") NContent record, @Param("example") NContentExample example);

    int updateByPrimaryKeySelective(NContent record);

    int updateByPrimaryKeyWithBLOBs(NContent record);

    int updateByPrimaryKey(NContent record);
}