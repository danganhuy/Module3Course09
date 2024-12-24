import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ProductDiscount", value = "/index5")
public class Exercise5 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("productDiscountCalculator.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));
        float discountAmount = price * discount / 100;
        float discountPrice = price - discountAmount;

        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        writer.println("<head>");
        writer.println("<title>Product Discount</title>");
        writer.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>");
        writer.println("</head>");
        writer.println("<body>");
        writer.println("<h1>" + description + "</h1>");
        writer.println("<p>Giá đã được giảm: " + discountPrice + "</p>");
        writer.println("<p>Tổng lượng chiết khấu: " + discountAmount + "</p>");
        writer.println("</body>");
        writer.println("</html>");
    }
}
