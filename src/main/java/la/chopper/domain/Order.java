package la.chopper.domain;

import java.util.Date;

/**
 * @author chentao
 */
public class Order extends BaseDomain {
    private Long orderId;

    private Long orderRestaurant;

    private Long orderUser;

    private Integer orderTable;

    private Long orderStaff;

    private Date orderDate;

    private Boolean orderStatus;

    private Long orderTotal;

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Long getOrderRestaurant() {
        return orderRestaurant;
    }

    public void setOrderRestaurant(Long orderRestaurant) {
        this.orderRestaurant = orderRestaurant;
    }

    public Long getOrderUser() {
        return orderUser;
    }

    public void setOrderUser(Long orderUser) {
        this.orderUser = orderUser;
    }

    public Integer getOrderTable() {
        return orderTable;
    }

    public void setOrderTable(Integer orderTable) {
        this.orderTable = orderTable;
    }

    public Long getOrderStaff() {
        return orderStaff;
    }

    public void setOrderStaff(Long orderStaff) {
        this.orderStaff = orderStaff;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Boolean getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Boolean orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Long getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(Long orderTotal) {
        this.orderTotal = orderTotal;
    }

}