public  class Bird1 extends Animal1 implements Flyable1 {

    public Bird1(String name,String breed, Integer age, String size ){
      super(name,breed,age,size);
    }

    public override void eat(){
    System.debug(name + 'is eating bird food'); 
    
}

    public  void fly(){

System.debug(name + 'is flying');

}

public void chirp(){

System.debug(name + 'is chirping');

}
public void peck(){

System.debug(name + 'is pecking');

}

  
}