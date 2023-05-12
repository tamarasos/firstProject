// Write a program that store List of Double with 10 items 
//    break out of the loop if any number is between 50.5 and 99.99 

   List<Double> myList=new List<Double> {2.55,6.88,9.77,5.14,50.89,1.77,7.88,6.44,99.88,7.11};

   for(Double each:myList){

    if(each>50.5 && each<99.99){
       
        break;
    }
    System.debug(each);
   }