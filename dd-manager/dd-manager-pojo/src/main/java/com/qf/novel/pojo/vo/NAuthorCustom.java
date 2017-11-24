package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.NAuthor;

/**
 * User: Administrator
 * Date: 2017/11/9
 * Time: 20:31
 * Version:V1.0
 */
public class NAuthorCustom extends NAuthor{
    private String bookname;

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }
}
