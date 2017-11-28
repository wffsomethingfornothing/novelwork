package com.qf.novel.service;

import com.qf.novel.pojo.vo.NSearchBookResult;

public interface SearchBookService {
    boolean importAllBooks();
    NSearchBookResult search(String keyword, Integer page, int rows);
}
