package la.chopper.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import java.util.Date;

public class User extends BaseDomain {

    @Pattern(regexp = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\\\d{8}$")
    private String userPhone;

    @Pattern(regexp = "/^([a-zA-Z0-9\\u4e00-\\u9fa5\\·]{1,10})$/")
    private String userName;

    @Pattern(regexp = "(?!^\\\\d+$)(?!^[a-zA-Z]+$)(?!^[_#@]+$).{8,}")
    private String userPassword;

    private Boolean userSex;

    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date userBirthday;

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public Boolean getUserSex() {
        return userSex;
    }

    public void setUserSex(Boolean userSex) {
        this.userSex = userSex;
    }

    //@JsonFormat注解实现json数据显示正确的date格式
    @JsonFormat(pattern = "yyyy-MM-dd")
    public Date getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

}