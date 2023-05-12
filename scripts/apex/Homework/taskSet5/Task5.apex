//  Write a program that create List of Id with 10 items and use 2 different loop 
// //  (for loop and for each loop )to print out all value for practice 
// continue from above
//      if the any ID match exactly '001xxxxxxxxxxxxxxx' 
//      then break out of the loop


List<Id> oppList=new List<Id> {'0068W00000ZJnXzQAL','0068W00000ZJnXzQPL','0068W00000ZJnXzQSL','0068W00000ZJnXzQCL','0068W00000ZJnXzQBL'};
 for(Id each: oppList){
if (each=='0068W00000ZJnXzQCL' ){
        break;

 }
    System.debug(each);

 }

 
for(Integer i=0; i<accountIds.size(); i++){
    ID each= accountIds.get(i);
    if(each=='0018W0000251OK6QAB'){
        break;
    }
    System.debug(each);
}
 