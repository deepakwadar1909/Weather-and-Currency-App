public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static void methodName(){
        try {

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
