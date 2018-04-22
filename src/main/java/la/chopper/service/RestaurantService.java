package la.chopper.service;

import la.chopper.domain.Catalog;
import la.chopper.domain.Restaurant;
import la.chopper.mapper.CatalogMapper;
import la.chopper.mapper.RestaurantMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantService {

    private RestaurantMapper restaurantMapper;

    private CatalogMapper catalogMapper;

    @Autowired
    public void setRestaurantMapper(RestaurantMapper restaurantMapper) {
        this.restaurantMapper = restaurantMapper;
    }

    @Autowired
    public void setCatalogMapper(CatalogMapper catalogMapper) {
        this.catalogMapper = catalogMapper;
    }

    /**
     * register
     *
     * @param restaurant 注册信息
     * @return 插入成功返回true，反之false
     */
    public boolean register(Restaurant restaurant) {
        return (restaurant != null && restaurantMapper.insert(restaurant) >= 0);
    }

    /**
     * @param restaurantId 餐厅账号
     * @return Restaurant
     */
    public Restaurant getRestaurantById(long restaurantId) {
        return restaurantMapper.selectByPrimaryKey(restaurantId);
    }

    /**
     * 查询餐厅菜系信息
     *
     * @param restaurantId
     * @return
     */
    public List<Catalog> getCatalogByRestaurantId(Long restaurantId) {
        return catalogMapper.selectCatalogByRestaurantId(restaurantId);
    }

    public Restaurant getRestaurantByPhone(String restaurantPhone) {
        return restaurantMapper.selectRestaurantByPhone(restaurantPhone);
    }
}
