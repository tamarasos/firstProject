//  between 0-100 find out the numbers that can be divisible by 15 and create a list of these numbers
// // if a number can be divided by 3 and 5 it can be divided by 15


// List<Integer> numberList = new List<Integer> ();
// for(Integer i=1; i<=100; i++){
//     if(Math.mod(i, 3)==0 && Math.mod(i, 5)==0){

//         numberList.add(i);
//     }
// }
// System.debug('numberList value is : ' + numberList); 


//reverse a given string do not use reverse method

// String str = 'Neslihan';

// String reversed= '';

// String newString = str.substring(0,5);
// // newString value is : Nesli


// System.debug('newString value is : ' + newString); 

// for(Integer i=str.length( )-1; i>=0; i--){

//    reversed+=str.substring(i, i+1);
// }

// System.debug('reversed value is : ' + reversed); 


// str=str.reverse();
// System.debug('str value is : ' + str); 

//write a program to print true if the string "cat" and "dog" appear the same number of times in the given sentence
//Ex:
//      sentence = "caT dog dogG cAt"
//      output:true



String sentence = 'caT dog dog cAt';
Integer numCats=0, numDog=0;
List<String> newString = new List<String> ();
newString= sentence.split(' ');

System.debug('newString value is : ' + newString); 

for(String each : newString){
    if(each.equalsIgnoreCase('cat')){
        numCats++;

    }else if (each.equalsIgnoreCase('dog')){
    numDog++;
}
}
System.debug('numDog value is : ' +( numCats==numDog)); 