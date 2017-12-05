package com.qf.novel.service;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NReader;
import org.springframework.ui.Model;

import java.util.List;


public interface ReaderService {
    Result<NReader> listReadersByPage(Page page, Order order, NReader query);

    int updateBatch1(List<Long> ids);

    int updateBatch2(List<Long> ids);

    int updateBatch3(List<Long> ids);


    int addReader(NReader reader,Model model);


    NReader selectReader(Long rid, Model model);

    NReader selectReaderbyname(String user, Model model);
}
