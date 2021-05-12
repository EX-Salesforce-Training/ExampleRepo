@isTest
private class ExampleRESTCalloutResourceTest {
    @isTest
    static void testStaticResourceMock(){
        StaticResourceCalloutMock srcMock = new StaticResourceCalloutMock();
        srcMock.setStaticResource('staticresourcemock');
        srcMock.setStatusCode(200);
        srcMock.setHeader('Content-Type', 'application/json');

        Test.setMock(HttpCalloutMock.class, srcMock);
        String testInfo = ExampleRESTCallout.makeCallout();
        System.assertEquals('On 11/19/2004, the Indiana Pacers beat the ' +
            'Detroit Pistons by a score of 97 to 82 in Detroit.', testInfo);
    }
}