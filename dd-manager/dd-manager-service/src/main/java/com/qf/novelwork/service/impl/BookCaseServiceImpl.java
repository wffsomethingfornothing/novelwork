package com.qf.novelwork.service.impl;

import com.qf.novel.dao.BBookReaderMapper;
import com.qf.novel.dao.NBookCaseMapper;
import com.qf.novel.dao.NReaderMapper;
import com.qf.novel.pojo.po.BBookReader;
import com.qf.novel.pojo.po.BBookReaderExample;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.po.NReaderExample;
import com.qf.novel.pojo.vo.BookCasePage;
import com.qf.novel.pojo.vo.NBookCase;
import com.qf.novel.service.BookCaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BookCaseServiceImpl implements BookCaseService {

    @Autowired
    private NReaderMapper readerDao;
    @Autowired
    private NBookCaseMapper bookCaseDao;
    @Autowired
    private BBookReaderMapper bBookReaderDao;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public NReader selectByReaderName(String username) {
        NReader reader = null;

        try {

            NReaderExample example = new NReaderExample();
            NReaderExample.Criteria criteria = example.createCriteria();
            criteria.andUsernameEqualTo(username);
            List<NReader> list = readerDao.selectByExample(example);
            if(list!=null){
                reader = list.get(0);
            }

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return reader;
    }

    @Override
    public List<NBookCase> showBookCase(Long id) {
        List<NBookCase> list = null;
        try {
            list = bookCaseDao.showBookCase(id);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public BookCasePage findByPage(Integer currentPage, Integer pageSize, NReader reader) {
        BookCasePage page= new BookCasePage();
        try {
            page.setCurrentPage(currentPage);
            page.setPageSize(pageSize);
            page.setReader(reader);
            page.setFirstResult(pageSize*(currentPage-1));
            List<NBookCase> list = bookCaseDao.selectByPage(page);
            page.setList(list);

            Integer count = bookCaseDao.selectCount(reader.getId());
            page.setTotalCount(count);

            Integer totalPage =count%pageSize==0?(count/pageSize):(count/pageSize+1);
            page.setTotalPage(totalPage);


        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return page;
    }


    @Override
    public int updateBook(Long id) {
        int i=0;
        try {
            BBookReaderExample example = new BBookReaderExample();
            BBookReaderExample.Criteria criteria = example.createCriteria();
            criteria.andIdEqualTo(id);

            BBookReader bookCase = bBookReaderDao.selectByPrimaryKey(id);
            bookCase.setStatus(2);

            i = bBookReaderDao.updateByExample(bookCase,example);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public BookCasePage findByLike(Integer currentPage, Integer pageSize, NBookCase bookCase, NReader reader) {
        BookCasePage page = new BookCasePage();
        try {
            page.setCurrentPage(currentPage);
            page.setPageSize(pageSize);
            page.setBookCase(bookCase);
            page.setReader(reader);
            page.setFirstResult(pageSize*(currentPage-1));
            List<NBookCase> list = bookCaseDao.selectByLike(page);
            page.setList(list);

            Integer count = bookCaseDao.selectCount2(bookCase);
            page.setTotalCount(count);

            Integer totalPage =count%pageSize==0?(count/pageSize):(count/pageSize+1);
            page.setTotalPage(totalPage);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return page;
    }
}
