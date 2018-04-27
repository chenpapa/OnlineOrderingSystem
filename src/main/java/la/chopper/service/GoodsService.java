package la.chopper.service;

import la.chopper.domain.Goods;
import la.chopper.mapper.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService {

    private GoodsMapper goodsMapper;

    @Autowired
    public void setGoodsMapper(GoodsMapper goodsMapper) {
        this.goodsMapper = goodsMapper;
    }

    /**
     * 插入新的菜品记录
     *
     * @param goods
     * @return
     */
    public boolean insertGoods(Goods goods) {
        return (goods != null && goodsMapper.insert(goods) >= 0);
    }

    /**
     * 返回菜系的所有菜品
     *
     * @param catalogId
     * @return
     */
    public List<Goods> selectGoodsBycatalogId(Long catalogId) {
        if (catalogId >= 0) {
            return goodsMapper.selectGoodsByCatalogId(catalogId);
        } else {
            return null;
        }
    }

    /**
     * 更新菜品信息
     *
     * @param goods
     * @return
     */
    public Boolean updateGoodsByPrimaryKey(Goods goods) {
        if (goods != null && goods.getGoodsId() >= 0) {
            if ((goodsMapper.selectByPrimaryKey(goods.getGoodsId())).getGoodsIsDeleted()) {
                return false;
            } else {
                if (goodsMapper.updateByPrimaryKey(goods) >= 0) {
                    return true;
                } else {
                    return false;
                }
            }
        }
        return false;
    }

    public Goods selectGoodsByPrimaryKey(Long goodsId) {
        if (goodsId == null) {
            return null;
        } else {
            return goodsMapper.selectByPrimaryKey(goodsId);
        }
    }
}
