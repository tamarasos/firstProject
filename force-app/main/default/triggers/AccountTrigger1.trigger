trigger AccountTrigger1 on Account (before update, after update) {
if(Trigger.isAfter && Trigger.isUpdate){
    AccountTrigger1Handler.afterUpdate(Trigger.new, Trigger.oldMap);
}
    


}