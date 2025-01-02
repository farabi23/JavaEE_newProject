
<%@ page import="java.util.List" %>
<%@ page import="servlets.Tasks" %><%--
  Created by IntelliJ IDEA.
  User: Farabi
  Date: 19/12/2024
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;

        }
        form {
            width: 50%; /* Adjust the width as needed */
            background-color: #f8f9fa; /* Optional: Add a background color */
            padding: 20px; /* Add padding for spacing */
            border-radius: 8px; /* Add rounded corners */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Add a shadow */
        }
    </style>

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: #1f1a61;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Task Manager</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="#">All Tasks</a>

            </div>
        </div>
    </div>
</nav>

<div class="form-container">
<form action="/details" method="post" style="display: flex; flex-direction: column;">
<%
    Tasks task = (Tasks) request.getAttribute("task");
    if(task != null){
%>
    <input type="hidden" name="id" value="<%= task.getId() %>">
    <div>
    <label class="form-label">Name: </label>
        <input class="form-control" type="text" name="name" value="<%=task.getName()%>">
    </div>

    <br>

    <div>
        <label class="form-label">Description: </label>
        <input class="form-control" type="text" name="description" value="<%=task.getDescription()%>">
    </div>

    <br>

    <div>
    <label class="form-label">Deadline: </label>
    <input class="form-control" type="text" name="deadline" value="<%=task.getDeadlineDate()%> ">
    </div>

    <br>

    <div>
        <label class="form-label">Finished: </label>
        <input class="form-control" type="text" name="finished" value=" <%=task.getFinished()%> ">
    </div>
    <br>
    <button class = "btn btn-success" type="submit">Save</button>
</form>

</div>
<div class="form-container">
    <form action="/delete" method="post" style="display: flex; flex-direction: column;">
        <input type="hidden" name="id" value="<%=task.getId()%>">
        <button class="btn btn-danger" type="submit">Delete</button>
    </form>
</div>
    <%
        }
    %>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
