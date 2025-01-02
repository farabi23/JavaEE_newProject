package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value="/updateTask")
public class UpdateTaskServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));

        Tasks task = DBManager.getTask(id);

        // sets the attritbute to give to html or jsp
        // in this case we want to give the Item class to detail servelet, show it
        // first the name to use for html, then the actual thing that we are naming to give to html
        req.setAttribute("task", task);
        req.getRequestDispatcher("detail.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Long id = Long.parseLong(req.getParameter("id"));
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String deadline = req.getParameter("deadline");
        String finished = req.getParameter("finished");

        Tasks task = DBManager.getTask(id);
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadline);
        task.setFinished(finished);
        DBManager.addTask(task);

        resp.sendRedirect("index.jsp");

    }


}
