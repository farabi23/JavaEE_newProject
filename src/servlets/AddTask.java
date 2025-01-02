package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/addtask")
public class AddTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("addtask.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String deadline = (req.getParameter("deadline"));
        String description = (req.getParameter("description"));

        Tasks task = new Tasks();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadline);
        task.setFinished("No");

        DBManager.addTask(task);

        resp.sendRedirect("/jsptask1");
    }
}
