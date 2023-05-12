// 


String browserName = 'safari';

switch on browserName{
    when 'safari', 'opera'
    System.debug (browserName);
}
when else {
    System.debug ('invalid');
}

