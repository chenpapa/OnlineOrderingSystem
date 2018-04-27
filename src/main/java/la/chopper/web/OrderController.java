package la.chopper.web;

import com.alibaba.fastjson.JSON;
import la.chopper.domain.DataResult;
import la.chopper.domain.Detail;
import la.chopper.domain.Order;
import la.chopper.service.GoodsService;
import la.chopper.service.OrderService;
import la.chopper.service.RestaurantService;
import la.chopper.utils.WebSocketUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {

    private OrderService orderService;

    private GoodsService goodsService;

    private WebSocketUtils webSocketHandler;

    private RestaurantService restaurantService;

    private Map<HttpServletRequest, Integer> orderMap = new HashMap<>();

    @Autowired
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @Autowired
    public void setWebSocketHandler(WebSocketUtils webSocketHandler) {
        this.webSocketHandler = webSocketHandler;
    }

    @Autowired
    public void setRestaurantService(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping("/createOrder")
    public ModelAndView createdOrder(HttpServletRequest request) {
        List<Detail> detailList = getSessionDetails(request);
        ModelAndView mav = new ModelAndView();
        mav.addObject("userInfo", getSessionUser(request));
        mav.addObject("detailList", detailList);
        mav.setViewName("order/createOrder");
        return mav;
    }

    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    @ResponseBody
    public DataResult createOrder(HttpServletRequest request, @RequestBody List<Detail> details) {
        DataResult result = new DataResult();
        WebSocketSession websocketSession = WebSocketUtils.getRestaurantWebSocketSession().get(getSessionRestaurant(request).getRestaurantId());
        //判断餐厅营业状态
        if (websocketSession == null) {
            result.setResult("close");
            return result;
        } else {
            if (orderMap.get(request) == null) {
                if (details != null) {
                    for (Detail detail : details) {
                        detail.setGoodsName(goodsService.selectGoodsByPrimaryKey(detail.getGoodsId()).getGoodsName());
                        detail.setGoodsPrice(goodsService.selectGoodsByPrimaryKey(detail.getGoodsId()).getGoodsPrice());
                    }
                    StringBuffer json = new StringBuffer("{\"tableNum\":");
                    json.append(getSessionTableNum(request));
                    json.append(",\"userName\":\"");
                    json.append(getSessionUser(request).getUserName());
                    json.append("\",\"order\":");
                    json.append(JSON.toJSONString(details));
                    json.append("}");
                    TextMessage message = new TextMessage(json);
                    orderMap.put(request, getSessionTableNum(request));
                    request.getSession().setAttribute("detailList", details);
                    if (!webSocketHandler.sendMessageToRestaurant(getSessionRestaurant(request).getRestaurantId(), message)) {
                        result.setResult("false");
                    } else {
                        result.setResult("true");
                        setSessionDetails(request, details);
                    }
                }
                return result;
            } else if (orderMap.get(request) == getSessionTableNum(request)) {
                for (Detail detail : details) {
                    List<Detail> list = (List<Detail>) request.getSession().getAttribute("detailList");
                    list.add(detail);
                }
                result.setResult("true");
                setSessionDetails(request, (List<Detail>) request.getSession().getAttribute("detailList"));
                return result;
            } else {
                result.setResult("false");
                return result;
            }
        }
    }

    @RequestMapping("selectOrder/{orderId}")
    @ResponseBody
    public Order selectOrder(@PathVariable("orderId") Long orderId) {
        return orderService.selectOrderById(orderId);
    }

    @RequestMapping("/selectOrder/{userId}")
    @ResponseBody
    public List<Order> selectOrderByUserId(@PathVariable("userId") Long userId) {
        return orderService.selectOrderByUserId(userId);
    }

    @RequestMapping(value = "/checkOut", method = RequestMethod.POST)
    public DataResult checkOut(HttpServletRequest request) {
        DataResult result = new DataResult();
        if (orderMap.remove(getSessionTableNum(request)) != null) {
            result.setResult("true");
            return result;
        } else {
            result.setResult("false");
            return result;
        }
    }
}
