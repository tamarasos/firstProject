/**  Car as Parent
 *     fields : 
            model
            price
 *     constructor :      
           2 parameter constructor to set model and price 
       methods : 
        drive

    // ElectricCar
 *     fields : 
            batteryCapacity
 *     constructor :      
           3 parameters constructor to set model, price and batteryCapacity
    // GasCar
 *     fields : 
            tankCapacity
 *     constructor :      
           3 parameters constructor to set model, price and tankCapacity

 Build parent child relationship between Car-GasCar  Car-ElectricCar
*/

ElectricCar c1= new ElectricCar('Tesla x', 95000, 5);
System.debug('c1 value is : ' + c1);
c1.drive();
c1.recharge();

// ElectricCar c2= new ElectricCar('Lucid ', 85000, 8);
// System.debug('c2 value is : ' + c2);
// c2.drive();

GasCar c3= new GasCar('Toyota Corolla', 25000,2);
System.debug('c3 value is : ' + c3);
c3.drive();
c3.fillUpGas();








// OnlineStudent o2 = new OnlineStudent('Deaton','F',201, 900800700);
// // System.debug('o2 value is : ' + o2);
//  LocalStudent l2 = new LocalStudent(); 
// // System.debug('l2 value is : ' + l2);

// List<Student> studentLst = new List<Student>(); 
// studentLst.add(o2); 
// studentLst.add(l2) ; 

// System.debug('studentLst value is : ' + studentLst);

// LocalStudent l3 = new LocalStudent('Jon','Smith',101, 7); 
// System.debug('l3 value is : ' + l3);

// OnlineStudent o1 = new OnlineStudent(); 
// o1.firstName = 'Esra';
// o1.lastName = 'B' ; 
// o1.studentId = 100 ; 


// o1.meetingId = 987654321 ; 
// System.debug('o1 value is : ' + o1);
// o1.study() ; 

// LocalStudent l1 = new LocalStudent(); 
// l1.firstName = 'Ilaha' ; 
// l1.lastName = 'H'; 
// l1.studentId = 101 ;
// l1.seatId  = 5 ; 
// System.debug('l1 value is : ' + l1);
// l1.study();  