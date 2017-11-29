package com.qf.novel.service;

import com.qf.novel.common.dto.MessageResult;

/**
 * User: LXH
 * Date: 2017/11/28 0028
 * Time: 23:30
 */
public interface TokenService {
    MessageResult getUserByToken(String tokenId);
}
