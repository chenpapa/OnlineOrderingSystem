package la.chopper.service.impl;

import la.chopper.domain.Common;
import la.chopper.mapper.CommonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl {

    private CommonMapper commonMapper;

    @Autowired
    public void setCommonMapper(CommonMapper commonMapper) {
        this.commonMapper = commonMapper;
    }

    /**
     * 查询菜品的评论
     *
     * @param commonGoods goodsId，逻辑外键
     * @return Common
     */
    public Common selectCommonByCommonGoods(Long commonGoods) {
        return commonMapper.selectCommonByCommonGoods(commonGoods);
    }

    /**
     * 插入新的评论
     *
     * @param common
     * @return
     */
    public boolean insertCommon(Common common) {
        if (common != null && commonMapper.insert(common) >= 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 删除评论By主键
     *
     * @param commonId
     * @return
     */
    public boolean deleteCommonById(Long commonId) {
        if (commonId != null && commonMapper.deleteByPrimaryKey(commonId) >= 0) {
            return true;
        } else {
            return false;
        }
    }
}
