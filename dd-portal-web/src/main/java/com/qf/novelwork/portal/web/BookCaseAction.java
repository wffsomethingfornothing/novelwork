package com.qf.novelwork.portal.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: LXH
 * Date: 2017/11/29 0029
 * Time: 18:11
 */
@Controller
public class BookCaseAction {

    @RequestMapping("/bookCase/{username}")
    public String doBookCase(@PathVariable("username") String username, Model model){
        System.out.println(username);
        return "bookcase";

    }
}
