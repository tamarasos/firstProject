public virtual  class Phones extends Electronics implements Callable {

   protected Integer phoneNumber ;

    public Phones(String name, Decimal price, Integer phoneNumber){
      super(name, price) ;
      this.phoneNumber = phoneNumber ;
    }


    public virtual override void displayInfo(){

System.debug ('This phone name is   '  + this.name  + 
     'price is  '  + this.price   );
    }

    public virtual  override Decimal value(){
     return this.price= this.price *2 ;
    }

    public virtual void call(){
        System.debug('Phone is callable electronics value is : ');
        
    }
}