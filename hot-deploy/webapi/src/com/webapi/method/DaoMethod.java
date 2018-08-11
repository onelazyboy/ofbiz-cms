package com.webapi.method;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ofbiz.base.util.UtilValidate;
import org.ofbiz.entity.GenericDelegator;
import org.ofbiz.entity.GenericEntityException;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.entity.model.ModelEntity;

import com.google.gson.Gson;

public class DaoMethod {
	GenericDelegator delegator = GenericDelegator.getGenericDelegator("default");
	Gson gson = new Gson();
	public String getEntityInfo(String tableName,Map<String,Object> map) {
		String returnStr = "";
		List<GenericValue> list = null;
		try {
			list = delegator.findByAnd(tableName, map);
		} catch (GenericEntityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(UtilValidate.isNotEmpty(list)) {
			returnStr = gson.toJson(list);
		}
		return returnStr;
		
	}
	public String putEntityInfo(String tableName,Map<String,Object> map) {
		String returnStr = "";
		System.out.println("#########"+map.toString());
		GenericValue value = delegator.makeValidValue(tableName, map);
		
		GenericValue v = null;
		try {
			v = delegator.createOrStore(value);
		} catch (GenericEntityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(UtilValidate.isNotEmpty(v)) {
			returnStr = gson.toJson(v);
		}
		return returnStr;
		
	}

	public String delEntityInfo(String tableName, Map<String, Object> map) {
		ModelEntity me = delegator.getModelEntity(tableName);
		List<String> pkFields = me.getPkFieldNames();
		Map<String, Object> newMap = new HashMap<String, Object>();
		for (String pk : pkFields) {
			if (UtilValidate.isNotEmpty(map.get(pk))) {
				newMap.put(pk, map.get(pk).toString());
			}
		}
		long c = 0;
		if (UtilValidate.isNotEmpty(newMap)) {

			try {
				c = delegator.removeByAnd(tableName, newMap);
			} catch (GenericEntityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		Map<String, String> result = new HashMap<String, String>();

		if (c > 0) {
			result.put("result", "success");
		} else {
			result.put("result", "error");
		}

		return gson.toJson(result);
	}
	
	/**
	 * 将任意vo转化成map
	 * 
	 * @param t vo对象
	 * @return
	 */
	public  <T>  Map<String, Object> convert2Map(T t){
		Map<String, Object> result = new HashMap<String, Object>();
		Method[] methods = t.getClass().getMethods();
		try {
			for (Method method : methods) {
				Class<?>[] paramClass = method.getParameterTypes();
				if (paramClass.length > 0) { // 如果方法带参数，则跳过
					continue;
				}
				String methodName = method.getName() ;
				if (methodName.startsWith("get")) {
					
					String k = methodName.substring(0,4);
					String k1 = methodName.substring(3,4);
					String k2 = methodName.substring(4);
					methodName = methodName.substring(3,4).toLowerCase()+methodName.substring(4);
					
					Object value = method.invoke(t);
					result.put(methodName, value);
				}
				if(UtilValidate.isNotEmpty(result)) {
					result.remove("class");
				}
			}
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} 
 		return result;
	}

	
}

