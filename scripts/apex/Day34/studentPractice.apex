//Account a = new Account(Name='Apex acc', Rating='Hot');

// Student s1 = new Student('Ilaha','H',100); 

Student s1 = new Student(); 
System.debug('s1 value is : ' + s1);


Student s2 = new Student(); 
System.debug('s2 value is : ' + s2);

Student s3=new Student('ja','ti',3);
System.debug('s3 value is : ' + s3);

House h1=new House();
System.debug('h1 value is : ' + h1);

House h2= new House('Victorian');
System.debug('h2 value is : ' + h2);

House h3=new House();

Student s4 = new Student('Abbas', 'M', 101); 
s4.study() ;   //Abbas Study 
s4.study(5) ;  //Abbas Study 5 hours


List<Student> studentLst = new List<Student>(); 

studentLst.add(  new Student('Abbas', 'M', 101)    ) ; 
studentLst.add(  new Student('Shay', 'A', 102)    ) ; 
studentLst.add(  new Student('Cavidan', 'M', 103)    ) ; 
studentLst.add(  new Student('Gurkan', 'D', 104)    ) ; 
studentLst.add(  new Student('Neslihan', 'K', 105)    ) ; 


System.debug('studentLst value is : ' + studentLst);