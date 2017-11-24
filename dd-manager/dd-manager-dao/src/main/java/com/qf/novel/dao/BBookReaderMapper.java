package com.qf.novel.dao;

import com.qf.novel.pojo.po.BBookReader;
import com.qf.novel.pojo.po.BBookReaderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BBookReaderMapper {
    int countByExample(BBookReaderExample example);

    int deleteByExample(BBookReaderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(BBookReader record);

    int insertSelective(BBookReader record);

    List<BBookReader> selectByExample(BBookReaderExample example);

    BBookReader selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") BBookReader record, @Param("example") BBookReaderExample example);

    int updateByExample(@Param("record") BBookReader record, @Param("example") BBookReaderExample example);

    int updateByPrimaryKeySelective(BBookReader record);

    int updateByPrimaryKey(BBookReader record);
}