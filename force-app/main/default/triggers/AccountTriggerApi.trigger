trigger AccountTriggerApi on Account (after insert) {


    AccountTriggerHandlerApi.handleMethod(Trigger.new)
;





}