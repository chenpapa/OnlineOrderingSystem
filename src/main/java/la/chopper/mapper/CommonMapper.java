package la.chopper.mapper;

import la.chopper.domain.Common;

public interface CommonMapper {
    int deleteByPrimaryKey(Long commonId);

    int insert(Common record);

    int insertSelective(Common record);

    Common selectByPrimaryKey(Long commonId);

    Common selectCommonByCommonGoods(Long commonGoods);

    int updateByPrimaryKeySelective(Common record);

    int updateByPrimaryKey(Common record);
}