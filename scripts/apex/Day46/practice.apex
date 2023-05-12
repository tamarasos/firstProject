// Square s = new Square('Box' ,  10) ; 
// s.calculateArea();
// System.debug('s value is : ' + s);

// AggregateResult abc  =  [SELECT Count(Id) total FROM Account]; 
// // Integer count =  abc.get('total');

// Electronics e1=new Phones('Iphone', 9999.99, 123);
// System.debug('e1 value is : ' + e1);
// e1.displayInfo();
// e1.value();
// System.debug('e1.value() value is : ' + e1.value());

// Electronics e2=new Laptop('hp', 123.55, 123);
// System.debug('e2 value is : ' + e2);
// e2.displayInfo();
// e2.value();
// System.debug('e2.value() value is : ' + e2.value());



// List<Electronics> elecList= new List<Electronics>();
// elecList.add(new Phones('sam', 222.1, 45));
// elecList.add(new Phones('motorola', 589.66, 156));
// elecList.add(new Laptop('Dell', 5890.10, 128));
// elecList.add(new Laptop('hp', 5120.1, 256));

// for(Electronics each: elecList){
// each.displayInfo();
// each.value();



// if( each instanceof Laptop ){
//         System.debug('FOUND Laptop!!!!'); 
//         // casting from type Shape to type Circle
//         // this is called downcasting => from parent type to sub type 
//           Laptop l1=(Laptop) each;
//   l1.code();
        

           
     
//        // Phones p= (Phones) each ; 
//         //p.call(); 
//     }
//     if( each instanceof Phones ){
//         System.debug('FOUND Laptop!!!!'); 
//         // casting from type Shape to type Circle
//         // this is called downcasting => from parent type to sub type 
// //           Laptop l1=(Laptop) each;
// //   l1.code();
        
//        Phones p= (Phones) each ; 
//         p.call(); 
//     }

// }

IPhone i = new IPhone('x', 999.11, 123654, 'bla');
System.debug('i value is : ' + i);
System.debug('i.value() value is : ' + i.value());

i.call();
i.displayInfo();








