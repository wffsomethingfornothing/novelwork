package com.qf.novel.service;

import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.vo.BookCasePage;
import com.qf.novel.pojo.vo.NBookCase;

import java.util.List;

public interface BookCaseService {
    NReader selectByReaderName(String username);

    List<NBookCase> showBookCase(Long id);

    BookCasePage findByPage(Integer currentPage, Integer pageSize, NReader reader);

    int updateBook(Long id);

    BookCasePage findByLike(Integer currentPage, Integer pageSize, NBookCase bookCase, NReader reader);
}
