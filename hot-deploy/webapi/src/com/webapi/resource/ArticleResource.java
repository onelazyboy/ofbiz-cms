package com.webapi.resource;
import java.util.Map;

import javax.annotation.security.PermitAll;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import org.ofbiz.base.util.UtilMisc;

import com.google.gson.Gson;
import com.webapi.entity.Article;
import com.webapi.method.DaoMethod;

@Path("articles/article")
@PermitAll
public class ArticleResource {
	@GET
	@Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
	@Consumes(MediaType.APPLICATION_JSON)
	public String getArticle(@Context HttpServletRequest request) {
		String articleId = (String)request.getParameter("articleId");
		DaoMethod dm = new DaoMethod();
		return dm.getEntityInfo("CmsArticle", UtilMisc.toMap("articleId", articleId));
	}
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public String createArticle(Article article) {
		DaoMethod dm = new DaoMethod();
		Map map = dm.convert2Map(article);
		return dm.putEntityInfo("CmsArticle", map);
	}
	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public String UpdateArticle(Article article) {
		DaoMethod dm = new DaoMethod();
		Map map = dm.convert2Map(article);
		return dm.putEntityInfo("CmsArticle", map);
	}
	@DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public String deleteArticle(Article article) {
		DaoMethod dm = new DaoMethod();
		Map map = dm.convert2Map(article);
		return dm.delEntityInfo("CmsArticle", map);
	}
	
}
