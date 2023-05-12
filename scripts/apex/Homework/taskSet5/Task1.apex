// Write a program than create List of Double with 10 elements 
//    print out the first value and last value of the list 
//    if first item and last item values are equal 
//    print 'end with what we started '
//    else 'print' different beginning and ending 
//     HINT : No Loop Needed Here

List<Double> numList = new List<Double> {91,44,22,58,56,99,28,66,58,91};

Double index= numList.get(0);
// System.debug(numList.get(0));

System.debug(numList.get( numList.size()-1));
Double lastValue= numList.get( numList.size()-1);
Double firstValue=numList.get(0);
if(firstValue==lastValue){
    System.debug('end with with what we started');

}else{
    System.debug('differente beggining and ending');
}