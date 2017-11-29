package com.qf.novelwork.web;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.po.NOrder;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.vo.NOrderCustom;
import com.qf.novel.pojo.vo.NOrderQuery;
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

    @RequestMapping("/minecenter")
    public String goCenter(Long rid,Model model){
        rid=151176527918886L;
        NReader nReader=readerService.selectReader(rid,model);
        return "web-minecenter";
    }

    @RequestMapping("/webmoney")
    public String goMoney(@RequestParam("id") Long rid,Model model){
        NReader nReader=readerService.selectReader(rid,model);
        return "web-money";
    }

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
}
