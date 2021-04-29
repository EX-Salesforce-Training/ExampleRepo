@isTest
private class QueueableExample_Test {
	@isTest
    static void testQueueableExample() {
        Test.startTest();
        System.enqueueJob(new QueueableExample());
        Test.stopTest();
		System.assertEquals(1, [SELECT COUNT() FROM AsyncApexJob WHERE 
			JobType='Queueable' AND Status='Completed']);
    }
}