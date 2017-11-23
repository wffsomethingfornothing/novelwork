package com.qf.novel.dao;

import com.qf.novel.pojo.po.NBookDesc;
import com.qf.novel.pojo.po.NBookDescExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NBookDescMapper {
    int countByExample(NBookDescExample example);

    int deleteByExample(NBookDescExample example);

    int deleteByPrimaryKey(Long bookId);

    int insert(NBookDesc record);

    int insertSelective(NBookDesc record);

    List<NBookDesc> selectByExampleWithBLOBs(NBookDescExample example);

    List<NBookDesc> selectByExample(NBookDescExample example);

    NBookDesc selectByPrimaryKey(Long bookId);

    int updateByExampleSelective(@Param("record") NBookDesc record, @Param("example") NBookDescExample example);

    int updateByExampleWithBLOBs(@Param("record") NBookDesc record, @Param("example") NBookDescExample example);

    int updateByExample(@Param("record") NBookDesc record, @Param("example") NBookDescExample example);

    int updateByPrimaryKeySelective(NBookDesc record);

    int updateByPrimaryKeyWithBLOBs(NBookDesc record);

    int updateByPrimaryKey(NBookDesc record);
}