package com.qf.novel.dao;


import com.qf.novel.pojo.vo.NBookSearchCustom;
import com.qf.novel.pojo.vo.NSearchBookResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SearchBookDao {

    @Autowired
    private SolrServer solrServer;

    public NSearchBookResult search(SolrQuery query) {

        //根据query查询索引库
        QueryResponse queryResponse = null;
        try {
            queryResponse = solrServer.query(query);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }
        //取查询结果。
        SolrDocumentList solrDocumentList = queryResponse.getResults();
        //取查询结果总记录数
        long numFound = solrDocumentList.getNumFound();
        NSearchBookResult result = new NSearchBookResult();
        result.setRecordCount(numFound);
        //取商品列表，需要取高亮显示
        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
        List<NBookSearchCustom> bookList = new ArrayList<>();
        for (SolrDocument solrDocument : solrDocumentList) {
            NBookSearchCustom item = new NBookSearchCustom();
            item.setId((String) solrDocument.get("id"));
            item.setCatName((String) solrDocument.get("book_category_name"));
            item.setImage((String) solrDocument.get("book_image"));
            item.setScore((long) solrDocument.get("book_score"));
            item.setReadPoint((String) solrDocument.get("book_read_point"));
            item.setCount((long)solrDocument.get("book_count"));
            item.setAuthorName((String) solrDocument.get("book_author_name"));
            item.setCatParentName((String) solrDocument.get("book_category_parent_name"));
            item.setStatus((int)solrDocument.get("book_status"));
            item.setAttribute((int)solrDocument.get("book_attribute"));
            //取高亮显示
            List<String> list = highlighting.get(solrDocument.get("id")).get("book_title");
            String title = "";
            if (list != null && list.size() > 0) {
                title = list.get(0);
            } else {
                title = (String) solrDocument.get("book_title");
            }
            item.setTitle(title);
            //添加到商品列表
            bookList.add(item);
        }
        result.setBookList(bookList);
        //返回结果
        return result;
    }
}
