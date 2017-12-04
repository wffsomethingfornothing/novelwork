package com.qf.novelwork.portal.web;

import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.vo.BookCasePage;
import com.qf.novel.pojo.vo.NBookCase;
import com.qf.novel.service.BookCaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: LXH
 * Date: 2017/11/29 0029
 * Time: 18:11
 *
 */
@Controller
public class BookCaseAction {

    @Autowired
    private BookCaseService bookCaseService;

    private Logger logger = LoggerFactory.getLogger(this.getClass());


    /**
     *分页显示我的书架
     * @param username
     * @param model
     * @return
     */
    @RequestMapping("/bookCase/{username}")
    public String doBookCase(@PathVariable("username") String username, BookCasePage page, Model model){

        NReader reader = null;
        List<NBookCase> list = null;

        try {
            reader = bookCaseService.selectByReaderName(username);
            Integer currentPage=1;
            Integer pageSize=3;
            if(page.getCurrentPage()!=null){
                currentPage = page.getCurrentPage();
            }
            page = bookCaseService.findByPage(currentPage, pageSize, reader);

            model.addAttribute("username",username);
            model.addAttribute("page",page);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }


        return "bookcase";

    }


    /**
     * 删除书架中的书  把b_book_reader表中的status由1改成2
     */
    @ResponseBody
    @RequestMapping("/removeBook/{id}")
    public int remmoveBook(@PathVariable("id") Long id){
        int i=0;
        try {
            i = bookCaseService.updateBook(id);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;

    }

    @RequestMapping("/searchBook")
    public String searchBook(NBookCase bookCase,BookCasePage page,String username, Model model){
        NReader reader = null;
        try {
            reader = bookCaseService.selectByReaderName(username);
            Integer currentPage=1;
            Integer pageSize=4;
            if(page.getCurrentPage()!=null){
                currentPage = page.getCurrentPage();
            }
            page = bookCaseService.findByLike(currentPage, pageSize, bookCase,reader);
            model.addAttribute("page", page);
            model.addAttribute("bookCase", bookCase);
            model.addAttribute("username",username);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return "bookcase";

    }
}
