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
    private long count;//字数
    private String image;
    private String authorName;//作者姓名;
    private String catName;//具体分类
    private String catParentName;//分类
    private int status;//1.连载  2.完结
    private int attribute;//1.免费  2.VIP

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getAttribute() {
        return attribute;
    }

    public void setAttribute(int attribute) {
        this.attribute = attribute;
    }

    public String getCatParentName() {
        return catParentName;
    }

    public void setCatParentName(String catParentName) {
        this.catParentName = catParentName;
    }

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
