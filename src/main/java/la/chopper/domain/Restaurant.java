package la.chopper.domain;

/**
 * @author chentao
 */
public class Restaurant extends BaseDomain {
    private Long restaurantId;

    private String restaurantName;

    private String restaurantPassword;

    private String restaurantPhone;

    private String restaurantAddress;

    private String restaurantLogo;

    private Integer restaurantTable;

    public Long getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(Long restaurantId) {
        this.restaurantId = restaurantId;
    }

    public String getRestaurantPassword() {
        return restaurantPassword;
    }

    public void setRestaurantPassword(String restaurantPassword) {
        this.restaurantPassword = restaurantPassword == null ? null : restaurantPassword.trim();
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName == null ? null : restaurantName.trim();
    }

    public String getRestaurantPhone() {
        return restaurantPhone;
    }

    public void setRestaurantPhone(String restaurantPhone) {
        this.restaurantPhone = restaurantPhone == null ? null : restaurantPhone.trim();
    }

    public String getRestaurantAddress() {
        return restaurantAddress;
    }

    public void setRestaurantAddress(String restaurantAddress) {
        this.restaurantAddress = restaurantAddress == null ? null : restaurantAddress.trim();
    }

    public String getRestaurantLogo() {
        return restaurantLogo;
    }

    public void setRestaurantLogo(String restaurantLogo) {
        this.restaurantLogo = restaurantLogo == null ? null : restaurantLogo.trim();
    }

    public Integer getRestaurantTable() {
        return restaurantTable;
    }

    public void setRestaurantTable(Integer restaurantTable) {
        this.restaurantTable = restaurantTable;
    }
}