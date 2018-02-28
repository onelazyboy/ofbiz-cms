package org.ofbiz.webServers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.ofbiz.base.util.Debug;
import org.ofbiz.base.util.UtilHttp;
import org.ofbiz.base.util.UtilMisc;
import org.ofbiz.base.util.UtilValidate;
import org.ofbiz.entity.GenericDelegator;
import org.ofbiz.entity.GenericEntityException;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.entity.condition.EntityExpr;
import org.ofbiz.entity.condition.EntityJoinOperator;
import org.ofbiz.service.DispatchContext;

import com.google.gson.Gson;

import javolution.util.FastMap;

public class TestServer {
	public static Map<String, Object> testService(DispatchContext ctx, Map<String, ? extends Object> context) {
		// 存放结果的map
		Map<String, Object> result = FastMap.newInstance();
		GenericDelegator delegator = (GenericDelegator) ctx.getDelegator();

		String userid = (String) context.get("userid");
		Debug.logInfo("salt is ,userid is [" + userid + "] ", "findSeniorService");

		result.put("aaa", "test_aaaaa");
		result.put("bbb", "test_bbbbb");
		result.put("ccc", "test_ccccc");
		result.put("userid", userid);
		Gson json = new Gson();
		String str = json.toJson(result);
		System.out.println(str);

		return result;
	}
	
	public static void testResponse(HttpServletRequest request, HttpServletResponse response) throws Exception {

		GenericDelegator delegator = (GenericDelegator) request.getAttribute("delegator");

		Map<String, Object> result = new HashMap();
		if (true) {
			List<GenericValue> list = delegator.findByAnd("CmsArticle", new HashMap());
			Document doc = null;
			Elements links = null;
			List imgs = new ArrayList();
			Map<String, Object> mapT = null;
			List lst = new ArrayList();
			for (GenericValue value : list) {
				String articleId = value.getString("articleId");
				String content = value.getString("content");
				if (UtilValidate.isNotEmpty(content)) {
					doc = Jsoup.parse(content);
					links = doc.getElementsByTag("img");
					imgs = new ArrayList();
					for (Element link : links) {
						String imgHref = link.attr("src");
						String imgAlt = link.attr("alt");
						imgs.add(UtilMisc.toMap("src", imgHref, "alt", imgAlt));
					}
				}

				mapT = new HashMap<String, Object>();
				mapT.putAll(value);
				mapT.put("contentImgs", imgs);
				lst.add(mapT);
			}

			result.put("article", lst);
			
			List<GenericValue> leaveword = delegator.findByAnd("CmsLeaveword", new HashMap());
			result.put("leaveword", leaveword);
			
			List<Map<String,String>> leavewordCount = new ArrayList();
			List<Map> leavewordCountT= delegator.findBySQL("SELECT ARTICLE_ID,CAST(COUNT(1) AS CHAR) LEAVEWORD_COUNT FROM CMS_LEAVEWORD GROUP BY ARTICLE_ID");
			for(Map<String,String> map : leavewordCountT) {
				String articleId = map.get("ARTICLE_ID").toString();
				String leavewordC = map.get("LEAVEWORD_COUNT").toString();
				leavewordCount.add(UtilMisc.toMap("articleId", articleId,"leavewordCount",leavewordC));
			}
			result.put("leavewordCount", leavewordCount);

			List<GenericValue> like = delegator.findByAnd("CmsLike", new HashMap());
			result.put("like", like);
			
			List<Map<String,String>> likeCount = new ArrayList();
			List<Map> likeCountT= delegator.findBySQL("SELECT ARTICLE_ID,CAST(COUNT(1) AS CHAR) LIKE_COUNT FROM CMS_LIKE GROUP BY ARTICLE_ID");
			for(Map<String,String> map : likeCountT) {
				String articleId = map.get("ARTICLE_ID").toString();
				String likeC = map.get("LIKE_COUNT").toString();
				likeCount.add(UtilMisc.toMap("articleId", articleId,"likeCount",likeC));
			}
			result.put("likeCount", likeCount);
			

			List<GenericValue> share = delegator.findByAnd("CmsShare", new HashMap());
			result.put("share", share);
			
			List<Map<String,String>> shareCount = new ArrayList();
			List<Map> shareCountT= delegator.findBySQL("SELECT ARTICLE_ID,CAST(COUNT(1) AS CHAR) SHARE_COUNT FROM CMS_SHARE GROUP BY ARTICLE_ID");
			for(Map<String,String> map : shareCountT) {
				String articleId = map.get("ARTICLE_ID").toString();
				String shareC = map.get("SHARE_COUNT").toString();
				shareCount.add(UtilMisc.toMap("articleId", articleId,"shareCount",shareC));
			}
			result.put("shareCount", shareCount);
			

			List<GenericValue> collect = delegator.findByAnd("CmsCollect", new HashMap());
			result.put("collect", collect);
			
			List<Map<String,String>> collectCount = new ArrayList();
			List<Map> collectCountT= delegator.findBySQL("SELECT ARTICLE_ID,CAST(COUNT(1) AS CHAR) COLLECT_COUNT FROM CMS_COLLECT GROUP BY ARTICLE_ID");
			for(Map<String,String> map : collectCountT) {
				String articleId = map.get("ARTICLE_ID").toString();
				String collectC = map.get("COLLECT_COUNT").toString();
				collectCount.add(UtilMisc.toMap("articleId", articleId,"collectCount",collectC));
			}
			result.put("collectCount", collectCount);
			
		}
		// 输出到界面
		printWriterJsonInfo(response, result);
	}

	public static void testResponse1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		GenericDelegator delegator = (GenericDelegator) request.getAttribute("delegator");

		Map<String, String> parm = new HashMap<String, String>();
		String tableName = request.getParameter("tb");
		if (UtilValidate.isEmpty(tableName)) {
			tableName = "";
		}
		// 页码
		String pageNumber = request.getParameter("pn");
		if (UtilValidate.isEmpty(pageNumber)) {
			pageNumber = "1";
		}
		// 条数
		String pageSize = request.getParameter("ps");
		if (UtilValidate.isEmpty(pageSize)) {
			pageSize = "0";
		}
		// id
		String articleIdVal = request.getParameter("articleId");
		if (UtilValidate.isNotEmpty(articleIdVal)) {
			parm.put("articleId", articleIdVal);
		}
		List<GenericValue> list = null;
		List<Map> result = new ArrayList<Map>();
		Map<String, Object> map = null;
		if (UtilValidate.isNotEmpty(tableName)) {
			list = delegator.findByAnd(tableName, parm);

			int lsCount = list.size();

			int pn = Integer.parseInt(pageNumber);
			int ps = Integer.parseInt(pageSize);

			int startNumber = (pn - 1) * ps;
			int endNumber = pn * ps;

			if (startNumber > lsCount) {
				startNumber = 0;
			}
			if (endNumber > lsCount) {
				endNumber = 0;
			}
			List<GenericValue> leaveword = null;
			List<GenericValue> like = null;
			List<GenericValue> collect = null;
			List<GenericValue> share = null;
			long likeCount = 0;
			long shareCount = 0;
			long collectCount = 0;
			long leavewordCount = 0;
			if (UtilValidate.isEmpty(articleIdVal)) {
				Document doc = null;
				Elements links = null;
				List imgs = new ArrayList();
				list = list.subList(startNumber, endNumber);
				for (GenericValue value : list) {
					String articleId = value.getString("articleId");
					String content = value.getString("content");
					if (UtilValidate.isNotEmpty(content)) {
						doc = Jsoup.parse(content);
						links = doc.getElementsByTag("img");
						imgs = new ArrayList();
						for (Element link : links) {
							String imgHref = link.attr("src");
							String imgAlt = link.attr("alt");
							imgs.add(UtilMisc.toMap("src", imgHref, "alt", imgAlt));
						}
					}

					leaveword = delegator.findByAnd("CmsLeaveword", UtilMisc.toMap("articleId", articleId));
					leavewordCount = delegator.findCountByCondition("CmsLeaveword", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);

					like = delegator.findByAnd("CmsLike", UtilMisc.toMap("articleId", articleId));
					likeCount = delegator.findCountByCondition("CmsLike", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);

					share = delegator.findByAnd("CmsShare", UtilMisc.toMap("articleId", articleId));
					shareCount = delegator.findCountByCondition("CmsCollect", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);

					collect = delegator.findByAnd("CmsCollect", UtilMisc.toMap("articleId", articleId));
					collectCount = delegator.findCountByCondition("CmsCollect", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);

					map = new HashMap<String, Object>();
					map.put("article", value);
					map.put("leaveword", leaveword);
					map.put("leavewordCount", leavewordCount);
					map.put("like", like);
					map.put("likeCount", likeCount);
					map.put("collect", collect);
					map.put("collectCount", collectCount);
					map.put("share", share);
					map.put("shareCount", shareCount);
					map.put("contentImgs", imgs);
					result.add(map);
				}
			}
		}
		// 输出到界面
		printWriterJsonInfo(response, result);
	}

	private static void printWriterJsonInfo(HttpServletResponse response, Object obj) throws IOException {
		String str = "";
		Gson json = new Gson();
		if (UtilValidate.isNotEmpty(obj)) {
			str = json.toJson(obj);
		}
		System.out.println("############"+str);
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		response.addHeader("Access-Control-Allow-Origin", "*");
		out.println(str);
		out.close();
		response.getWriter().print(str);
	}
	
	public static void getArticleInfo(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String articleId = request.getParameter("articleId");
		if(UtilValidate.isNotEmpty(articleId)) {
			articleId ="";
		}
		GenericDelegator delegator = (GenericDelegator) request.getAttribute("delegator");
		if(UtilValidate.isNotEmpty(articleId)) {
			GenericValue article = delegator.findByPrimaryKey("cmsArticle", UtilMisc.toMap("articleId", articleId));
			List leaveword = delegator.findByAnd("cmsLeaveword", UtilMisc.toMap("articleId", articleId));
		}
		
		
		
	}
}
