# Java EE Task Manager

## Overview

This project is a simple **Task Manager** application built using **Java EE**. The application allows users to add, edit, view, and delete tasks.

## Features

- **Add Tasks**: Users can add new tasks with a name, description, deadline, and status.
- **Edit Tasks**: Update existing task details.
- **View Tasks**: Display all tasks in a tabular format.
- **Delete Tasks**: Remove tasks from the list.
- **Bootstrap Integration**: Responsive design with a clean UI.

## Technologies Used

- **Java EE**: For the backend logic and servlet handling.
- **JSP**: For the frontend UI.
- **Bootstrap**: For styling and responsive design.
- **Tomcat Server**: To deploy and run the application.

## Project Structure

```
├── src
│   ├── servlets       # Contains all the Java servlets (e.g., AddTask, EditTask, etc.)
│   ├── tasks          # Contains the model class for tasks
│   └── webapp
│       ├── css        # CSS files
│       ├── js         # JavaScript files (if any)
│       └── jsp        # JSP files (e.g., addtask.jsp, edittask.jsp)
├── pom.xml            # Maven configuration file
└── README.md          # Project documentation
```

## How to Run

### Prerequisites

- **Java JDK 11** or higher
- **Apache Tomcat 10**
- **Maven** installed on your system

### Steps

1. **Clone the Repository**:

   ```bash
   git clone <repository_url>
   cd JavaEE_TaskManager
   ```

2. **Build the Project**:

   ```bash
   mvn clean install
   ```

3. **Deploy to Tomcat**:

   - Copy the generated WAR file from the `target` folder to the `webapps` directory of your Tomcat server.
   - Start the Tomcat server.

4. **Access the Application**:

   - Open your browser and navigate to: http\://localhost:8080/jsptask1

## Usage

- **Add a Task**:
  - Click the "Add Task" button to open a form.
  - Enter the task details and click "Save."
- **Edit a Task**:
  - Click the "Details" button next to a task.
  - Modify the details and click "Save Changes."
- **Delete a Task**:
  - Open the task details and click "Delete."

## Future Improvements

- Add user authentication.
- Implement task categorization.
- Add search and filter functionality.
- Use a database instead of in-memory storage.

##

