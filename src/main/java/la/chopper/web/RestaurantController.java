package la.chopper.web;

import la.chopper.domain.Catalog;
import la.chopper.domain.DataResult;
import la.chopper.domain.Goods;
import la.chopper.domain.Restaurant;
import la.chopper.service.CatalogService;
import la.chopper.service.GoodsService;
import la.chopper.service.RestaurantService;
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
@RequestMapping("/restaurant")
public class RestaurantController extends BaseController {

    private RestaurantService restaurantService;

    private CatalogService catalogService;

    private GoodsService goodsService;

    @Autowired
    public void setRestaurantService(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @Autowired
    public void setCatalogService(CatalogService catalogService) {
        this.catalogService = catalogService;
    }

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping("/register")
    public String register() {
        return "restaurant/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(HttpServletRequest request, Restaurant restaurant) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("success");
        if (restaurantService.register(restaurant)) {
            setSessionRestaurant(request, restaurant);
            return mav;
        } else {
            mav.setViewName("restaurant/register");
            return mav;
        }
    }

    @RequestMapping("/login")
    public String login() {
        return "restaurant/login";
    }

    /**
     * 商家登录
     *
     * @param request    HttpServletRequest
     * @param restaurant 封装ajax传输的实体对象
     * @return ModelAndView or null
     */
    @RequestMapping(value = "/loginValidate", method = RequestMethod.POST)
    @ResponseBody
    public DataResult login(HttpServletRequest request, Restaurant restaurant) {
        DataResult result = new DataResult();
        Restaurant dbRestaurant = restaurantService.getRestaurantById(restaurant.getRestaurantId());
        if (dbRestaurant == null || !dbRestaurant.getRestaurantPassword().equals(restaurant.getRestaurantPassword())) {
            result.setResult("false");
            return result;
        } else {
            dbRestaurant.setRestaurantPassword("");
            setSessionRestaurant(request, dbRestaurant);
            result.setResult("true");
            return result;
        }
    }

    /**
     * @param request
     * @param restaurantId
     * @param tableNum
     * @return 餐厅点餐界面
     */
    @RequestMapping("/QRCode/{restaurantId}/{tableNum}")
    public ModelAndView QRCode(HttpServletRequest request,
                               @PathVariable("restaurantId") long restaurantId,
                               @PathVariable("tableNum") int tableNum) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("user/login");
        if (restaurantService.getRestaurantById(restaurantId) == null) {
            mav.addObject("errMsg", "餐厅不存在");
        } else if (tableNum < 0 || tableNum > (restaurantService.getRestaurantById(restaurantId)).getRestaurantTable()) {
            mav.addObject("errMsg", "餐桌不存在");
        } else if (getSessionUser(request) == null) {
            mav.addObject("errMsg", "用户未登录！");
            Restaurant dbRestaurant = restaurantService.getRestaurantById(restaurantId);
            dbRestaurant.setRestaurantPassword("");
            mav.addObject("restaurantInfo", dbRestaurant);
            setSessionRestaurant(request, dbRestaurant);
            setSessionTableNum(request, tableNum);
        } else {
            Restaurant dbRestaurant = restaurantService.getRestaurantById(restaurantId);
            dbRestaurant.setRestaurantPassword("");
            setSessionRestaurant(request, dbRestaurant);
            setSessionTableNum(request, tableNum);
            List<Catalog> catalogList = catalogService.selectCatalogByRestaurantId(restaurantId);
            List<List> list = new ArrayList<>();
            for (Catalog catalog : catalogList
                    ) {
                List<Goods> goodsList = goodsService.selectGoodsBycatalogId(catalog.getCatalogId());
                list.add(goodsList);
            }
            mav.addObject("restaurantInfo", getSessionRestaurant(request));
            mav.addObject("catalogList", catalogList);
            mav.addObject("list", list);
            mav.addObject("catalogListSize", catalogList.size());
            mav.setViewName("restaurant/frontend");
        }
        return mav;
    }

    @RequestMapping(value = "/registerValidate", method = RequestMethod.POST)
    @ResponseBody
    public Restaurant registerValidate(Restaurant restaurant) {
        if (restaurantService.getRestaurantByPhone(restaurant.getRestaurantPhone()) != null) {
            return restaurant;
        } else {
            return null;
        }
    }

    @RequestMapping("/frontend")
    public ModelAndView frontend(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        if (getSessionUser(request) == null) {
            mav.addObject("errMsg", "请先登录");
            mav.setViewName("user/login");
            return mav;
        } else if (getSessionRestaurant(request) == null || getSessionTableNum(request) == null) {
            mav.setViewName("user/userMain");
            return mav;
        } else {
            List<Catalog> catalogList = catalogService.selectCatalogByRestaurantId(getSessionRestaurant(request).getRestaurantId());
            List<List> list = new ArrayList<>();
            for (Catalog catalog : catalogList
                    ) {
                List<Goods> goodsList = goodsService.selectGoodsBycatalogId(catalog.getCatalogId());
                list.add(goodsList);
            }
            mav.addObject("restaurantInfo", getSessionRestaurant(request));
            mav.addObject("catalogList", catalogList);
            mav.addObject("list", list);
            mav.addObject("catalogListSize", catalogList.size());
            mav.setViewName("restaurant/frontend");
            return mav;
        }
    }

    @RequestMapping("/{restaurantId}")
    public ModelAndView doLogin(HttpServletRequest request, @PathVariable("restaurantId") long restaurantId) {
        ModelAndView mav = new ModelAndView();
        if (getSessionRestaurant(request) == null) {
            mav.addObject("errMsg", "请先登录");
            mav.setViewName("restaurant/login");
            return mav;
        } else if (getSessionRestaurant(request).getRestaurantId() != restaurantId) {
            mav.addObject("errMsg", "您登录的账号与此链接不匹配");
            mav.setViewName("restaurant/login");
            return mav;
        } else {
            mav.addObject("restaurantInfo", getSessionRestaurant(request));
            mav.setViewName("restaurant/managerPage");
            return mav;
        }
    }

}
