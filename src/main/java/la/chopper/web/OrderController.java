package la.chopper.web;

import com.alibaba.fastjson.JSON;
import la.chopper.domain.DataResult;
import la.chopper.domain.Detail;
import la.chopper.domain.Order;
import la.chopper.service.OrderService;
import la.chopper.service.RestaurantService;
import la.chopper.utils.WebSocketUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("order")
public class OrderController extends BaseController {

    private OrderService orderService;

    private WebSocketUtils webSocketHandler;

    private RestaurantService restaurantService;

    private WebSocketUtils webSocketUtils;

    private Map<HttpServletRequest, Integer> orderMap = new HashMap<>();

    @Autowired
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    public OrderService getOrderService() {
        return orderService;
    }

    public WebSocketUtils getWebSocketHandler() {
        return webSocketHandler;
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
    public void setWebSocketUtils(WebSocketUtils webSocketUtils) {
        this.webSocketUtils = webSocketUtils;
    }

    @RequestMapping("/createOrder")
    public String createOrder() {
        return "order/createOrder";
    }

    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    @ResponseBody
    public DataResult createOrder(HttpServletRequest request, List<Detail> details) {
        DataResult result = new DataResult();
        if (orderMap.get(request) == getSessionTableNum(request)) {
            if (details != null) {
                TextMessage message = new TextMessage(JSON.toJSONString(details));
                try {
                    webSocketHandler.sendMessage(message);
                    result.setResult("true");
                } catch (IOException e) {
                    e.printStackTrace();
                    result.setResult("false");
                }
            }
            return result;
        } else {
            result.setResult("false");
            return result;
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
}
