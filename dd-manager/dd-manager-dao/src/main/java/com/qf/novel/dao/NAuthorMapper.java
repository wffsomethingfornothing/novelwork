package com.qf.novel.dao;

import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NAuthorExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NAuthorMapper {
    int countByExample(NAuthorExample example);

    int deleteByExample(NAuthorExample example);

    int deleteByPrimaryKey(Long id);

    int insert(NAuthor record);

    int insertSelective(NAuthor record);

    List<NAuthor> selectByExample(NAuthorExample example);

    NAuthor selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") NAuthor record, @Param("example") NAuthorExample example);

    int updateByExample(@Param("record") NAuthor record, @Param("example") NAuthorExample example);

    int updateByPrimaryKeySelective(NAuthor record);

    int updateByPrimaryKey(NAuthor record);
}