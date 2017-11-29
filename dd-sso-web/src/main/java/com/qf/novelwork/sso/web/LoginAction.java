package com.qf.novelwork.sso.web;

import com.qf.novel.common.dto.MessageResult;
import com.qf.novel.common.util.CookieUtils;
import com.qf.novel.service.ReaderLoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * User: LXH
 * Date: 2017/11/28 0028
 * Time: 20:50
 */
@Controller
@Scope("prototype")
public class LoginAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ReaderLoginService readerLoginService;


    @ResponseBody
    @RequestMapping("/user/login")
    public MessageResult login(String username, String password, HttpServletRequest request, HttpServletResponse response){
        MessageResult mr = null;
        try {
            mr = readerLoginService.userLogin(username,password);
            if(mr.isSuccess()){
                //登录成功
                String token  = mr.getData().toString();
                CookieUtils.setCookie(request,response,"tt_token",token);

            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return mr;
    }
}
