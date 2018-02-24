package org.ofbiz.webServers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		Map<String,Object> map = null;
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
				list = list.subList(startNumber, endNumber);
				for(GenericValue value : list) {
					String articleId = value.getString("articleId");
					
					leaveword = delegator.findByAnd("CmsLeaveword", UtilMisc.toMap("articleId", articleId));
					leavewordCount = delegator.findCountByCondition("CmsLeaveword", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);
					
					like = delegator.findByAnd("CmsLike", UtilMisc.toMap("articleId", articleId));
					likeCount = delegator.findCountByCondition("CmsLike", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);
					
					share = delegator.findByAnd("CmsShare", UtilMisc.toMap("articleId", articleId));
					shareCount = delegator.findCountByCondition("CmsCollect", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);

					collect = delegator.findByAnd("CmsCollect", UtilMisc.toMap("articleId", articleId));
					collectCount = delegator.findCountByCondition("CmsCollect", EntityExpr.makeCondition("articleId", EntityJoinOperator.EQUALS, articleId), null, null);

					map = new HashMap<String,Object>();
					map.put("article", value);
					map.put("leaveword", leaveword);
					map.put("leavewordCount", leavewordCount);
					map.put("like", like);
					map.put("likeCount", likeCount);
					map.put("collect", collect);
					map.put("collectCount", collectCount);
					map.put("share", share);
					map.put("shareCount", shareCount);
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
