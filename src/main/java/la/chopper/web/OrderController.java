package la.chopper.web;

import com.alibaba.fastjson.JSON;
import la.chopper.domain.*;
import la.chopper.service.OrderService;
import la.chopper.service.RestaurantService;
import la.chopper.utils.WebSocketUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {

    private OrderService orderService;

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

    @RequestMapping("/createOrder")
    public String createOrder() {
        return "order/createOrder";
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
                    String json = JSON.toJSONString(details);
                    String temp = "{\"userName\":" + "\"" + getSessionUser(request).getUserName() + "\"" + ",\"tableNum\":" + getSessionTableNum(request) + ",order=" + json + "}";
                    TextMessage message = new TextMessage(temp);
                    System.out.println(temp);
                    orderMap.put(request, getSessionTableNum(request));
                    request.getSession().setAttribute("detailList", details);
                    if (!webSocketHandler.sendMessageToRestaurant(getSessionRestaurant(request).getRestaurantId(), message)) {
                        result.setResult("false");
                    }
                    result.setResult("true");
                }
                return result;
            } else if (orderMap.get(request) == getSessionTableNum(request)) {
                for (Detail detail : details) {
                    List<Detail> list = (List<Detail>) request.getSession().getAttribute("detailList");
                    list.add(detail);
                }
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
