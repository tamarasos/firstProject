// 7. Create a List of 10 String with your own values
//    - create a Integer variable called randomIndex
//    - assign the value to random Integer between (between 0-9)
//    - use above index to print out the value at that index

List<String> names=new List<String> {'joca','skljoca','marko','sarko','barko','pera','laza','mika','lika','vika'};

Integer randomIndex=3;
for(Integer i=0; i<names.size();i++){
        Integer randomIndex=8;
        if(randomIndex==3){
            names.get(randomIndex);
        }
      
}

System.debug(names.get(randomIndex));  


ovako


List<String> strList = new List<String>{'item1','item2','item3','item4','item5','item6','item7','item8','item9', 'item10'};
Integer randomIndex=(math.random()*9).intValue();
System.debug('strList.get(randomIndex) value is : ' + strList.get(randomIndex)); 
