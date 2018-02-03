package org.ofbiz.webServers;
import java.util.Map;

import org.ofbiz.base.util.Debug;
import org.ofbiz.entity.GenericDelegator;
import org.ofbiz.service.DispatchContext;

import javolution.util.FastMap;

public class TestServer {
	public static Map<String, Object> testService(DispatchContext ctx, Map<String, ? extends Object> context) {  
        //存放结果的map  
        Map<String, Object> result = FastMap.newInstance();  
        GenericDelegator delegator = (GenericDelegator) ctx.getDelegator();  
  
        String userid = (String) context.get("userid");
        Debug.logInfo("salt is ,userid is ["+userid+"] ", "findSeniorService");  
  
        result.put("aaa", "test_aaaaa");  
        result.put("bbb", "test_bbbbb");  
        result.put("ccc", "test_ccccc");  
        result.put("userid", userid);  
        return result;  
    } 

}
