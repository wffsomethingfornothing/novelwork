package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.BBookReader;

public class NBookCase extends BBookReader {

    private String bookName;
    private String author;
    private String catName;

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }
}
