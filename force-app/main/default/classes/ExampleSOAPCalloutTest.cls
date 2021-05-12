@isTest
private class ExampleSOAPCalloutTest {
  @isTest
  static void testSOAPCallout(){
    Test.setMock(WebServiceMock.class, new ExampleSOAPServiceMock());

    ExampleApexCodeFromWSDL.ExampleSOAPService bobsSOAP = new ExampleApexCodeFromWSDL.ExampleSOAPService();
    
    String bobResult = bobsSoap.createAccount('Bob');
    
    system.assertEquals('This is an example',bobresult);
  }
}