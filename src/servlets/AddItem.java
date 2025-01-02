package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/addItem")
public class AddItem extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("additem.jsp").forward(req, resp);

        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        int amount = Integer.parseInt(req.getParameter("amount"));


        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        item.setAmount(amount);

        //DBManager.addItem(item);

    }

}
