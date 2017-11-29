package com.qf.novel.service;

import com.qf.novel.common.dto.MessageResult;

/**
 * User: LXH
 * Date: 2017/11/28 0028
 * Time: 20:42
 */
public interface ReaderLoginService {
    MessageResult userLogin(String username, String password);
}
