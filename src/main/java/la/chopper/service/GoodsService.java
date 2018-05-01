package la.chopper.service;

import la.chopper.domain.Goods;

import java.util.List;

public interface GoodsService {

    boolean insertGoods(Goods goods);

    List<Goods> selectGoodsBycatalogId(Long catalogId);

    boolean updateGoodsByPrimaryKey(Goods goods);

    Goods selectGoodsByPrimaryKey(Long goodsId);
}
