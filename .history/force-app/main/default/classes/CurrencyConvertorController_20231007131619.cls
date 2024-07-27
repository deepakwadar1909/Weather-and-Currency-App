public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static void convertAmount(String sourceCurrency, String targetCurrency, String amount){
        // try {

        // } catch (Exception e) {
        //     throw new AuraHandledException(e.getMessage());
        // }

            HttpRequest req = new HttpRequest();
            HttpResponse res = new HttpResponse();
            Http http = new Http();
            String todayDate = String.valueOf(System.today());
            String apiKey = System.label.apiLayerKey;
            req.setEndpoint(System.label.apiLayerEndpoint+sourceCurrency+'&to='+targetCurrency+'&target='+amount+'&date='+todayDate);
            req.setMethod('GET');
            req.setHeader('apiKey', apiKey);
            res = http.send(req);
            System.debug('@@ Body' + res.getBody());
    }
}
