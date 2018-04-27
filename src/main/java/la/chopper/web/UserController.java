package la.chopper.web;

import la.chopper.domain.Catalog;
import la.chopper.domain.DataResult;
import la.chopper.domain.Goods;
import la.chopper.domain.User;
import la.chopper.exception.UserExistException;
import la.chopper.service.CatalogService;
import la.chopper.service.GoodsService;
import la.chopper.service.RestaurantService;
import la.chopper.service.UserService;
import la.chopper.utils.CommonConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    private UserService userService;

    private RestaurantService restaurantService;

    private GoodsService goodsService;

    private CatalogService catalogService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    public void setRestaurantService(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @Autowired
    public void setCatalogService(CatalogService catalogService) {
        this.catalogService = catalogService;
    }

    /**
     * Requesting参数
     * value：       指定请求的实际地址，指定的地址可以是URI Template 模式；
     * method：      指定请求的method类型， GET、POST、PUT、DELETE等；
     * consumes：    指定处理请求的提交内容类型（Content-Type），例如application/json, text/html；
     * produces：    指定返回的内容类型，仅当request请求头中的(Accept)类型中包含该指定类型才返回；
     * params：      指定request中必须包含某些参数值是，才让该方法处理。
     * headers：     指定request中必须包含某些指定的header值，才能让该方法处理请求。
     */

    @RequestMapping("/register")
    public String register() {
        return "user/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(HttpServletRequest request, User user) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("restaurant/frontend");
        try {
            userService.register(user);
        } catch (UserExistException e) {
            mav.addObject("errorMsg", "手机号已经存在，请重新输入手机号。");
            mav.setViewName("user/register");
        }
        if (getSessionRestaurant(request) == null) {
            mav.setViewName("user/userMain");
        } else if (getSessionRestaurant(request) != null && getSessionTableNum(request) != null) {
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
        }
        setSessionUser(request, user);
        return mav;
    }

    @RequestMapping("/login")
    public String login() {
        return "user/login";
    }

    @RequestMapping(value = "/loginValidate", method = RequestMethod.POST)
    @ResponseBody
    public DataResult loginValidate(HttpServletRequest request, User user) {
        DataResult result = new DataResult();
        User dbUser = userService.getUserByPhone(user.getUserPhone());
        if (dbUser == null || !dbUser.getUserPassword().equals(user.getUserPassword())) {
            result.setResult("false");
            return result;
        } else {
            dbUser.setUserPassword("");
            setSessionUser(request, dbUser);
            result.setResult("true");
            return result;
        }
    }

    @RequestMapping("/test")
    @ResponseBody()
    public List<User> test() {
        List<User> userList = new ArrayList<>();
        userList.add(userService.getUserByPhone("18795892599"));
        userList.add(userService.getUserByPhone("18795892633"));
        return userList;
    }

    /**
     * 注销登录
     *
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute(CommonConstant.USER_CONTEXT);
        return "forward:/index.jsp";
    }

    @RequestMapping(value = "/validate", method = RequestMethod.POST)
    @ResponseBody
    public User validate(User user) {
        if (userService.getUserByPhone(user.getUserPhone()) != null) {
            return user;
        } else {
            return null;
        }
    }

}
