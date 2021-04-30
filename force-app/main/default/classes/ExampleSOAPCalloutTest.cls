@isTest
private class ExampleSOAPCalloutTest {
  @isTest
  static void testSOAPCallout(){
    Test.setMock(WebServiceMock.class, new ExampleSOAPServiceMock());
    // call method that performs callout
    // assert that the response from the mock callout is 'This is an example'
  }
}
