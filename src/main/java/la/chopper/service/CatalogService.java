package la.chopper.service;

import la.chopper.domain.Catalog;

import java.util.List;

public interface CatalogService {

    List<Catalog> selectCatalogByRestaurantId(Long restaurantId);

    boolean insertCatalog(Catalog catalog);

    boolean updateCatalogByCatalogId(Catalog catalog);

    boolean deleteCatalogById(Long catalogId);
}
