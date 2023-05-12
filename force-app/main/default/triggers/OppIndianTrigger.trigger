trigger OppIndianTrigger on Opportunity (before update) {

//when opp is updated to closed lost and reason is not populated than throw an error saying 'please populate reason'
Set<id> oppId= new Set<Id> ();
for(Opportunity each: Trigger.new){
    Opportunity old= Trigger.oldMap.get(each.Id);
if(each.StageName!=old.StageName && each.StageName=='Closed Lost' && each.Description==null){
oppId.add(each.Id);
}
}


List<Opportunity> oppList= [select id, stageName, description from Opportunity where id in :oppId];


for(Opportunity each: oppList){
    
}
}