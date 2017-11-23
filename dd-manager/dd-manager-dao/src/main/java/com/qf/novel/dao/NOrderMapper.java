package com.qf.novel.dao;

import com.qf.novel.pojo.po.NOrder;
import com.qf.novel.pojo.po.NOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NOrderMapper {
    int countByExample(NOrderExample example);

    int deleteByExample(NOrderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NOrder record);

    int insertSelective(NOrder record);

    List<NOrder> selectByExample(NOrderExample example);

    NOrder selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NOrder record, @Param("example") NOrderExample example);

    int updateByExample(@Param("record") NOrder record, @Param("example") NOrderExample example);

    int updateByPrimaryKeySelective(NOrder record);

    int updateByPrimaryKey(NOrder record);
}