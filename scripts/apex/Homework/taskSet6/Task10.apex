// Create a Array of 10 Integers 
//   - print 'ideal numbers' if it contains both 10 and 5 
//   - print 'Good numbers' if it contains 10 
//   - print 'Ok numbers' if it contains 5
//   - print 'Not so Good numbers' if it does not contain 10 and 5 (edited)


Integer[] numbers = new Integer[]{16,87,80,23,86,5,23,11,97,45};



  if (numbers.contains(5) && numbers.contains(10)) {
  System.debug('Ideal numbers');
} else if (numbers.contains(10)) {
  System.debug('Good numbers');
} else if (numbers.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}

