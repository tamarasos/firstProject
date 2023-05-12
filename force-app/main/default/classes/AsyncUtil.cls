public  class AsyncUtil {
   


    /**
     * Create a static void method called boilWater
     * simply print boiling water 
     * Add @future annotation on top of the method
     */


@future
  public  static  void boilWater(){
System.debug('Boiling water extencivly'); 

  }

  @future
  public static void updateCurrentUserRoleToCfo(){

    Id userId = UserInfo.getUserId(); 
User u = [SELECT Id, FirstName, Division FROM USER 
            WHERE Id = :userId]; 
// update division field to Education 
// // u.Division = 'Education' ; 
// update u ; 

UserRole roleCFO= [select id, name from UserRole where name='CFO'];
u.UserRoleId=roleCFO.Id;
update u;
  }



}