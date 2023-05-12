public class ScheduledTaskCleanUp implements Schedulable  {
  
  

        public void execute(SchedulableContext context){
        List<Task> overDueTask = [SELECT Id, Subject, ActivityDate, Status
        FROM Task
         WHERE ActivityDate < Today];
    List<Task> updateTasks = new List<Task>();
    for(Task each : overDueTask ) {
    each.Status='Completed';
    updateTasks.add(each);  
    }
    if(!updateTasks.isEmpty()){
    update updateTasks;

    }
    
    }
    }
    
    
