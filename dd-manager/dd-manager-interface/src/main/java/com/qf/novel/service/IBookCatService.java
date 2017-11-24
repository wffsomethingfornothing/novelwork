package com.qf.novel.service;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.common.dto.TreeNode;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.vo.NBookCatQuery;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/21 0021
 * Time: 17:54
 */
public interface IBookCatService {
    List<TreeNode> listItemCatsByPid(Long parentId);

    List<TreeNode> listItemCatsByPid1(Long parentId);

    List<NAuthor> getAuthor();

    NBookCat findCatById(Long bid);

    Result<NBookCat> listItemsByPage(Page page, Order order, NBookCatQuery query);

    int updateBatch(List<Long> ids);

    int updateBatchUp(List<Long> ids);

    int updateBatchDown(List<Long> ids);

    int saveItemParam(Long cid, String paramData);

    int saveItemParam1(String paramData);

    List<NBookCat> listBookCat(Long id);

    int editbookcat1(List<String> ids);
}
