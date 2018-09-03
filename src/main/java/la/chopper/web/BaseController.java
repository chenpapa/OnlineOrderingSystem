package la.chopper.web;

import la.chopper.domain.*;
import la.chopper.util.CommonConstant;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author chentao
 */
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

    /**
     * 保存明细list到session中
     *
     * @param request
     * @param details
     */
    protected void setSessionDetails(HttpServletRequest request, List<Detail> details) {
        request.getSession().setAttribute(CommonConstant.DETAILS_CONTEXT, details);
    }

    protected List<Detail> getSessionDetails(HttpServletRequest request) {
        return (List<Detail>) request.getSession().getAttribute(CommonConstant.DETAILS_CONTEXT);
    }

}
