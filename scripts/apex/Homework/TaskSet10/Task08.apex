// Create a Contact variable and assign value along with below fields 
//    - LastName, Birthdate
//    - insert it into Salesforce 
//    - check if today is the birthday of this Contact according to Birthdate field value
//       - print 'It's your Birthday Today, Tada! '
//       - else print 'It's not your Birthday Today'
//       - Hint : birthday means the date has same month and year as Today's date


Contact c1 = new Contact ();
c1.LastName='blabla';
c1.Birthdate = Date.newInstance(1992, 02, 27);
insert c1;
date today= date.today();

if(c1.Birthdate.day()==today.day()&&
c1.Birthdate.month()==today.month() ) {
    System.debug('its your birthday'); 
}else {
    System.debug('its not your birthday'); 
}