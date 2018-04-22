package la.chopper.web;

import la.chopper.domain.Catalog;
import la.chopper.domain.Restaurant;
import la.chopper.domain.Staff;
import la.chopper.domain.User;
import la.chopper.utils.CommonConstant;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletRequest;
import java.util.Set;

public class BaseController {
    protected static final String ERROR_MSG_KEY = "errorMsg";

    /**
     * 保存用户对象到Session中
     *
     * @param request
     * @param user
     */
    protected void setSessionUser(HttpServletRequest request, User user) {
        request.getSession().setAttribute(CommonConstant.USER_CONTEXT,
                user);
    }

    /**
     * 获取保存在Session中的用户对象
     *
     * @param request
     * @return
     */
    protected User getSessionUser(HttpServletRequest request) {
        return (User) request.getSession().getAttribute(CommonConstant.USER_CONTEXT);
    }

    /**
     * 保存员工对象到Session中
     *
     * @param request
     * @param staff
     */
    protected void setSessionStaff(HttpServletRequest request, Staff staff) {
        request.getSession().setAttribute(CommonConstant.STAFF_CONTEXT,
                staff);
    }

    /**
     * 获取保存在Session中的员工对象
     *
     * @param request
     * @return
     */
    protected Staff getSessionStaff(HttpServletRequest request) {
        return (Staff) request.getSession().getAttribute(CommonConstant.STAFF_CONTEXT);
    }

    /**
     * 保存餐厅对象到Session中
     *
     * @param request
     * @param restaurant
     */
    protected void setSessionRestaurant(HttpServletRequest request, Restaurant restaurant) {
        request.getSession().setAttribute(CommonConstant.RESTAURANT_CONTEXT,
                restaurant);
    }

    /**
     * 获取保存在Session中的餐厅对象
     *
     * @param request
     * @return
     */
    protected Restaurant getSessionRestaurant(HttpServletRequest request) {
        return (Restaurant) request.getSession().getAttribute(CommonConstant.RESTAURANT_CONTEXT);
    }

    /**
     * 保存菜系对象到Session中
     *
     * @param request
     * @param catalog
     */
    protected void setSessionCatalog(HttpServletRequest request, Catalog catalog) {
        request.getSession().setAttribute(CommonConstant.CATALOG_CONTEXT,
                catalog);
    }

    protected Catalog getSessionCatalog(HttpServletRequest request) {
        return (Catalog) request.getSession().getAttribute(CommonConstant.CATALOG_CONTEXT);
    }

    protected void setSessionTableNum(HttpServletRequest request, int tableNum) {
        request.getSession().setAttribute(CommonConstant.TABLENUM_CONTEXT, tableNum);
    }

    protected Integer getSessionTableNum(HttpServletRequest request) {
        return (Integer) request.getSession().getAttribute(CommonConstant.TABLENUM_CONTEXT);
    }

    protected void setSessionTableSet(HttpServletRequest request, Set<Integer> tableSet) {
        request.getSession().setAttribute(CommonConstant.TABLESET_CONTEXT, tableSet);
    }

    protected Set<Integer> getSessionTableSet(HttpServletRequest request) {
        return (Set<Integer>) request.getSession().getAttribute(CommonConstant.TABLESET_CONTEXT);
    }


    /**
     * 获取基于应用程序的url绝对路径
     *
     * @param request
     * @param url     以"/"打头的URL地址
     * @return 基于应用程序的url绝对路径
     */
    public final String getAppbaseUrl(HttpServletRequest request, String url) {
        Assert.hasLength(url, "url不能为空");
        Assert.isTrue(url.startsWith("/"), "必须以/打头");
        return request.getContextPath() + url;
    }
}
