package la.chopper.service.impl;

import la.chopper.domain.Detail;
import la.chopper.domain.Order;
import la.chopper.mapper.OrderMapper;
import la.chopper.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    private OrderMapper orderMapper;

    private DetailServiceImpl detailServiceImpl;

    @Autowired
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Autowired
    public void setDetailServiceImpl(DetailServiceImpl detailServiceImpl) {
        this.detailServiceImpl = detailServiceImpl;
    }

    /**
     * 插入新的订单
     *
     * @param order
     * @param detail
     * @return
     */
    @Override
    public boolean insertOrder(Order order, Detail detail) {
        if (order != null && detail != null) {
            return (orderMapper.insert(order) >= 0 && detailServiceImpl.insertDetail(detail));
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
    @Override
    public Order selectOrderById(Long orderId) {
        Order order;
        if (orderId >= 0 && (order = orderMapper.selectByPrimaryKey(orderId)) != null) {
            return order;
        } else {
            order = null;
        }
        return order;
    }

    @Override
    public List<Order> selectOrderByUserId(Long userId) {
        return orderMapper.selectOrderByUserId(userId);
    }
}
