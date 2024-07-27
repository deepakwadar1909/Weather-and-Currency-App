public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static void convertAmount(){
        try {

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
