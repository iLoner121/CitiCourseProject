package entity;

import java.util.LinkedList;
import java.util.List;

public class OrderMgr {

  public static List<Order> orderList = new LinkedList<Order>();

  static {
    orderList.add(new Order("湖南省，长沙市", "岳麓区麓山南路", "边耐政", "410082", 1, "啥东西也不是"));
  }

  public List<Order> getOrderList() {
    return orderList;
  }

  public static void addOrder(Order order) {
    orderList.add(order);
  }
}
