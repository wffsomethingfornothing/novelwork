package com.qf.novel.dao;

import com.qf.novel.pojo.po.NBook;
import com.qf.novel.pojo.po.NBookExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NBookMapper {
    int countByExample(NBookExample example);

    int deleteByExample(NBookExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NBook record);

    int insertSelective(NBook record);

    List<NBook> selectByExample(NBookExample example);

    NBook selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NBook record, @Param("example") NBookExample example);

    int updateByExample(@Param("record") NBook record, @Param("example") NBookExample example);

    int updateByPrimaryKeySelective(NBook record);

    int updateByPrimaryKey(NBook record);
}