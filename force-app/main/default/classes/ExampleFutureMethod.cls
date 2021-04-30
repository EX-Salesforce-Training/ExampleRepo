///////////////////////////////////////////////////////////////////
//
// Name: Example Future Method
// Author: Ben Learn, Salesforce Tech Team
// Created: 
// Updated: 4/29/21
// Description: Example of the @future annotation with 
//              asynchronous apex. 
//
////////////////////////////////////////////////////////////////////

public with sharing class ExampleFutureMethod {
    
    @future
    public static void FutureExample(){
        PermissionSet ps = new PermissionSet(Name='ExampleSet', Label='Example Label');
        insert ps;
    }

    public static void ExampleInvoker(){
        FutureExample();
        system.debug([SELECT name FROM PermissionSet WHERE name = 'ExampleSet']);
        Account a = new Account(name='Bob\'s Account');
        insert a;
        List<PermissionSet> permList = [SELECT name FROM PermissionSet WHERE name = 'ExampleSet'];
        List<Account> aList = [SELECT name FROM Account WHERE name = 'Bob\'s Account'];
        system.debug(permList + ' ' + aList);
    }
}
