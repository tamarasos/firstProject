trigger AccountBillingShipping on Account (before insert) {



   // 1. Write a trigger on Account, when an account is inserted, 
   //automatically account billing address should populate into the account shipping address.

for(Account each:Trigger.new){
    if(each.BillingCity!=null && each.BillingCountry!=null && each.BillingState!=null){
        each.ShippingCity=each.BillingCity;
        each.ShippingCountry=each.BillingCountry;
        each.ShippingState=each.BillingState;
    }
   
}



}

//public class AccountTriggerHandler


// AccountTriggerHandler.handleBeforeInsert(Trigger.new);
//public static void handleBeforeInsert(List<Account>accList){
    
// for(Account each:Trigger.new  //accList){
//     if(each.BillingCity!=null && each.BillingCountry!=null && each.BillingState!=null){
//         each.ShippingCity=each.BillingCity;
//         each.ShippingCountry=each.BillingCountry;
//         each.ShippingState=each.BillingState;
//     }
   
// }

// }

//