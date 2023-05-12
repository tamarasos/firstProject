//  Write an Apex code that create List of 10 Integer values as scoreList
//     - get the count of numbers less than 0 or greater than 100
//     - in separate loop, update the value of items as below
//       - if the Integer less than 0 update it to 0 
//       - if the Integer more than 100 update it to 100
//     - HINT : Array syntax is much simpler when it comes to update

    List<Integer> scoreList = new List<Integer> {11,-8,45,96,84,-75,36,-10000,89,101};
    Integer count=0;
    for(Integer each: scoreList){
        if(each<0 || each>100){
            count++;
        }
    }
    System.debug('count value is : ' + count); 

    for(Integer i=0; i<scoreList.size(); i++){
    Integer each= scoreList.get(i);

    if(each<0){
        scoreList.set(i,0);

    }else if (each>100){
        scoreList.set(i,100);
    }
    }
    System.debug('scoreList value is : ' + scoreList); 


    or


    List<Integer> numberList = new List<Integer>{010,081,0015,305,78,580,690,120,-32,45};

Integer count=0;
for(Integer each: numberList){
    if(each<0 || each>100){
        count++;
    }
}
System.debug('count value is : ' + count); 

for(Integer i=0; i<numberList.size(); i++){
    Integer each= numberList.get(i);
    if(each<0){
        numberList.set(numberList.indexOf(each),0);
    }else if(each>100){
        numberList.set(numberList.indexOf(each),100);
    }
}
System.debug('numberList value is : ' + numberList); 