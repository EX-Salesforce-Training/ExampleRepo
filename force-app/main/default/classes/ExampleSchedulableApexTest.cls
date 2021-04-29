///////////////////////////////////////////////////////////////
//
// Name: ExampleSchedulableApexTest
// Author: Ben Learn, Salesforce Team
// Created: 06/29/20
// Updated: 04/29/21
// Description: Test class for example for use of the schedulable interface
// 	and asynchonous apex.
//
///////////////////////////////////////////////////////////////

@isTest
private class ExampleSchedulableApexTest {
	@isTest
    static void testScheduledContact(){
        // when testing schedulable Apex, we still have to pass a CRON expression to the System.schedule() method
        // but because Test.stopTest() will execute our asynchronous method synchronously, the time we specify
        // by our expression is irrelevant

        // but, here we write a CRON expression that would execute at 5:15 PM on the third Friday of every month
        String cronString = '0 15 17 ? * 6#3';

        // again, any asynchronous calls that we make between Test.startTest() and Test.stopTest() will be executed
        // synchronously once we get to Test.stopTest()
        Test.startTest();

        // to schedule Apex, we call the System.schedule() method, passing a name for the scheduled job, a CRON 
        // expression, and an instance of our schedulable class
        String jobId = System.schedule('New Contact', cronString, new ExampleSchedulableApex());
        Test.stopTest();

        // assert that we have a contact created by our schedulable Apex
        List<Contact> testCons = [SELECT Id, Name FROM Contact WHERE LastName='New Contact'];
        System.assertEquals(1, testCons.size());
    }
}