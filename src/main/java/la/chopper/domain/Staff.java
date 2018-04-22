package la.chopper.domain;

import javax.validation.constraints.Pattern;

public class Staff extends BaseDomain {

    private Long staffId;

    @Pattern(regexp = "/^([a-zA-Z0-9\\u4e00-\\u9fa5\\·]{1,10})$/")
    private String staffName;

    @Pattern(regexp = "(?!^\\\\d+$)(?!^[a-zA-Z]+$)(?!^[_#@]+$).{8,}")
    private String staffPassword;

    private Long staffRestaurant;

    private Boolean staffAuthority;

    public Long getStaffId() {
        return staffId;
    }

    public void setStaffId(Long staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName == null ? null : staffName.trim();
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword == null ? null : staffPassword.trim();
    }

    public Long getStaffRestaurant() {
        return staffRestaurant;
    }

    public void setStaffRestaurant(Long staffRestaurant) {
        this.staffRestaurant = staffRestaurant;
    }

    public Boolean getStaffAuthority() {
        return staffAuthority;
    }

    public void setStaffAuthority(Boolean staffAuthority) {
        this.staffAuthority = staffAuthority;
    }
}