@isTest
global class ExampleSOAPServiceMock implements WebServiceMock {
  global void doInvoke( Object stub, 
                        Object request, 
                        Map<String,Object> response,
                        String endpoint, 
                        String soapAction, 
                        String requestName,
                        String responseNamespace, 
                        String responseName, 
                        String responseType) {

        ExampleApexCodeFromWSDL.createAccountResponse_element responseElement =
        new ExampleApexCodeFromWSDL.createAccountResponse_element();
    responseElement.result = 'This is an example';
    response.put('response_x', responseElement);
  }
}
