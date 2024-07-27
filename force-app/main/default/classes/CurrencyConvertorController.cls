public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static double convertAmount(String sourceCurrency, String targetCurrency, String amount){
        // try {

        // } catch (Exception e) {
        //     throw new AuraHandledException(e.getMessage());
        // }

            HttpRequest req = new HttpRequest();
            HttpResponse res = new HttpResponse();
            Http http = new Http();
            String todayDate = String.valueOf(System.today());
            String apiKey = System.label.apiLayerKey;
            req.setEndpoint(System.label.apiLayerEndpoint+sourceCurrency+'&to='+targetCurrency+'&amount='+amount+'&date='+todayDate);
            req.setMethod('GET');
            req.setHeader('apiKey', apiKey);
            System.debug('@@ Req' + req);
            res = http.send(req);
            System.debug('@@ Body' + res.getBody());

            Map<String,Object> responsemap = (Map<String,Object>) JSON.deserializeUntyped(res.getBody());
             return (double) responsemap.get('result');
    }
}
