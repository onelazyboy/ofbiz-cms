package com.webapi.resource;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.webapi.method.DaoMethod;

@Path("articles")
@RolesAllowed("admin")
public class ArticlesResource {
	@GET
	@Produces(MediaType.TEXT_PLAIN + ";charset=utf-8")
	@Consumes(MediaType.APPLICATION_JSON)
	public String getArticles() {
		DaoMethod dm = new DaoMethod();
		Map map = new HashMap();
		return dm.getEntityInfo("CmsArticle", map);
	}
}
