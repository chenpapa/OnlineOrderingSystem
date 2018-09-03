package la.chopper.web;

import la.chopper.domain.Catalog;
import la.chopper.domain.Goods;
import la.chopper.domain.Restaurant;
import la.chopper.service.CatalogService;
import la.chopper.service.GoodsService;
import la.chopper.util.RandomPictureName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author chentao
 */
@Controller
@RequestMapping("/goods")
public class GoodsController extends BaseController {

    private GoodsService goodsService;

    private CatalogService catalogService;

    @Autowired
    public void setCatalogService(CatalogService catalogService) {
        this.catalogService = catalogService;
    }

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping("/addGoods")
    public ModelAndView addGoods(HttpServletRequest request) {
        Restaurant restaurant = getSessionRestaurant(request);
        List<Catalog> catalogList = catalogService.selectCatalogByRestaurantId(restaurant.getRestaurantId());
        ModelAndView mav = new ModelAndView();
        mav.addObject("catalogList", catalogList);
        mav.setViewName("goods/addGoods");
        return mav;
    }

    @RequestMapping("/alterGoods")
    public ModelAndView alterGoods(HttpServletRequest request) {
        Restaurant restaurant = getSessionRestaurant(request);
        List<Catalog> catalogList = catalogService.selectCatalogByRestaurantId(restaurant.getRestaurantId());
        List<Goods> goodsArrayList = new ArrayList<>();
        for (Catalog catalog : catalogList
                ) {
            List<Goods> goodsList = goodsService.selectGoodsBycatalogId(catalog.getCatalogId());
            for (Goods goods : goodsList
                    ) {
                goodsArrayList.add(goods);
            }
        }
        ModelAndView mav = new ModelAndView();
        mav.addObject("goodsList", goodsArrayList);
        mav.setViewName("goods/alterGoods");
        return mav;
    }

    @RequestMapping(value = "/addGoods", method = RequestMethod.POST)
    public ModelAndView addGoods(HttpServletRequest request, MultipartFile file) {
        Goods goods = new Goods();
        goods.setGoodsCatalogId(Long.parseLong(request.getParameter("catalogId")));
        goods.setGoodsStatus(Boolean.parseBoolean(request.getParameter("goodsStatus")));
        goods.setGoodsPrice(Long.parseLong(request.getParameter("goodsPrice")));
        goods.setGoodsDiscount(Long.parseLong(request.getParameter("goodsDiscount")));
        goods.setGoodsName(request.getParameter("goodsName"));
        goods.setGoodsCatalogName(request.getParameter("catalogName"));
        goods.setGoodsPic("null");
        goods.setGoodsIsDeleted(true);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("goods/success");
        if (!file.isEmpty()) {
            try {
                String fileName = RandomPictureName.getUUID();
                goods.setGoodsPic(fileName);
                String pathName = "d:/temp/" + fileName;
                file.transferTo(new File(pathName));
                goods.setGoodsPic(pathName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (goodsService.insertGoods(goods)) {
            return mav;
        } else {
            mav.setViewName("goods/fail");
        }
        return mav;
    }

    @RequestMapping(value = "/goodsList", method = RequestMethod.POST)
    @ResponseBody
    public List<Goods> selectGoodsByCatalogId(Long catalogId) {
        return goodsService.selectGoodsBycatalogId(catalogId);
    }
}
