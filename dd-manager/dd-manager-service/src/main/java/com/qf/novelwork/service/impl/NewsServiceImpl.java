package com.qf.novelwork.service.impl;



import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.dao.NNewsCustomMapper;
import com.qf.novel.dao.NNewsMapper;
import com.qf.novel.pojo.po.NNews;
import com.qf.novel.pojo.po.NNewsExample;
import com.qf.novel.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NNewsCustomMapper newsDao;
    @Autowired
    private NNewsMapper newsMapper;

    @Override
    public Result<NNews> listNewsByPage(Page page, Order order, NNews query) {

        Result<NNews> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page", page);
            map.put("order", order);
            map.put("query", query);
            result = new Result<NNews>();

            int total = newsDao.countNews(map);
            result.setTotal(total);

            List<NNews> list = newsDao.listNewsByPage(map);
            result.setRows(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<NNews> listNews() {

        NNewsExample example =new NNewsExample();
        NNewsExample.Criteria c =example.createCriteria();
        c.andStatusEqualTo(1);
        List<NNews> nNews = newsMapper.selectByExample(example);

        return nNews;
    }

    @Override
    public NNews findNewsByid(int nid) {
        NNewsExample example =new NNewsExample();
        NNewsExample.Criteria c =example.createCriteria();
        c.andIdEqualTo((long) nid);
        List<NNews> nNews = newsMapper.selectByExample(example);
        nNews.get(0);
        return nNews.get(0);
    }
}
