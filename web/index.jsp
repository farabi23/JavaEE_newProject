<%@ page import="servlets.Item" %>
<%@ page import="java.util.List" %>
<%@ page import="servlets.Tasks" %><%--
  Created by IntelliJ IDEA.
  User: Farabi
  Date: 19/12/2024
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        .modal-dialog {
            max-width: 60%;

        }
        .modal-content {
            overflow-y: auto; /* Add scrolling for long content */
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

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Add Task +
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">New Task</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form action="/addtask" method="post">
            <div class="modal-body">

                    <label class="form-label">Name: </label>
                    <input class="form-control" type="text" name="name">

                    <label class="form-label">Description: </label>
                    <textarea rows = "10" class="form-control" type="text" name="description"></textarea>

                    <label class="form-label">Deadline: </label>
                    <input class="form-control" type="date" name="deadline" >

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Add Task</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!--Tasks task = (Tasks) request.getAttribute("task");-->

<%
    List<Tasks> tasks = (List<Tasks>) request.getAttribute("tasks");
%>

<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Deadline</th>
        <th scope="col">Finished</th>
        <th scope="col">Details</th>
    </tr>
    </thead>

    <tbody>
    <%
        if(tasks != null){
            for(Tasks task2: tasks){

   %>
    <tr>
        <th scope="row"> <%=task2.getId()%> </th>
        <td> <%=task2.getName()%> </td>
        <td> <%=task2.getDeadlineDate()%> </td>
        <td> <%=task2.getFinished()%> </td>
        <td>
            <button
                    type="button"
                    class="btn btn-primary"
                    >
                <a style="color: white" href="/details?id=<%=task2.getId()%>">Details</a>
            </button>
        </td>
    </tr>

    <%
            }

        }
    %>


    </tbody>
</table>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
