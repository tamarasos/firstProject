public  class GasCar extends Car {

   public Integer tankCapacity;

public GasCar(String model,Decimal price, Integer tankCapacity){

super(model, price);
this.tankCapacity=tankCapacity;
}



public override void drive (){

    System.debug('Car '+ this.model + ' is driving on Gas'); 

}


 /**
     * Add a method called fillUpGas 
     * accept no param , return nothing 
     * simply print out -- CarModelHere is filling up gas
     */


     public void fillUpGas(){

        System.debug( this.model + ' is filling up gas'); 
        
    }
}