// Write an Apex code that create List or Array of 5 String values
//    - add the word sf+index at the end of each element
//    - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
//    - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}

List<String> starWarsCharacters = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};
System.debug('starWarsCharacters Before value is : ' + starWarsCharacters); 
// starWarsCharacters Before value is : (Anakin, Obivan, Yoda, Windu, Ahsoka)
//    - add the word sf+index at the end of each element

for(Integer i=0; i<starWarsCharacters.size() ;i++) {
   String newValue = starWarsCharacters.get(i)+' sf'+(i+1) ; 
   starWarsCharacters.set(i, newValue  ); 
}
//    - `{'Anakin','Obivan','Yoda','Windu','Ahsoka'}` =>
//    - `{'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}`
System.debug('starWarsCharacters After value is : ' + starWarsCharacters); 
// starWarsCharacters After value is : (Anakin sf1, Obivan sf2, Yoda sf3, Windu sf4, Ahsoka sf5)



Or

ist<String> names=new List<String> {'admin','developer','sdet','ba','architect','marketing','cloud','security','admin','admin2'};

for(Integer i=0; i<=names.size()-1; i++){
    String each= names.get(i);
    each=each+'sf'+(i+1);
    names.set(i, each);
}
System.debug('names value is : ' + names); 