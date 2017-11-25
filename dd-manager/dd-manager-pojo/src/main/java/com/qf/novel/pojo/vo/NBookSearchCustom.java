package com.qf.novel.pojo.vo;

/**
 * User: DHC
 * Date: 2017/11/22
 * Time: 14:17
 * Version:V1.0
 */
public class NBookSearchCustom {
    private String id;//solr中的id是字符串格式
    private String title;
    private String readPoint;
    private long score;
    private String image;
    private String catName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getReadPoint() {
        return readPoint;
    }

    public void setReadPoint(String readPoint) {
        this.readPoint = readPoint;
    }

    public long getScore() {
        return score;
    }

    public void setScore(long score) {
        this.score = score;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }
}
