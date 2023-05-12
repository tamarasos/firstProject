public  class Lion extends Animal1{

    public Lion(String name,String breed, Integer age, String size ){
        super(name,breed,age,size);
    }
    
    public override void eat(){
    System.debug(name + 'is eating people'); 
    
}
    public void roar(){

System.debug(name + 'is roaring');

}

public void hunt(){

System.debug(name + 'is hunting');

}


  
}