package com.qf.novelwork.web;


import com.qf.novel.common.dto.MessageResult;
import com.qf.novel.service.SearchBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SearchBookAction {

    @Autowired
    private SearchBookService searchItemService;

    @ResponseBody
    @RequestMapping("/search/book/import")
    public MessageResult searchItemIndex() {
        System.out.println(1111111111);
        MessageResult mr = new MessageResult();
        boolean b = searchItemService.importAllBooks();
        if (b) {
            mr.setSuccess(true);
            mr.setMessage("索引导入成功");
        } else {
            mr.setSuccess(false);
            mr.setMessage("索引导入失败");
        }

        return mr;
    }

}
