package la.chopper.domain;

public class Detail extends BaseDomain {
    private Long orderId;

    private Long goodsId;

    private String goodsName;

    private Long goodsPrice;

    private Long goodsDiscount;

    private Byte goodsCount;

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
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

    public Byte getGoodsCount() {
        return goodsCount;
    }

    public void setGoodsCount(Byte goodsCount) {
        this.goodsCount = goodsCount;
    }

}