@isTest
public  class HttpCalloutApexMockCallout  implements HttpCalloutMock{
  

//implement this interface method
public HttpResponse respond(HttpRequest request){
    //create fake response
    HttpResponse response = new HttpResponse();
    response.setHeader('Content-Type', 'application/json');
    response.setBody('"name": "JoshL","gender": "Male","phone": 1234567890}');
    response.setStatusCode(200);
    return response;
}



}