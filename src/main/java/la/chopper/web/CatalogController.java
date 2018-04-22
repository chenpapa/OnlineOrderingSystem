package la.chopper.web;

import la.chopper.domain.Catalog;
import la.chopper.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/catalog")
public class CatalogController extends BaseController {

    private CatalogService catalogService;

    @Autowired
    public void setCatalogService(CatalogService catalogService) {
        this.catalogService = catalogService;
    }

    /**
     * 读取菜系列表
     *
     * @param restaurantId
     * @return
     */
    @RequestMapping("/selectCatalog/{restaurantId}")
    @ResponseBody
    public List<Catalog> selectCatalog(@PathVariable("restaurantId") Long restaurantId) {
        return catalogService.selectCatalogByRestaurantId(restaurantId);
    }

    @RequestMapping("/addNewCatalog")
    public String addNewCatalog() {
        return "/catalog/createCatalog";
    }

    /**
     * 添加菜系
     *
     * @param catalog
     * @return
     */
    @RequestMapping(value = "/addNewCatalog", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public ModelAndView addNewCatalog(HttpServletRequest request, Catalog catalog) {
        catalogService.insertCatalog(catalog);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("catalog/addNewCatalogSuccessfully");
        mav.addObject("catalog", catalog);
        setSessionCatalog(request, catalog);
        return mav;
    }

    /**
     * 更新菜系
     *
     * @param catalog
     * @return
     */
    @RequestMapping(value = "/updateCatalog", method = RequestMethod.POST)
    public ModelAndView updateCatalog(Catalog catalog) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("success");
        if (catalogService.updateCatalogByCatalogId(catalog)) {
            return mav;
        } else {
            mav.setViewName("fail");
        }
        return mav;
    }
}
