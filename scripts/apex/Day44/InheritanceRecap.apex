

// THIS WILL NOT WORK , can not create object out of abstract type
// Animal a1 = new Animal('abc',2);

Dog d1 = new Dog('Sharik', 3,'Golden Retriver');
System.debug('d1 value is : ' + d1);

d1.makeNoise();

System.debug('d1.getInfo(\'meat\') value is : ' + d1.getInfo('meat'));

Cat c1=new Cat('Tom', 5, 'yellow');
System.debug('c1 value is : ' + c1);
c1.makeNoise();
System.debug('c1.getInfo(\'Fish\') value is : ' + c1.getInfo('Fish'));

List<Animal> animalLst = new List<Animal>();
//add 2 dogs and 2 cats into this List
//go through each animal
//let it make noise and print out getInfo() result
animalLst.add(new Dog ('Bobik', 3, 'Toy Terrier'));
animalLst.add(new Dog ('Roki', 5, 'German Sheppard'));

animalLst.add(new Cat ('Eva', 2, 'White'));
animalLst.add(new Cat ('Rosi', 3, 'Black'));

for(Animal each : animalLst) {
    System.debug('Current animal : ' + each);
    each.makeNoise();
    System.debug('each.getInfo() value is : ' + each.getInfo('fish'));
    
}
// Car c1 = new Car();
// System.debug('c1 value is : ' + c1);


// List<Car> carLst = new List<Car>();

// // add 2 ElectricCar 
// // add 2 GasCar

// carLst.add(   new ElectricCar('Tesla X', 95000, 10)    ); 
// carLst.add(   new ElectricCar('Lucid Air', 85000, 9)     ); 

// carLst.add(  new GasCar('VW ID4',50000, 2 )     ); 
// carLst.add(  new GasCar('Dodge Charger',60000, 3 )      ); 

// // go through each car and print it out and call drive method 
// for(Car each : carLst) {
//     System.debug('Current car : ' + each);
//     each.drive(); 
// }




// Inheritance is a concept in object-oriented programming where a new class is created from an existing class, inheriting its properties and behaviors. The new class is called the subclass or derived class, while the existing class is called the superclass or base class.

// Inheritance allows for the reuse of code and promotes the principle of don't repeat yourself (DRY). Subclasses can inherit and extend the properties and behaviors of the superclass, making it easier to create new classes with similar functionality.

// For example, if we have a class called Animal with properties such as name, age, and weight, we could create a subclass called Dog that inherits these properties from the Animal class and adds its own properties and behaviors such as breed and bark.

// We use extends keyword to build inheritance relationship. Parent class must be marked as virtual or abstract

// Assuming that's the case, here is how the syntax look like

//    public class Child extends Parent{

//    }
// virtual keyword :
// When used on class:
// It will allow this class to be Super|Parent class
// public virtual class Animal{
//     public String name; 
//     public Integer age;
// }
// public class Dog extends Animal{
//     public String breed; 
// }
// When used on method:
// allow this method to be overriden in the child class methods
// for example if animal class have a method called makeNoise
//  public virtual void makeNoise(){
//     // animal general noise
//  }
// override keyword is used in child class method
// Now in the child class Dog we can override this method by including override keyword in the method header
//  public override void makeNoise(){
//     // dog is making barking noise
//  }
// Constructor
// Constructors are not inherited

// however you can call constructor of super class in the child class using super( parameters goes here)

// you may call other constructors of same class using this(parameters goes here)

// YOU CAN NOT MIX AND MATCH super(..) and this(..)!

//   public virtual class Animal{
//       public String name; 
//       public Integer age;

//       public Animal(){
//           //this.name = 'Unknown Animal';
//           //this.age = 0 ;
//           // calling 2 param constructor of this class
//           this('Unknown Animal',0);
//       }

//       public Animal(String name, Integer age){
//           this.name = name ; 
//           this.age  = age  ; 
//       }
      

//   }
//   public class Dog extends Animal{
//       public String breed;

//       public Dog(String name,Integer age, String breed){
//           super(name, age); 
//           this.breed = breed ; 
//       }

//   }