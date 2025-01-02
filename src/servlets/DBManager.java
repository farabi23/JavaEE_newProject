package servlets;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class DBManager {

    private static Long id = 5L;
    private static List<Tasks> taskList = new ArrayList<>();

   static {
       taskList.add((new Tasks(1L, "Clean house", "31.10.2026", "General cleaning to all the rooms", "Yes")));
       taskList.add((new Tasks(2L, "Wash car", "26.09.2026", "Wash it thoroughly and accurately", "Yes")));
       taskList.add((new Tasks(3L, "Finish homework", "31.12.2024", "Need to finish all the homework", "Yes")));
       taskList.add((new Tasks(4L, "Meet with friends", "12.04.2025", "Meet Dancho, Sancho and of course Sarancho", "Yes")));
   }

   static List<Tasks> getTasks() {
       return taskList;
   }
   static void addTask(Tasks task) {
       task.setId(id);
       taskList.add(task);
       id++;
   }

   public static Tasks getTask(Long id) {
       Tasks foundTask = null;

       for (Tasks task : taskList) {
           if (task.getId().equals(id)) {
               foundTask = task;
           }
       }
       return foundTask;
   }

    public static ArrayList<Tasks> getAllTasks() {
           ArrayList<Tasks> allTasks = new ArrayList<>();
           for (Tasks task : taskList) {
               allTasks.add(task);
           }
           return allTasks;
    }

    public static void deleteTask(Long id) {
        Tasks foundTask = null;

        for (Tasks task : taskList) {
            if (task.getId() == id) {
                foundTask = task;
            }
        }
        if (foundTask != null) {
            taskList.remove(foundTask);
        }

    }

    public static void updateTask(Tasks task) {
        for (int i = 0; i < taskList.size(); i++) {
            if (taskList.get(i).getId().equals(task.getId())) {
                taskList.set(i, task);
                break;
            }
        }
    }

}
