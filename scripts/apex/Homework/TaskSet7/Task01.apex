// // Write an Apex code that create List or Array of 10 Integer values. 
// //    - remove duplicate and print it out 
// //    - print out the unique item count and difference between total list item count

// Integer[] numbers = new Integer[]{85,37,021,57,088,77,25,25,33,99};

// Set<Integer> numbers2 = new Set<Integer>(numbers);

// // numbers2.add(YourValueHere); 

// System.debug(numbers2);
// //removed duplicated and printed
// System.debug(numbers2.size());
// //unique item count
// Integer difference=numbers.size()-numbers2.size();


// System.debug(difference);


String sentence='tamara is my friend';

  List<String> reversed= sentence.split(' ');
  List<String> empty= new List<String> ();
    for(Integer i<reversed.size()-1; i>0; i--){
        String each=reversed.get(i);
        empty.add(each);
    }
    System.debug('myVar value is : ' + empty);
    