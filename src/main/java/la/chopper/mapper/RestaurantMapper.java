package la.chopper.mapper;

import la.chopper.domain.Restaurant;

public interface RestaurantMapper {
    int deleteByPrimaryKey(Long restaurantId);

    int insert(Restaurant record);

    int insertSelective(Restaurant record);

    Restaurant selectByPrimaryKey(Long restaurantId);
    
    Restaurant selectByName(String restaurantName);

    int updateByPrimaryKeySelective(Restaurant record);

    int updateByPrimaryKey(Restaurant record);

    Restaurant selectRestaurantByPhone(String restaurantPhone);
}