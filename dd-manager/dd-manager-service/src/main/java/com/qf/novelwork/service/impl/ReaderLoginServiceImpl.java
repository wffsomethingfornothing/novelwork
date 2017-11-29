package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.MessageResult;
import com.qf.novel.common.jedis.JedisClient;
import com.qf.novel.common.util.JsonUtils;
import com.qf.novel.dao.NReaderMapper;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.pojo.po.NReaderExample;
import com.qf.novel.service.ReaderLoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.List;
import java.util.UUID;

/**
 * User: LXH
 * Date: 2017/11/28 0028
 * Time: 20:42
 */
@Service
public class ReaderLoginServiceImpl implements ReaderLoginService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private NReaderMapper readerDao;
    @Autowired
    private JedisClient jedisClient;

    @Override
    public MessageResult userLogin(String username, String password) {

        MessageResult mr = new MessageResult();

        try {
            NReaderExample example = new NReaderExample();
            NReaderExample.Criteria criteria = example.createCriteria();
            criteria.andUsernameEqualTo(username);

            List<NReader> list = readerDao.selectByExample(example);
            if (list == null || list.size() == 0) {
                //返回登录失败
                mr.setSuccess(false);
                mr.setMessage("用户名不存在");
                return mr;
            }

            NReader reader = list.get(0);
            String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
            if (!md5Password.equals(reader.getPassword())) {
                mr.setSuccess(false);
                mr.setMessage("用户名或者密码错误");
                return mr;
            }

            String token = UUID.randomUUID().toString();
            //把登录成功的信息写入到redis中
            //将用户信息中密码置空
            reader.setPassword(null);
            //用户信息存入缓存，并且设置过期时间，1800s(半小时)
            jedisClient.set("TT_TOKEN:" + token, JsonUtils.objectToJson(reader));
            jedisClient.expire("TT_TOKEN:" + token, 1800);
            //正确情况下返回MessageResult
            mr.setSuccess(true);
            mr.setMessage("登录成功");
            mr.setData(token);


        } catch (Exception e) {
            e.printStackTrace();
        }
        return mr;
    }
}
