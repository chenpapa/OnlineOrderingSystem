package la.chopper.service.impl;

import la.chopper.domain.Catalog;
import la.chopper.mapper.CatalogMapper;
import la.chopper.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatalogServiceImpl implements CatalogService {

    private CatalogMapper catalogMapper;

    @Autowired
    public void setCatalogMapper(CatalogMapper catalogMapper) {
        this.catalogMapper = catalogMapper;
    }

    /**
     * 查询餐厅的菜系
     *
     * @param restaurantId 餐厅id
     * @return 菜品列表
     */
    @Override
    public List<Catalog> selectCatalogByRestaurantId(Long restaurantId) {
        return catalogMapper.selectCatalogByRestaurantId(restaurantId);

    }

    /**
     * 插入新的菜系
     *
     * @param catalog 菜系插入信息
     * @return 成功返回true，反之false
     */
    @Override
    public boolean insertCatalog(Catalog catalog) {
        return (catalog != null && catalogMapper.insert(catalog) >= 0);
    }

    /**
     * 更新菜系信息
     *
     * @param catalog
     * @return
     */
    @Override
    public boolean updateCatalogByCatalogId(Catalog catalog) {
        if (catalog != null && catalogMapper.selectByPrimaryKey(catalog.getCatalogId()) != null) {
            catalogMapper.updateByPrimaryKey(catalog);
            return true;
        } else {
            return false;
        }
    }

    /**
     * 删除菜系ByCatalogId
     *
     * @param catalogId
     * @return
     */
    @Override
    public boolean deleteCatalogById(Long catalogId) {
        if (catalogId >= 0 && catalogMapper.deleteByPrimaryKey(catalogId) >= 0) {
            return true;
        } else {
            return false;
        }
    }

}
