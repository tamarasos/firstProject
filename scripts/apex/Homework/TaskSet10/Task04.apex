// 4. Create a Lead with required Fields filled up 
//    - insert it into your org 
//    - Create a variable with Task sObject type and assign the value 
//    - fill up the below fields for this task
//       - WhoId with the Id of the lead created above 
//       - Priority 'High'
//       - ActivityDate  Date 7 days from now 


Lead l1 = new Lead ();
l1.LastName = 'mara';
l1.AnnualRevenue= 500000;
l1.City = 'BG';
l1.Company= 'acc';

insert l1;

Task t1= new Task (WhoId= l1.Id, Priority= 'high', ActivityDate=date.today()+7      );
System.debug('t1 value is : ' + t1); 
System.debug('l1 value is : ' + l1); 