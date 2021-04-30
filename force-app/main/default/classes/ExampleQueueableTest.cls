@isTest
private class ExampleQueueableTest {
	@isTest
    static void testQueueableExample() {
        Test.startTest();
        System.enqueueJob(new ExampleQueueable());
        Test.stopTest();
		System.assertEquals(1, [SELECT COUNT() FROM AsyncApexJob WHERE 
			JobType='Queueable' AND Status='Completed']);
    }
}