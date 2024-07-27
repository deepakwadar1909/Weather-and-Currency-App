public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static void convertAmount(String sou){
        try {

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
