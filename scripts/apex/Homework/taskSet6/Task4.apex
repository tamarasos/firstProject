// Write an Apex code to create List of 10 String with some duplicates values


// - Find the count of times 'Iron Man' showed up 

List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};


Integer count=0;

for(String each : heroList) {
   if( each=='Spiderman'){
    count++;
   }
   
    
}
  
     System.debug( count);