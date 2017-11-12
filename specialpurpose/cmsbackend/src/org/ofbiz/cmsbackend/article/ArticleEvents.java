package org.ofbiz.cmsbackend.article;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ofbiz.base.util.Debug;
import org.ofbiz.base.util.UtilHttp;
import org.ofbiz.base.util.UtilMisc;
import org.ofbiz.base.util.UtilProperties;
import org.ofbiz.cmsbackend.UtilFileUpload;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.service.LocalDispatcher;
import org.ofbiz.service.ModelService;

import net.sf.json.JSONObject;

/**
 * 
 * @author hezengyao
 * @since 2010-05
 */
public class ArticleEvents {
    public static final String  module         = ArticleEvents.class.getName();
    private static final String IMAGE_FOLDER   = UtilProperties.getPropertyValue("cmsupload.properties",  "cms.uploadfile.article");
    private static final String OFBIZ_HOME = System.getProperty("ofbiz.home");
    
    public static String createCmsArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
        LocalDispatcher dispatcher = (LocalDispatcher) request.getAttribute("dispatcher");
        GenericValue userLogin = (GenericValue) request.getSession().getAttribute("userLogin");
        Map<String, Object> context = UtilFileUpload.uploadFile(OFBIZ_HOME+IMAGE_FOLDER, request);
        String returnValue = "";
        try {
            
            context.put("contentImg", context.get("filePath"));
            context.put("userLogin", userLogin);
            ModelService pService = dispatcher.getDispatchContext().getModelService("createCmsArticle");
            context = pService.makeValid(context, ModelService.IN_PARAM);
            dispatcher.runSync(pService.name, context);
            returnValue = ModelService.RESPOND_SUCCESS;
        }catch (Exception e) {
            Debug.logError(e.getMessage(), module);
           // return ModelService.RESPOND_ERROR;
            returnValue = ModelService.RESPOND_ERROR;
        } 
        
        JSONObject json = JSONObject.fromObject(UtilMisc.toMap("returnVal",returnValue));
        response.getWriter().print(json.toString());
        
        return returnValue;
    }
    public static String updateCmsArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
        LocalDispatcher dispatcher = (LocalDispatcher) request.getAttribute("dispatcher");
        GenericValue userLogin = (GenericValue) request.getSession().getAttribute("userLogin");
        String returnValue = "";
        try {
        	Map<String, Object> context = UtilFileUpload.uploadFile(OFBIZ_HOME+IMAGE_FOLDER, request);
            context.put("contentImg", context.get("filePath"));
            context.put("userLogin", userLogin);
            ModelService pService = dispatcher.getDispatchContext().getModelService("updateCmsArticle");
            context = pService.makeValid(context, ModelService.IN_PARAM);
            dispatcher.runSync(pService.name, context);
            returnValue = ModelService.RESPOND_SUCCESS;
        }catch (Exception e) {
            Debug.logError(e.getMessage(), module);
            //return ModelService.RESPOND_ERROR;
            returnValue = ModelService.RESPOND_ERROR;
        }
        
        JSONObject json = JSONObject.fromObject(UtilMisc.toMap("returnVal",returnValue));
        response.getWriter().print(json.toString());

        return returnValue;
    }
    
    public static String deleteCmsArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
        LocalDispatcher dispatcher = (LocalDispatcher) request.getAttribute("dispatcher");
        GenericValue userLogin = (GenericValue) request.getSession().getAttribute("userLogin");
        String articleId = request.getParameter("articleId");
        String returnValue = "";
        try {
        	Map<String, Object> context = UtilHttp.getParameterMap(request);
            context.put("contentImg", context.get("filePath"));
            context.put("userLogin", userLogin);
            ModelService pService = dispatcher.getDispatchContext().getModelService("deleteCmsArticle");
            context = pService.makeValid(context, ModelService.IN_PARAM);
            dispatcher.runSync(pService.name, context);
            returnValue = ModelService.RESPOND_SUCCESS;
        }catch (Exception e) {
            Debug.logError(e.getMessage(), module);
            //return ModelService.RESPOND_ERROR;
            returnValue = ModelService.RESPOND_ERROR;
        }
        
        JSONObject json = JSONObject.fromObject(UtilMisc.toMap("returnVal",returnValue));
        response.getWriter().print(json.toString());

        return returnValue;
    }

}
