// @isTest
// public class TaskTriggerTest {
 
// @isTest
// public static void taskTest(){
//     Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
//     User u=new User();
  
//    u.Username= 'standard user' + DateTime.now().getTime() + '@testorg.com';
//    u.LastName='Sosevic';
//     u.Alias='TS';
//     u.Title='Mrs';
//     u.Email='tamara@sos.com';
//     // u.Nickname='jocinaMama';
//     u.username='0814jovan@skljoca.com';
//     u.ProfileId=p.Id;
//     u.TimeZoneSidKey = 'America/Los_Angeles';
//     u.LocaleSidKey='en_US';
//     u.EmailEncodingKey = 'UTF-8';
//     u.LanguageLocaleKey='en_US';
    

// insert u;
          
    

// //     List<Task> taskList= new List<Task> ();
// // taskList.add(new Task(Subject='Test', Priority='Low', Status='In Progress'));
// // taskList.add(new Task(Subject='Tes1t', Priority='High', Status='In Progress'));

// // insert taskList;


// Task t = new Task(
//             Subject = 'Test Task',
//             WhoId = UserInfo.getUserId(),
//             Status = 'Not Started',
//             Priority = 'Normal',
//             ActivityDate = Date.today() + 1
//         );

// System.runAs(u){

// test.startTest();
// delete t;
// test.stopTest();

// // Assert.areEqual(2,taskList.size());



// t = [SELECT Id FROM Task WHERE Id = :t.Id];
//             System.assert(t != null, 'Task should not have been deleted.');
//             System.assert(!t.IsDeleted, 'Task should not have been deleted.');
//             //System.assert(!t.Error.isEmpty(), 'Expected error message.');
//     }

@isTest
private class TaskTriggerTest {
    static testMethod void testOnlySystemAdminCanDeleteTask() {
        // Create a test user with a non-admin profile.
        Profile p = [SELECT Id FROM Profile WHERE Name='System Administrator'];
        User u = new User(
  
        Alias='TS',
            FirstName = 'Test',
            LastName = 'User',
            Email = 'testuser@test.com',
            Username = 'testuser@test29.com',
            ProfileId = p.Id,
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            EmailEncodingKey = 'UTF-8',
            LanguageLocaleKey = 'en_US'
        );
        insert u;

        // Create a test task.
        Task t = new Task(
            Subject = 'Test Task',
           // WhoId = UserInfo.getUserId(),
            Status = 'Not Started',
            Priority = 'Normal',
            ActivityDate = Date.today() + 1
        );
        insert t;

        // Set the test user as the current user.
        System.runAs(u) {
            // Attempt to delete the task.
            Test.startTest();
            delete t;
            Test.stopTest();

            // Verify that the task was not deleted and an error was added.
            t = [SELECT Id FROM Task WHERE Id = :t.Id];
            System.assert(t != null, 'Task should not have been deleted.');
            System.assert(!t.IsDeleted, 'Task should not have been deleted.');
            //System.assert(!t.Errors.isEmpty(), 'Expected error message.');
        }
    }
}















