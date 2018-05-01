package la.chopper.service;

import la.chopper.domain.Detail;

import java.util.List;

public interface DetailService {

    boolean insertDetail(Detail detail);

    List<Detail> selectDetailByOrderId(Long orderId);

    boolean deleteDetailByOrderId(Long orderId);

    Detail selectDetailbyGoodsId(Long goodsId);
}
