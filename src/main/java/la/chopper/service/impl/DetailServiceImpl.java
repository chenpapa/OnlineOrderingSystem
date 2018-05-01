package la.chopper.service.impl;

import la.chopper.domain.Detail;
import la.chopper.mapper.DetailMapper;
import la.chopper.mapper.OrderMapper;
import la.chopper.service.DetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailServiceImpl implements DetailService {

    private DetailMapper detailMapper;

    private OrderMapper orderMapper;

    @Autowired
    public void setDetailMapper(DetailMapper detailMapper) {
        this.detailMapper = detailMapper;
    }

    @Autowired
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    /**
     * 插入新的订单明细
     *
     * @param detail
     * @return
     */
    @Override
    public boolean insertDetail(Detail detail) {
        if (detail != null && detailMapper.insert(detail) >= 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 读取订单明细
     *
     * @param orderId
     * @return
     */
    @Override
    public List<Detail> selectDetailByOrderId(Long orderId) {
        if (orderId >= 0 && orderMapper.selectByPrimaryKey(orderId) != null) {
            if (detailMapper.selectDetailByOrderId(orderId) != null) {
                return detailMapper.selectDetailByOrderId(orderId);
            }
        }
        return null;
    }

    /**
     * 删除订单明细
     *
     * @param orderId
     * @return
     */
    @Override
    public boolean deleteDetailByOrderId(Long orderId) {
        if (orderId >= 0 && orderMapper.selectByPrimaryKey(orderId) != null) {
            if (detailMapper.deleteDetailByOrderId(orderId) >= 0) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override
    public Detail selectDetailbyGoodsId(Long goodsId) {
        if (goodsId >= 0) {
            Detail detail = detailMapper.selectDetailByGoodsId(goodsId);
            if (detail == null) {
                return null;
            } else {
                return detail;
            }
        } else {
            return null;
        }
    }
}
