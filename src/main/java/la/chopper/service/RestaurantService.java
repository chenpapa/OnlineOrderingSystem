package la.chopper.service;

import la.chopper.domain.Catalog;
import la.chopper.domain.Restaurant;

import java.util.List;

public interface RestaurantService {

    boolean register(Restaurant restaurant);

    Restaurant getRestaurantById(long restaurantId);

    List<Catalog> getCatalogByRestaurantId(Long restaurantId);

    Restaurant getRestaurantByPhone(String restaurantPhone);
}
