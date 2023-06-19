import entity.Order;
import entity.OrderMgr;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "OrderServlet", value = "/OrderServlet")
public class OrderServlet extends HttpServlet {

  protected void doPost(HttpServletRequest request,
      HttpServletResponse response)
      throws ServletException, IOException {
    String province = request.getParameter("province");
    if (province.equals("1")) {
      province = "湖南";
    } else if (province.equals("2")) {
      province = "湖北";
    } else if (province.equals("3")) {
      province = "河南";
    } else if (province.equals("4")) {
      province = "河北";
    }
    String city = request.getParameter("city");
    if (city.equals("1")) {
      city = "长沙";
    } else if (city.equals("2")) {
      city = "湘潭";
    } else if (city.equals("3")) {
      city = "株洲";
    } else if (city.equals("4")) {
      city = "宁乡";
    }
    String street = request.getParameter("street");
    String recipient = request.getParameter("recipient");
    String postcode = request.getParameter("postCode");
    String invoice = request.getParameter("invoice");
    int choose = 0;
    if (invoice.equals("yes")) {
      choose = 1;
    }
    String product = request.getParameter("product");
    Order order = new Order(province + "，" + city, street, recipient, postcode, choose, product);
    System.out.println(order);
    OrderMgr.addOrder(order);
    request.getRequestDispatcher("orderList.jsp").forward(request,response);
  }

  protected void doGet(HttpServletRequest request,
      HttpServletResponse response)
      throws ServletException, IOException {

  }
}
