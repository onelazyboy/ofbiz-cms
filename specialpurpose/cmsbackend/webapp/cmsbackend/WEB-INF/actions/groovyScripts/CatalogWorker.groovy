import javolution.util.FastMap
import org.ofbiz.base.util.UtilGenerics
import org.ofbiz.base.util.UtilHttp


//////////////////////
 Map<String, String> uiLabelMap = UtilGenerics.checkMap(context.get("uiLabelMap"));
String webappName = UtilHttp.getApplicationName(request);
String funNamne = (String)request.getAttribute("_CURRENT_VIEW_");
String controlPath = (String)request.getAttribute("_CONTROL_PATH_");

String webappUrl = controlPath+"/main";
String funNameUrl = controlPath+"/"+funNamne;

String webappDesc = uiLabelMap.get(webappName);
String funNameDesc = uiLabelMap.get(funNamne);


request.setAttribute("header", webappDesc);
request.setAttribute("pageHeader", funNameDesc);

def funCatalog = [];
funCatalog[0] = ["name": "首页", "active":"0","url":""];
funCatalog[1] = ["name": webappDesc, "active":"0","url":webappUrl];
funCatalog[2] = ["name": funNameDesc, "active":"1","url": funNameUrl];
request.setAttribute("funCatalog", funCatalog);
