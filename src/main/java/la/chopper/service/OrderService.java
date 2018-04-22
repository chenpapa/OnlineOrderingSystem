package la.chopper.service;

import la.chopper.domain.Detail;
import la.chopper.domain.Order;
import la.chopper.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    private OrderMapper orderMapper;

    private DetailService detailService;

    @Autowired
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Autowired
    public void setDetailService(DetailService detailService) {
        this.detailService = detailService;
    }

    /**
     * 插入新的订单
     *
     * @param order
     * @param detail
     * @return
     */
    public Boolean insertOrder(Order order, Detail detail) {
        if (order != null && detail != null) {
            return (orderMapper.insert(order) >= 0 && detailService.insertDetail(detail));
        } else {
            return false;
        }
    }

    /**
     * 查询订单
     *
     * @param orderId
     * @return
     */
    public Order selectOrderById(Long orderId) {
        Order order;
        if (orderId >= 0 && (order = orderMapper.selectByPrimaryKey(orderId)) != null) {
            return order;
        } else {
            order = null;
        }
        return order;
    }

    public List<Order> selectOrderByUserId(Long userId) {
        return orderMapper.selectOrderByUserId(userId);
    }
}
