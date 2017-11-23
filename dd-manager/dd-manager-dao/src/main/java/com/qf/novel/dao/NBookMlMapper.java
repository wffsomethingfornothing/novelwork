package com.qf.novel.dao;

import com.qf.novel.pojo.po.NBookMl;
import com.qf.novel.pojo.po.NBookMlExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NBookMlMapper {
    int countByExample(NBookMlExample example);

    int deleteByExample(NBookMlExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NBookMl record);

    int insertSelective(NBookMl record);

    List<NBookMl> selectByExample(NBookMlExample example);

    NBookMl selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NBookMl record, @Param("example") NBookMlExample example);

    int updateByExample(@Param("record") NBookMl record, @Param("example") NBookMlExample example);

    int updateByPrimaryKeySelective(NBookMl record);

    int updateByPrimaryKey(NBookMl record);
}