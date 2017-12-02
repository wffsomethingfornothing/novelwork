package com.qf.novelwork.web;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NOrder;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.pojo.vo.NOrderCustom;
import com.qf.novel.pojo.vo.NOrderQuery;
import com.qf.novel.service.ICommentService;
import com.qf.novel.service.OrderService;
import com.qf.novel.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: Administrator
 * Date: 2017/11/27
 * Time: 19:50
 * Version:V1.0
 */
@Controller
public class WebMineCenter {
    @Autowired
    private ReaderService readerService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private ICommentService commentService;

    //进入个人中心
    @RequestMapping("/minecenter")
    public String goCenter(@RequestParam("username") String user,Model model){
        NReader nReader=readerService.selectReaderbyname(user,model);
        return "web-minecenter";
    }

    //进入财务中心
    @RequestMapping("/webmoney")
    public String goReplay(@RequestParam("id") Long rid,Model model){
        NReader nReader=readerService.selectReader(rid,model);
        return "web-money";
    }

    //进入我的评论
    @RequestMapping("/webreplay")
    public String goMoney(@RequestParam("id") Long rid,Model model){
        NReader nReader=readerService.selectReader(rid,model);
        return "web-replay";
    }

    //交易查询
    @ResponseBody
    @RequestMapping("/weborders")
    public Result<NOrderCustom> listOrders(Page page, NOrder nOrder, NOrderQuery nOrderQuery,@RequestParam("id") Long rid){

        Result<NOrderCustom> list = null;
        try{
            list = orderService.weblistOrdersByPage(page,nOrder,nOrderQuery,rid);
        }catch (Exception e){
            e.printStackTrace();
        }
        //System.out.println(list.getRows().toString());
        return list;

    }

    //评论查询
    @ResponseBody
    @RequestMapping("/webcomments")
    public Result<CommentCustom> listComments(Page page, @RequestParam("id") Long rid){

        Result<CommentCustom> list = null;
        try{
            list = commentService.weblistCommentsByPage(page,rid);
        }catch (Exception e){
            e.printStackTrace();
        }
        //System.out.println(list.getRows().toString());
        return list;

    }
}
