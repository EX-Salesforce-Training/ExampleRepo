global class ExampleSOAPService {

    webservice static String createAccount(String aName){
        Account bob = new Account(name = aName);
        database.SaveResult sr =  database.insert(bob);
        if(sr.isSuccess()){
            return 'Succussfully created ' +bob.name+ ' Account';
        } else {
            return 'Failed to create new account.';
        }
    }
}