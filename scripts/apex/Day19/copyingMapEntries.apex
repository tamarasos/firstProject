
 Map<String, Decimal> priceMap = new Map<String, Decimal>{
                                                        'Apple' => 5.75,
                                                        'Orange' => 4.99,
                                                        'Grape' => 8.99,
                                                        'Strawberry' => 10.59,
                                                        'Banana' => 2.5
 };


Map<String, Decimal> priceMapCopy = new Map<String, Decimal>( priceMap );
                                      
System.debug('priceMapCopy value is : ' + priceMapCopy); 

Map<String, Decimal> priceMapCopy2 = new Map<String, Decimal>();
 priceMapCopy2.putAll(priceMap);




