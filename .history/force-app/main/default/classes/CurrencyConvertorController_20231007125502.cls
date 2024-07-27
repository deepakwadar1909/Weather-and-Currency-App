public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static void convertAmount(String sourceCurrency, String targetCurrency, String amount){
        try {

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
