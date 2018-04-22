package la.chopper.domain;

import java.util.Date;

public class Common extends BaseDomain {
    private Long commonId;

    private Long commonGoods;

    private Long commonUser;

    private String commonContent;

    private Date commonDate;

    public Long getCommonId() {
        return commonId;
    }

    public void setCommonId(Long commonId) {
        this.commonId = commonId;
    }

    public Long getCommonGoods() {
        return commonGoods;
    }

    public void setCommonGoods(Long commonGoods) {
        this.commonGoods = commonGoods;
    }

    public Long getCommonUser() {
        return commonUser;
    }

    public void setCommonUser(Long commonUser) {
        this.commonUser = commonUser;
    }

    public String getCommonContent() {
        return commonContent;
    }

    public void setCommonContent(String commonContent) {
        this.commonContent = commonContent == null ? null : commonContent.trim();
    }

    public Date getCommonDate() {
        return commonDate;
    }

    public void setCommonDate(Date commonDate) {
        this.commonDate = commonDate;
    }

}