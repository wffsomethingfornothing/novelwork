package com.qf.novel.service;

import com.qf.novel.common.dto.TreeNode;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NBookCat;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/21 0021
 * Time: 17:54
 */
public interface IBookCatService {
    List<TreeNode> listItemCatsByPid(Long parentId);

    List<NAuthor> getAuthor();

    NBookCat findCatById(Long bid);
}
