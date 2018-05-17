package la.chopper.web;

import la.chopper.domain.Catalog;
import la.chopper.domain.Restaurant;
import la.chopper.service.CatalogService;
import la.chopper.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/catalog")
public class CatalogController extends BaseController {

    private CatalogService catalogService;

    private GoodsService goodsService;

    @Autowired
    public void setCatalogService(CatalogService catalogService) {
        this.catalogService = catalogService;
    }

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    /**
     * 读取菜系列表
     *
     * @param restaurantId
     * @return
     */
    @RequestMapping("/selectCatalog/{restaurantId}")
    @ResponseBody
    public ModelAndView selectCatalog(@PathVariable("restaurantId") long restaurantId) {
        if (restaurantId >= 0) {
            List<List> goodsList = new ArrayList<>();
            List<Catalog> catalogList = catalogService.selectCatalogByRestaurantId(restaurantId);
            for (Catalog catalog : catalogList) {
                goodsList.add(goodsService.selectGoodsBycatalogId(catalog.getCatalogId()));
            }
            ModelAndView mav = new ModelAndView();
            mav.setViewName("catalog/selectCatalog");
            mav.addObject("goodsList", goodsList);
            return mav;
        } else {
            return null;
        }
    }

    @RequestMapping("/addOrDeleteCatalog")
    public ModelAndView addOrDeleteCatalog(HttpServletRequest request) {
        Restaurant restaurant = getSessionRestaurant(request);
        Long restaurantId = restaurant.getRestaurantId();
        List<Catalog> catalogList = catalogService.selectCatalogByRestaurantId(restaurantId);
        for (Catalog catalog:catalogList
             ) {
            System.out.println(catalog.toString());
        }
        ModelAndView mav = new ModelAndView();
        mav.addObject("catalogList", catalogList);
        mav.setViewName("catalog/addOrDeleteCatalog");
        return mav;
    }

    /**
     * 添加菜系
     *
     * @param catalog
     * @return
     */
    @RequestMapping(value = "/addNewCatalog", method = RequestMethod.POST)
    public ModelAndView addNewCatalog(HttpServletRequest request, Catalog catalog) {
        catalogService.insertCatalog(catalog);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("catalog/addNewCatalogSuccessfully");
        mav.addObject("catalog", catalog);
        setSessionCatalog(request, catalog);
        return mav;
    }

    @RequestMapping("/updateCatalog")
    public String updateCatalog() {
        return "catalog/updateCatalog";
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
