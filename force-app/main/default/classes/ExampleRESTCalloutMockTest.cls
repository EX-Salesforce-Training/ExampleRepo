@isTest
private class ExampleRESTCalloutMockTest {
  @isTest
    static void testInterfaceMock(){
        Test.setMock(HttpCalloutMock.class, new ExRESTCalloutMock());
        String testInfo = ExRESTCallout.makeCallout();
        System.assertEquals('On 11/19/2004, the Indiana Pacers beat the ' + 
            'Detroit Pistons by a score of 97 to 82 in Detroit.', testInfo);
    }
}
