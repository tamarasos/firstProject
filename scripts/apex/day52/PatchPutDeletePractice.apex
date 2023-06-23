
//put
Http http= new Http();
HttpRequest request= new HttpRequest();
request.setMethod('PUT');
request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/42');
request.setHeader('Content-Type', 'application/json');
request.setBody('{"name":"Atlante","gender":"Female","phone":4579688654}');

HttpResponse response= http.send(request);
System.debug(response.getStatusCode());
system.debug(response.getBody());


// Http http= new Http();
// HttpRequest request= new HttpRequest();
// request.setMethod('PATCH');
// request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/55');
// request.setHeader('Content-Type', 'application/json');
// request.setBody('{"name": "Meee","gender": "Male","phone": 2277085963}');

// HttpResponse response= http.send(request);
// System.debug(response.getStatusCode());



// Http http= new Http();
// HttpRequest request= new HttpRequest();
// request.setMethod('DELETE');
// request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/38');
// // request.setHeader('Content-Type', 'application/json');
// // request.setBody('"name":"Me","gender":"Female","phone":4579688654}');

// HttpResponse response= http.send(request);
// System.debug(response.getStatusCode());








