// Write an Apex code to create an List of Strings with 6 items 
//     - if this list does not contains 'jon snow'
//         - then insert 'jon snow' at index 4
//     - if it does
//         - remove 'jon snow' and insert it again at index 4


List<String> names=new List<String>{'bub','peter','john','mark','ana','linda'};





Integer jsindex=names.indexOf('jon snow');

    if(names.contains('jon snow')){
        names.remove(jsindex);
        names.add(4, 'jon snow');
    }else if(!names.contains('jon snow')){
 names.add(4,'jon snow');
    }

System.debug(names);