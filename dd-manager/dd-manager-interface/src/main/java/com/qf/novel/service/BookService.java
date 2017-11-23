package com.qf.novel.service;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NBook;
import com.qf.novel.pojo.po.NBookDesc;
import com.qf.novel.pojo.vo.BookQuery;
import com.qf.novel.pojo.vo.NBookCustom;

import java.util.List;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
public interface BookService {
    Result<NBookCustom> listBooksByPage(Page page, BookQuery query);


    int removeBooks(List<Long> ids);

    int saveItem(NBook nBook, String content);

    NBook findBookById(Long bid);

    NBookDesc findDescById(Long bid);

    int editBook(NBook nBook, String content);
}
