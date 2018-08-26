package la.chopper.domain;

/**
 * @author chentao
 */
public class Catalog extends BaseDomain {
    private Long catalogId;

    private Long catalogRestaurant;

    private String catalogName;

    private Boolean catalogIsDeleted;

    public Long getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(Long catalogId) {
        this.catalogId = catalogId;
    }

    public Long getCatalogRestaurant() {
        return catalogRestaurant;
    }

    public void setCatalogRestaurant(Long catalogRestaurant) {
        this.catalogRestaurant = catalogRestaurant;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName == null ? null : catalogName.trim();
    }

    public Boolean getCatalogIsDeleted() {
        return catalogIsDeleted;
    }

    public void setCatalogIsDeleted(Boolean catalogIsDeleted) {
        this.catalogIsDeleted = catalogIsDeleted;
    }

}