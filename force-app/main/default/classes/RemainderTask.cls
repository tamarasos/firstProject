public  class RemainderTask implements Schedulable{
  
    public void execute(SchedulableContext context){

List<Opportunity> oppList= [select  closeDate, StageName
from Opportunity 
where isClosed = false and CloseDate <TODAY ];


List<Task> taskList= new List<Task> ();
if(oppList.isEmpty()){
    return;
}
for(Opportunity each: oppList){
taskList.add(new Task(Subject='Remainder', WhatId=each.Id));
}

if(!taskList.isEmpty()){
insert taskList;
    }
}


}