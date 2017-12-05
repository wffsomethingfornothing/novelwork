package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.NReader;

import java.util.List;

public class BookCasePage {
    private Integer currentPage;//当前页
    private Integer pageSize;//每页的个数
    private Integer totalCount;//商品的总个数
    private Integer totalPage;//totalPage = totalClount%pageSize==0 ? totalClount/pageSize : totalClount/pageSize+1
    private Integer firstResult;
    //每页的供应商
    private List<NBookCase> list;
    private NReader reader;
    private NBookCase bookCase;

    public NBookCase getBookCase() {
        return bookCase;
    }

    public void setBookCase(NBookCase bookCase) {
        this.bookCase = bookCase;
    }

    public NReader getReader() {
        return reader;
    }

    public void setReader(NReader reader) {
        this.reader = reader;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getFirstResult() {
        return firstResult;
    }

    public void setFirstResult(Integer firstResult) {
        this.firstResult = firstResult;
    }

    public List<NBookCase> getList() {
        return list;
    }

    public void setList(List<NBookCase> list) {
        this.list = list;
    }

}
