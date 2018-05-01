package la.chopper.service;

import la.chopper.domain.Detail;
import la.chopper.domain.Order;

import java.util.List;

public interface OrderService {

    boolean insertOrder(Order order, Detail detail);

    Order selectOrderById(Long orderId);

    List<Order> selectOrderByUserId(Long userId);

}
