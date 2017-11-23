package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.TreeNode;
import com.qf.novel.dao.NAuthorMapper;
import com.qf.novel.dao.NBookCatMapper;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.pojo.po.NAuthorExample;
import com.qf.novel.pojo.po.NBookCat;
import com.qf.novel.pojo.po.NBookCatExample;
import com.qf.novel.service.IBookCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/21 0021
 * Time: 17:56
 */
@Service
public class BookCatServiceImpl implements IBookCatService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private NBookCatMapper bookCatDao;
    @Autowired
    private NAuthorMapper authorDao;

    @Override
    public List<TreeNode> listItemCatsByPid(Long parentId) {
        List<TreeNode> treeNodeList = null;
        try{
            NBookCatExample example = new NBookCatExample();
            NBookCatExample.Criteria criteria = example.createCriteria();
            criteria.andParentIdEqualTo(parentId);
            //执行查询
            List<NBookCat> itemCatList = bookCatDao.selectByExample(example);
            //要序列化成json列表对象
            treeNodeList = new ArrayList<TreeNode>();
            //遍历原有列表生成新的列表
            for(int i=0;i<itemCatList.size();i++){
                NBookCat itemCat = itemCatList.get(i);
                TreeNode treeNode = new TreeNode();
                treeNode.setId(itemCat.getId());
                treeNode.setText(itemCat.getName());
                treeNode.setState(itemCat.getIsparent()==1 ? "closed" : "open");
                //新列表
                treeNodeList.add(treeNode);
            }

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return treeNodeList;
    }

    @Override
    public List<NAuthor> getAuthor() {
        List<NAuthor> list = null;
        try{
            NAuthorExample example = new NAuthorExample();
             list = authorDao.selectByExample(example);

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public NBookCat findCatById(Long bid) {

        NBookCat bookCat = null;
        try{
            bookCat = bookCatDao.selectByPrimaryKey(bid);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return bookCat;
    }
}
