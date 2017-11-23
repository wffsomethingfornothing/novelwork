package com.qf.novel.dao;

import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.po.NReaderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NReaderMapper {
    int countByExample(NReaderExample example);

    int deleteByExample(NReaderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NReader record);

    int insertSelective(NReader record);

    List<NReader> selectByExample(NReaderExample example);

    NReader selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NReader record, @Param("example") NReaderExample example);

    int updateByExample(@Param("record") NReader record, @Param("example") NReaderExample example);

    int updateByPrimaryKeySelective(NReader record);

    int updateByPrimaryKey(NReader record);
}