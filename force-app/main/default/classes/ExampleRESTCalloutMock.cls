@isTest
public class ExampleRESTCalloutMock implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');

        response.setBody('{"date":"2004-11-19","home_team":' +
            '{"city":"Detroit","full_name":"Detroit' +
            ' Pistons"},"home_team_score":"82",' +
            '"visitor_team":{"full_name":' +
            '"Indiana Pacers"},"visitor_team_score":"97"}');

        response.setStatusCode(200);
        return response;
    }
}