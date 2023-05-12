public abstract class Animal1 {

 public String name;
 public String breed;
 public String size;
public Integer age;

 public Animal1(String name,String breed, Integer age, String size ){
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.size= size;
    }

public  abstract void eat();
   
    

public void move(){
    System.debug(name + 'is moving'); 

}


 
}