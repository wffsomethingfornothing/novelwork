package com.qf.novel.dao;

import com.qf.novel.pojo.po.NComment;
import com.qf.novel.pojo.po.NCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NCommentMapper {
    int countByExample(NCommentExample example);

    int deleteByExample(NCommentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NComment record);

    int insertSelective(NComment record);

    List<NComment> selectByExampleWithBLOBs(NCommentExample example);

    List<NComment> selectByExample(NCommentExample example);

    NComment selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NComment record, @Param("example") NCommentExample example);

    int updateByExampleWithBLOBs(@Param("record") NComment record, @Param("example") NCommentExample example);

    int updateByExample(@Param("record") NComment record, @Param("example") NCommentExample example);

    int updateByPrimaryKeySelective(NComment record);

    int updateByPrimaryKeyWithBLOBs(NComment record);

    int updateByPrimaryKey(NComment record);
}