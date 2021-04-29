///////////////////////////////////////////////////////////////
//
// Name: ShareExampleAccountTrigger
// Author: Harvey Hill, Salesforce Team
// Created: 11/19/19
// Updated: 1/9/20
// Description: In this trigger we perform programmatic sharing 
//	by creating a new record of the related share object.
//
///////////////////////////////////////////////////////////////

trigger ShareExampleAccountTrigger on Account (after update) {
    
    if(trigger.isUpdate) {
        // We create a list of AccountShare records, because we want to operate dml on collections.
        List<AccountShare> acctShr = new List<AccountShare>();
        
        // We iterate over the updated accounts.
        for(Account a:trigger.new) {
            Account oldAcct = trigger.oldMap.get(a.Id);
            // If the owner is different, we share it back to the old owner.
            if(a.ownerId != oldAcct.ownerId ) {
                // We declare a new AccountShare record. 
                AccountShare oldOwner = new AccountShare();
                // We get and add the account record id.
                oldOwner.AccountId = a.Id;
                // We get and add the old owner's id.
                oldOwner.UserOrGroupID = oldAcct.OwnerId;
                // We assign the level of access we want them to have.
                oldOwner.AccountAccessLevel = 'Edit';
                oldOwner.OpportunityAccessLevel = 'Edit';
                // We set the rowcause, in this case we mark it as manual.
                oldOwner.RowCause = Schema.AccountShare.RowCause.Manual;
                // we add the record to the list.
                acctShr.add(oldOwner);
            }
        } 
        // We insert the new share records.
        Database.insert(acctShr);
    }
}