public  class SpartanTriggerHandler {

    public static void handleAfterInsert(List<Spartan__c> spList){

        for(Spartan__c  each :  spList ){

          CallOutUtils.createSpartan(each.Name, each.Gender__c, each.Phone__c);
        }

 }
    }
//    public static void handleAfterDelete(List<Spartan__c> sprList){
   
//    CallOutUtils.deleteSpartan(155);
    
//        }


//     @future(callout=true)
//  public static void APICall(String name, String gender, Long phone){

//      CallOutUtils.createSpartan(name, gender, phone);
//  }

//  @future(callout=true)
//  public static void APICallToDel(Integer id){

//      CallOutUtils.deleteSpartan(id);
//  }
  




















