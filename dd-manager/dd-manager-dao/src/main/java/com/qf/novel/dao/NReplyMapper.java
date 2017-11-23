package com.qf.novel.dao;

import com.qf.novel.pojo.po.NReply;
import com.qf.novel.pojo.po.NReplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NReplyMapper {
    int countByExample(NReplyExample example);

    int deleteByExample(NReplyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NReply record);

    int insertSelective(NReply record);

    List<NReply> selectByExampleWithBLOBs(NReplyExample example);

    List<NReply> selectByExample(NReplyExample example);

    NReply selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NReply record, @Param("example") NReplyExample example);

    int updateByExampleWithBLOBs(@Param("record") NReply record, @Param("example") NReplyExample example);

    int updateByExample(@Param("record") NReply record, @Param("example") NReplyExample example);

    int updateByPrimaryKeySelective(NReply record);

    int updateByPrimaryKeyWithBLOBs(NReply record);

    int updateByPrimaryKey(NReply record);
}