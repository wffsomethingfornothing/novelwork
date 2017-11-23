package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.NBook;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
public class NBookCustom extends NBook {
    private String catName;//书籍类别
    private String author;//作者名
    private String clickView;
    private String ticketsView;
    private String countView;
    private String scoreView;

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getClickView() {
        return clickView;
    }

    public void setClickView(String clickView) {
        this.clickView = clickView;
    }

    public String getTicketsView() {
        return ticketsView;
    }

    public void setTicketsView(String ticketsView) {
        this.ticketsView = ticketsView;
    }

    public String getCountView() {
        return countView;
    }

    public void setCountView(String countView) {
        this.countView = countView;
    }

    public String getScoreView() {
        return scoreView;
    }

    public void setScoreView(String scoreView) {
        this.scoreView = scoreView;
    }
}
