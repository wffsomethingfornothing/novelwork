package com.qf.novelwork.service.impl;


import com.qf.novel.common.dto.MessageResult;
import com.qf.novel.common.jedis.JedisClient;
import com.qf.novel.common.util.JsonUtils;
import com.qf.novel.pojo.po.NReader;
import com.qf.novel.service.TokenService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: DHC
 * Date: 2017/11/27
 * Time: 17:43
 * Version:V1.0
 */
@Service
public class TokenServiceImpl implements TokenService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private JedisClient jedisClient;
    @Override
    public MessageResult getUserByToken(String tokenId) {
        MessageResult mr = new MessageResult();
        try {
            String userJson = jedisClient.get("TT_TOKEN:" + tokenId);
            //userJson为空时
            if (StringUtils.isBlank(userJson)){
                mr.setSuccess(false);
                mr.setMessage("登录已经过期");
                return mr;
            }
            //redis集群中存在该用户名而且在有效时间之内
            //充值半小时
            jedisClient.expire("TT_TOKEN:" + tokenId, 1800);
            NReader reader = JsonUtils.jsonToPojo(userJson, NReader.class);
            //返回messageresult
            mr.setSuccess(true);
            mr.setMessage("欢迎回来");
            mr.setData(reader);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return mr;
    }
}
