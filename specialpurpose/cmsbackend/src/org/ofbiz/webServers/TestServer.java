package org.ofbiz.webServers;
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
import org.ofbiz.entity.GenericValue;
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
		Gson json = new Gson();
		Map<String, String> parm = new HashMap<String, String>();
		String tableName = request.getParameter("tb");
		if(UtilValidate.isEmpty(tableName)) {
			tableName = "";
		}
		//页码
		String pageNumber = request.getParameter("pn");
		if(UtilValidate.isEmpty(pageNumber)) {
			pageNumber = "1";
		}
		//条数
		String pageSize = request.getParameter("ps");
		if(UtilValidate.isEmpty(pageSize)) {
			pageSize = "0";
		}
		//id
		String articleIdVal = request.getParameter("articleId");
		if(UtilValidate.isNotEmpty(articleIdVal)) {
			parm.put("articleId", articleIdVal);
		}
		List<GenericValue> list = null;
		String str = "";
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
			list = list.subList(startNumber, endNumber);

			str = json.toJson(list);
		}
		// 输出到界面
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		out.println(str);
		out.close();
		//
		System.out.println(str);
	}

}
