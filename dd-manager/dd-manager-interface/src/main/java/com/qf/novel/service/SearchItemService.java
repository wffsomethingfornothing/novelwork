package com.qf.novel.service;

import com.qf.novel.pojo.vo.NSearchBookResult;

public interface SearchItemService {
    NSearchBookResult search(String keyword, Integer page, int i);
}
