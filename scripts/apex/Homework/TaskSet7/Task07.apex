//  Write an Apex code that create List or Array of 5 String values
//    - Create a String variable called joinedText
//    - Loop through all the items and append one item after another into
//  joinedText variable separated by hyfen(-) and last item should not have -
//    - Example : Your list {'This','is','The','Way','Student'}
//      - value of joinedText 'This-is-The-Way-Student'


List<String> names=new List<String>{'mark','ana','peter','sara','linda'};

String joinedText='';
for(Integer i=0; i<names.size();i++){
    String each=names.get(i);
    if(i==names.size()-1){
        joinedText+=each;
    }else {

        joinedText+=each + '-';
    }
}
System.debug('joined text value is: ' + joinedText);


ili


 List<String> names=new List<String> {'admin','developer','sdet','ba','architect','admin2'};
 String joinedText= string.join(names, '-');

System.debug('joinedText value is : ' + joinedText); 
