package com.webapi.entity;

import java.io.Serializable;

import javax.ws.rs.Path;
import javax.xml.bind.annotation.XmlAttribute;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Path("Arcicles")
@ApiModel(description="文章List")
public class Articles implements Serializable {
	@ApiModelProperty(value="文章ID")
	public String articleId;
	@ApiModelProperty(value="文章")
	public Article article;
	
	@XmlAttribute(name="articleId")
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	@XmlAttribute(name="article")
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	
}
