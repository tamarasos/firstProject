
Bird f1=new Bird();
System.debug('f1 value is : ' + f1);
f1.fly();


Plane f2= new Plane();
f2.fly();


List<Flyable>  flyingThings = new List<Flyable>();
flyingThings.add(f1);
flyingThings.add(f2);

for(Flyable each: flyingThings){
each.fly();


}