package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.common.util.IDUtils;
import com.qf.novel.dao.NAuthorCustomMapper;
import com.qf.novel.dao.NAuthorMapper;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NAuthorExample;
import com.qf.novel.pojo.vo.NAuthorCustom;
import com.qf.novel.pojo.vo.NAuthorQuery;
import com.qf.novel.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

;

/**
 * User: Administrator
 * Date: 2017/11/18
 * Time: 11:01
 * Version:V1.0
 */
@Service
public class AuthorServiceImpl implements AuthorService {


    @Autowired
    private NAuthorMapper authorDao;
    @Autowired
    private NAuthorCustomMapper authorCustomDao;


    @Override
    public Result<NAuthorCustom> listItemsByPage(Page page, Order order, NAuthorQuery query) {
        Result<NAuthorCustom> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page", page);
            map.put("order",order);
            map.put("query",query);
            result = new Result<NAuthorCustom>();

            int total = authorCustomDao.countAuthors(map);
            result.setTotal(total);

            List<NAuthorCustom> list = authorCustomDao.listAuthorsByPage(map);
            result.setRows(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateBatch(List<Long> ids) {
        int i = 0;
        try {
            NAuthor record = new NAuthor();
            record.setState(3);
            NAuthorExample example = new NAuthorExample();
            NAuthorExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = authorDao.updateByExampleSelective(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updateBatchUp(List<Long> ids) {
        int i = 0;
        try {
            NAuthor record = new NAuthor();
            record.setState(2);
            NAuthorExample example = new NAuthorExample();
            NAuthorExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = authorDao.updateByExampleSelective(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int updateBatchDown(List<Long> ids) {
        int i = 0;
        try {
            NAuthor record = new NAuthor();
            record.setState(1);
            NAuthorExample example = new NAuthorExample();
            NAuthorExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(ids);
            i = authorDao.updateByExampleSelective(record,example);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Transactional
    @Override
    public int saveItem(NAuthor author) {
        int i = 0;
        try {
            long itemId = IDUtils.getItemId();
            author.setId(itemId);
            author.setAddress("保密");
            author.setState(2);
            author.setCreated(new Date());
            author.setUpdated(new Date());
            i = authorDao.insert(author);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
