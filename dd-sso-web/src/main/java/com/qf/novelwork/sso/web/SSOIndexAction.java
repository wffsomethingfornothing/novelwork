package com.qf.novelwork.sso.web;

import com.qf.novel.service.ReaderLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: LXH
 * Date: 2017/11/27 0027
 * Time: 16:05
 */
@Controller
public class SSOIndexAction {

    @RequestMapping("/")
    public String index(){

        return "login";
    }
}
