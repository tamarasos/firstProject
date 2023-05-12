// // Lead ld1 = Utils.getLead('Snow', 'Nightwatch LLC', true);
// // System.debug('ld1 value is : ' + ld1);

// // Lead ld2 = Utils.getLead('Stark','Stark Industry', false) ; 
// // System.debug('ld2 value is : ' + ld2);


// // List<Lead> myLeads1 = Utils.getLeads('Lannister', 'Westro', true, 4) ; 
// // System.debug('myLeads1 value is : ' + myLeads1);

// // List<Lead> myLeads2 = Utils.getLeads('Smith', 'IMB', false, 2) ; 
// // System.debug('myLeads2 value is : ' + myLeads2);


// // LeadTriggerHandler.handleBeforeInsert( myLeads2  ); 
// // System.debug('myLeads2 value after calling the method is : ' 
// //                                     + myLeads2);

// // Create a list of lead with FirstName, lastName, Company with 2 elements 
// // call the method above to see your result 

// List<Lead> myLeads3 = new List<Lead>(); 
// myLeads3.add( new Lead(FirstName='clark', LastName='Kent',Company='Justice League' )); 
// myLeads3.add( new Lead(FirstName='bruce', LastName='Wayne',Company='Wayne Enterprise' )); 
// myLeads3.add( new Lead(FirstName='diana', LastName='Prince',Company='Amazon' )); 

// // // System.debug('myLeads3 value is : ' + myLeads3);
// // // LeadTriggerHandler.handleBeforeInsert(myLeads3) ; 
// // // System.debug('myLeads3 value after the call is : ' + myLeads3);

// // insert myLeads3 ; 

// List<SelectOption> options = new List<SelectOption>();
// options.add(new SelectOption('A','United States'));
// options.add(new SelectOption('C','Canada'));
// options.add(new SelectOption('A','Mexico'));
// // System.debug('Before sorting: ' + options);
// // options.sort();
// // System.debug('After sorting: ' + options);

// // Decimal bmi= Fitness.calculateBMI(64,1.75);
// // // System.debug('bmi value is : ' + bmi);
// // System.debug('myVar value is : ' + Fitness.calculateBMI(64,1.75).setScale(3));
// // System.debug('Fitness.calculatePace value is : ' + Fitness.calculatePace(15.5,50));



// Pizza p1=new Pizza('s', 2, 3);

// System.debug('p1 value is : ' + p1.totalCost());

// system.debug('Your  ' +  p1.size + '  size pizza with  ' +  p1.numberOfCheeseTopping + ' numberOfCheeseTopping   and  ' + p1.numberOfPepperoniTopping  + ' numberOfPepperoniTopping ' + p1.totalCost() + ' totalCost');


List<Integer> even= new List<Integer>{1,2,3,4,5};
for(Integer each: even){
    if(math.mod(each,2)==0){
        even.add(each);
    }
}
System.debug('even value is : ' + even);


