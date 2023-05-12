public class ScheduledCaseCleanUp implements Schedulable {
//     3. AW Computing want to schedule this batch process to run in certain intervals. 
//     - Create a class ScheduledCaseCleanUp that implements Schedulable 
//     - implement the execute abstract method 
//     - inside method body
//       - Create an instance of CaseProcessor
//       - call Database.execute method and pass above object to the method
 
//  4. Either in your anon-apex file or in the SetUp of your org, schedule ScheduledCaseCleanUp to run weekly every Friday night 12AM. (edited)
 
public void execute(SchedulableContext context){

CaseProcessor cs= new CaseProcessor();
Database.executeBatch(cs);




}



}