package la.chopper.domain;

public class Goods extends BaseDomain {
    private Long goodsId;

    private Long goodsCatalogId;

    private String goodsCatalogName;

    private String goodsName;

    private String goodsPic;

    private Long goodsPrice;

    private Long goodsDiscount;

    private Boolean goodsStatus;

    private Boolean goodsIsDeleted;

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Long getGoodsCatalogId() {
        return goodsCatalogId;
    }

    public void setGoodsCatalogId(Long goodsCatalogId) {
        this.goodsCatalogId = goodsCatalogId;
    }

    public String getGoodsCatalogName() {
        return goodsCatalogName;
    }

    public void setGoodsCatalogName(String goodsCatalogName) {
        this.goodsCatalogName = goodsCatalogName == null ? null : goodsCatalogName.trim();
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public String getGoodsPic() {
        return goodsPic;
    }

    public void setGoodsPic(String goodsPic) {
        this.goodsPic = goodsPic == null ? null : goodsPic.trim();
    }

    public Long getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Long goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Long getGoodsDiscount() {
        return goodsDiscount;
    }

    public void setGoodsDiscount(Long goodsDiscount) {
        this.goodsDiscount = goodsDiscount;
    }

    public Boolean getGoodsStatus() {
        return goodsStatus;
    }

    public void setGoodsStatus(Boolean goodsStatus) {
        this.goodsStatus = goodsStatus;
    }

    public Boolean getGoodsIsDeleted() {
        return goodsIsDeleted;
    }

    public void setGoodsIsDeleted(Boolean goodsIsDeleted) {
        this.goodsIsDeleted = goodsIsDeleted;
    }
}