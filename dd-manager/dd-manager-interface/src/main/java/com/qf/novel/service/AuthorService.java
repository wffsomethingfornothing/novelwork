package com.qf.novel.service;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.vo.NAuthorCustom;
import com.qf.novel.pojo.vo.NAuthorQuery;

import java.util.List;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 10:59
 * Version:V1.0
 */
public interface AuthorService {
    Result<NAuthorCustom> listItemsByPage(Page page,NAuthorQuery query);

    int updateBatch(List<Long> ids);

    int updateBatchUp(List<Long> ids);

    int updateBatchDown(List<Long> ids);

    int saveItem(NAuthor author);
}
