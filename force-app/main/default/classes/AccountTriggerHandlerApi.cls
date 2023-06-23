public  class AccountTriggerHandlerApi {
  


  public static void handleMethod(List<Account> accList){
APIMethod('test', 'male','0000000000');
  }
@future
  public static void APIMethod(String name, String gender, String phone){
    HttpCalloutApex.HttpCalloutMethodSearch( name,  gender,  phone);
  }
}