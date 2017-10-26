import javolution.util.FastMap
import org.ofbiz.base.util.UtilGenerics
import org.ofbiz.cmsbackend.category.CategoryWorker
import org.ofbiz.cmsbackend.category.CatalogWorker

System.out.println("@@@@@@@@@@@@2018");

request.setAttribute("header", "内容控制台");
request.setAttribute("pageHeader", "文章管理");

  def funCatalog = [];
	funCatalog[0] = ["name": "首页", "active":"0","url":""];
    funCatalog[1] = ["name": "内容控制台", "active":"0","url":""];
    funCatalog[2] = ["name": "文章管理", "active":"1","url": ""];
    request.setAttribute("funCatalog", funCatalog);
