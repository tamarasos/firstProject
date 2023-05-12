// . Write a program that create List of Integer with 10 items
//     get the count of the items more than 5 and
//     break out of the loop if you found 2 @

//     List<Integer> itemsList=new List<Integer> {5,15,25,88,14,2,23,999,25,87};

//     Integer count=0;
//     For(Integer each: itemsList){
//         if(each>5){
//             count++;
//         }

//     }
//     System.debug(count);

//     For(Integer each: itemsList){
//         if(each==2){
//             break;
//         }
// System.debug(each);
//     }

// its supposed to be that to break of the loop if you find 2 numbers that are more than 5

List<Integer> numberList = new List<Integer>{
  93,
  2,
  25,
  3,
  60,
  78,
  10,
  55,
  14,
  66
};

Integer count = 0;
for (Integer each : numberList) {
  // System.debug('Current value : ' + each);

  if (each > 5) {
    count++;
  }

  if (count == 2) {
    break;
  }
}

System.debug('count value is : ' + count);
