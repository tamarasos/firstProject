Similar to above task 
  1. now create two String variables to store firstName and lastName
  2. create a variable called leadCount as Integer and initialize to 5
  2. Create an empty List of String 
  3. using loop generate sample lead email in below format and add it to the list
  
  firstNameValue+lastNameValue_1@force.com
  firstNameValue+lastNameValue_2@force.com
  firstNameValue+lastNameValue_3@force.com
  firstNameValue+lastNameValue_4@force.com
  firstNameValue+lastNameValue_5@force.com
  

//   4. try changing the leadCount and run your code again 


String firstName ='Maki';
String lastName='Peric' ;
Integer leadCount = 5;
List<String> company =new List <String> ();

for(Integer count = 1; count <=leadCount; count++){
    company.add (firstName + count + lastName + count + '_1@force.com');
}
System.debug(company);

















// Similar to above task 
//   1. now create two String variables to store firstName and lastName
String firstName ;
String lastName ;

//   2. create a variable called leadCount as Integer and initialize to 5
Integer leadCount = 5;
//   2. Create an empty List of String 
List<String> emptList = new List<String> ();
//   3. using loop generate sample lead email in below format and add it to the list
  
//   firstNameValue+lastNameValue_1@force.com
//   firstNameValue+lastNameValue_2@force.com
//   firstNameValue+lastNameValue_3@force.com
//   firstNameValue+lastNameValue_4@force.com
//   firstNameValue+lastNameValue_5@force.com
  for(Integer count=1; count<=leadCount;count++){
     emptList.add (firstName+ lastName+ '_'+count + '@force.com');
     
  }

//   4. try changing the leadCount and run your code again 

System.debug('emptList value is : ' + emptList); 