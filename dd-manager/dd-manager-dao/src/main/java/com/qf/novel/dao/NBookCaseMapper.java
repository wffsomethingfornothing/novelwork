package com.qf.novel.dao;

import com.qf.novel.pojo.vo.BookCasePage;
import com.qf.novel.pojo.vo.NBookCase;

import java.util.List;

public interface NBookCaseMapper {
    List<NBookCase> showBookCase(Long id);

    Integer selectCount(Long id);

    List<NBookCase> selectByPage(BookCasePage page);

    Integer selectCount2(NBookCase bookCase);

    List<NBookCase> selectByLike(BookCasePage page);
}
