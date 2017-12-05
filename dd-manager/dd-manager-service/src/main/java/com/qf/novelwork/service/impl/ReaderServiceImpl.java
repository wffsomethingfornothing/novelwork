package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Order;
import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.common.util.IDUtils;
import com.qf.novel.dao.NReaderCustomMapper;
import com.qf.novel.dao.NReaderMapper;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.po.NReaderExample;
import com.qf.novel.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReaderServiceImpl implements ReaderService {

    @Autowired
    private NReaderCustomMapper nReaderCustomDao;
    @Autowired
    private NReaderMapper nReaderDao;

    @Override
    public Result<NReader> listReadersByPage(Page page, Order order, NReader query) {

        Result<NReader> result = null;
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("page", page);
            map.put("order",order);
            map.put("query",query);
            result = new Result<NReader>();

            int total = nReaderCustomDao.countReaders(map);
            result.setTotal(total);

            List<NReader> list = nReaderCustomDao.listReadersByPage(map);
            result.setRows(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateBatch3(List<Long> ids) {
        int i = 0;
        NReader record = new NReader();
        record.setState(3);
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);

        i = nReaderDao.updateByExampleSelective(record, example);

        return i;
    }

    @Override
    public int updateBatch2(List<Long> ids) {
        int i = 0;
        NReader record = new NReader();
        record.setState(2);
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);

        i = nReaderDao.updateByExampleSelective(record, example);

        return i;
    }

    @Override
    public int updateBatch1(List<Long> ids) {
        int i = 0;
        NReader record = new NReader();
        record.setState(1);
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);

        i = nReaderDao.updateByExampleSelective(record, example);

        return i;
    }

    @Transactional
    @Override
    public int addReader(NReader reader,Model model) {
        int i = 0;
        try {
            String oldpassword=reader.getPassword();
            String md5Password = DigestUtils.md5DigestAsHex(oldpassword.getBytes());
            long itemId = IDUtils.getItemId();
            reader.setId(itemId);
            reader.setUsername("用户"+itemId);
            reader.setPassword(md5Password);
            reader.setLevel(1);
            reader.setBalance(0L);
            reader.setTickets(0L);
            reader.setState(1);
            reader.setCreated(new Date());
            reader.setUpdated(new Date());
            i = nReaderDao.insert(reader);
            model.addAttribute("userName",reader.getUsername());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int modifyReader(NReader reader) {
        int i = 0;
        NReader record = new NReader();
        record.setUsername(reader.getUsername());

        i = nReaderDao.updateByPrimaryKeySelective(record);

        return i;
    }

    @Override
    public List<NReader> selectAllName() {
        NReaderExample example = new NReaderExample();
        List<NReader> list=nReaderDao.selectByExample(example);
        return list;
    }

    @Override
    public NReader selectReader(Long rid, Model model) {
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(rid);
        List<NReader> nReaders = nReaderDao.selectByExample(example);
        model.addAttribute("minecenterReader",nReaders.get(0));
        return null;
    }

    @Override
    public NReader selectReaderbyname(String user, Model model) {
        NReaderExample example = new NReaderExample();
        NReaderExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(user);
        List<NReader> nReaders = nReaderDao.selectByExample(example);
        model.addAttribute("minecenterReader",nReaders.get(0));
        return null;
    }
}
