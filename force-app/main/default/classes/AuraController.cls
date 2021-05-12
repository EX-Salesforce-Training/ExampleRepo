public class AuraController {

    @AuraEnabled
    public static boolean Maybe(String testValue){
        try{
            if(testValue == 'Bob'){
                return true;
            } else {
                return false;
            }
        }catch(exception e){
            throw new AuraHandledException('Something didn\'t work boss!');

        }
    }
}