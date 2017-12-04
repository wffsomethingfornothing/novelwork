package com.qf.novel.service;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NNews;

import java.util.List;

public interface NewsService {
    Result<NNews> listNewsByPage(Page page, Order order, NNews query);

    List<NNews> listNews();

    NNews findNewsByid(int nid);
}
