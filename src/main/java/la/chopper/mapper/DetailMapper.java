package la.chopper.mapper;

import la.chopper.domain.Detail;

import java.util.List;

public interface DetailMapper {
    int insert(Detail record);

    int insertSelective(Detail record);

    List<Detail> selectDetailByOrderId(Long orderId);

    int deleteDetailByOrderId(Long orderId);
}