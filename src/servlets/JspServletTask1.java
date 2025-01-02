package servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(value = "/jsptask1")
public class JspServletTask1 extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Tasks> tasks = DBManager.getTasks();
        req.setAttribute("tasks", tasks);


        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
