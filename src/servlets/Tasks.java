package servlets;

public class Tasks {

    private Long id;
    private String name;
    private String deadlineDate;
    private String description;
    private String finished;


    public Tasks() {

    }

    public Tasks(Long id, String name, String deadlineDate,  String description, String finished) {
        this.id = id;
        this.name = name;
        this.deadlineDate = deadlineDate;
        this.description = description;
        this.finished = finished;

    }

    public String getFinished() {
        return finished;
    }

    public void setFinished(String finished) {
        this.finished = finished;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }
}
