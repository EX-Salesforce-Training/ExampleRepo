// Rest resources must be global, and have the @RestResource annotation. 
// The annotation is followed by the URL mapping, basically where any 
// requests need to be sent. We define this here.
@RestResource(urlMapping='/Contact/*')
global class ExampleRESTService {
    
    //Rest methods likewise must be global, Static, and use the correct 
    //annotation for what service is being exposed.
    //These are:
    //	@HttpDelete, deletes designated resource.
    //	@HttpGet, returns designated resource.
    //	@HttpPatch, updates designated resource.
    //	@HttpPost, creates a new resource.
    //	@HttpPut, creates or updates a designated resource.
    @HttpGet
    global static Contact doGet() {
        // We get the context
        RestRequest restReq = RestContext.request;
        // We get the id of the resource being requested
        String contactId = restReq.requestURI.substring(restReq.requestURI.lastIndexOf('/')+1);
        // We use that id to query for the information we want to expose.
        // In this case we are exposing some basic details, 
        // first and last names, and the phone number.
		Contact restResult = [SELECT Id, LastName, Phone, FirstName FROM Contact WHERE Id = :contactId];
        // We return what we found to the requester.
        return restResult;
    }

}
