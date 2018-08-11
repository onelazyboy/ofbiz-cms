package com.webapi.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.ws.rs.Path;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@XmlRootElement
@ApiModel(description="文章")
public class Article implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@ApiModelProperty(value="文章ID")
	public String articleId;
	@ApiModelProperty(value="类别")
	public String articleTypeId;
	@ApiModelProperty(value="小类别")
	public String catalogId;
	@ApiModelProperty(value="标题")
	public String title;
	@ApiModelProperty(value="小标题")
	public String shortTitle;
	@ApiModelProperty(value="简要")
	public String description;
	@ApiModelProperty(value="作者")
	public String author;
	@ApiModelProperty(value="内容")
	public String content;
	@ApiModelProperty(value="点击次数")
	public String visitTotal;
	@ApiModelProperty(value="标签")
	public String tags;
	@ApiModelProperty(value="发表时间")
	public Date releaseDate;
	
	@XmlAttribute(name="articleId")
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	
	
	@XmlAttribute(name="articleTypeId")
	public String getArticleTypeId() {
		return articleTypeId;
	}
	public void setArticleTypeId(String articleTypeId) {
		this.articleTypeId = articleTypeId;
	}
	@XmlAttribute(name="catalogId")
	public String getCatalogId() {
		return catalogId;
	}
	public void setCatalogId(String catalogId) {
		this.catalogId = catalogId;
	}
	@XmlAttribute(name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@XmlAttribute(name="shortTitle")
	public String getShortTitle() {
		return shortTitle;
	}
	public void setShortTitle(String shortTitle) {
		this.shortTitle = shortTitle;
	}
	@XmlAttribute(name="description")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@XmlAttribute(name="author")
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@XmlAttribute(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@XmlAttribute(name="visitTotal")
	public String getVisitTotal() {
		return visitTotal;
	}
	public void setVisitTotal(String visitTotal) {
		this.visitTotal = visitTotal;
	}
	@XmlAttribute(name="tags")
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	@XmlAttribute(name="releaseDate")
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	
	@Override
    public String toString() {
        return articleId + ":" + title ;
    }
	
}
