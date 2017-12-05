package com.qf.novelwork.web;

import com.qf.novel.pojo.po.NAdmin;
import com.qf.novel.service.NAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by ${lxh} on 2017/11/13 0013
 */
@Controller
@Scope("prototype")
public class IndexAction {
    @Autowired
    NAdminService nAdminService;
    @RequestMapping("/")
    public String  index(){
        return "index";
    }

    @RequestMapping("/{page}")
    public String page(@PathVariable("page") String page){
        return page;
    }

    @RequestMapping("/admin/checkname")
    @ResponseBody
    public String doLogin(String adminname,String password,HttpSession session) throws Exception{
        System.out.println("aaa");
        String  mess = "";
        NAdmin nAdmin=new NAdmin();
        nAdmin.setAdminname(adminname);
        NAdmin findUser = nAdminService.selectByadminname(nAdmin);
        System.out.println(findUser);
        if(findUser!=null){
            if(findUser.getPassword().equals(password)){
                System.out.println(findUser);
                session.setAttribute("sessionAdmin", findUser);
                mess="2";
            }else{
                mess="3";
            }
        }else{
            mess="3";
        }
        return mess;
    }

    @RequestMapping("/zhuce")
    public String doZhuce(){
        //session.removeAttribute("sessionAdmin");
        return "u_zhuce";
    }

    @RequestMapping("/logout")
    public String doLogout(HttpSession session){
        session.removeAttribute("sessionAdmin");
        return "login";
    }



}
