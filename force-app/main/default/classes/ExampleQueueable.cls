///////////////////////////////////////////////////////////////////
//
// Name: Example Queueable
// Author: Ben Learn, Salesforce Tech Team
// Created: 
// Updated: 4/29/21
// Description: Example of the queueable interface with 
//              asynchronous apex. 
//
////////////////////////////////////////////////////////////////////


public class QueueableExample implements Queueable {
    public void execute(QueueableContext qc) {
        Account acc = new Account(Name='Test');
        Integer numJobs = [SELECT COUNT() FROM AsyncApexJob WHERE 
			JobType='Queueable'];
        if((numJobs < 2) && !Test.isRunningTest()){
            System.enqueueJob(new QueueableExample());
        }
    }
}