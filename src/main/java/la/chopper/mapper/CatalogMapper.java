package la.chopper.mapper;

import la.chopper.domain.Catalog;

import java.util.List;

public interface CatalogMapper {
    // 按主键删除(delete from table where PK = '')
    int deleteByPrimaryKey(Long catalogId);

    // 插入数据（所有属性字段、返回值为ID）
    int insert(Catalog record);

    // 插入数据，使用不为null的属性作为字段使用
    int insertSelective(Catalog record);

    // 按主键查询(select * from table where PK = '')
    Catalog selectByPrimaryKey(Long catalogId);

    List<Catalog> selectCatalogByRestaurantId(Long catalogRestaurant);

    // 按主键更新值不为null的字段
    int updateByPrimaryKeySelective(Catalog record);

    // 按主键更新
    int updateByPrimaryKey(Catalog record);
}