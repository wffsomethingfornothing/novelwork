package com.qf.novelwork.web;

import com.qf.novel.common.dto.TreeNode;
import com.qf.novel.pojo.po.NAuthor;
import com.qf.novel.service.IBookCatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/21 0021
 * Time: 17:49
 */
@Controller
@Scope("prototype")
public class BookCatAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private IBookCatService bookCatService;

    //获取小说类别
    @ResponseBody
    @RequestMapping("/bookCats")
    public List<TreeNode> listBookCatsByPid(@RequestParam("parentId") Long parentId){
        List<TreeNode> treeNodeList = null;
        try{
            treeNodeList = bookCatService.listItemCatsByPid(parentId);

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return treeNodeList;
    }

    //获取作者下拉框
    @ResponseBody
    @RequestMapping("authorList")
    public List<NAuthor> getAuthor(){

        List<NAuthor> list = null;
        try{
            list = bookCatService.getAuthor();

        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

}
