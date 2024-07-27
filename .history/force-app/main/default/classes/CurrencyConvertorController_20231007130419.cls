public with sharing class CurrencyConvertorController {

    @AuraEnabled
    public static void convertAmount(String sourceCurrency, String targetCurrency, String amount){
        // try {

        // } catch (Exception e) {
        //     throw new AuraHandledException(e.getMessage());
        // }

            HttpRequest request = new HttpRequest();
            request.setEndpoint(endPointUrl);
            request.setMethod('GET');
            request.setHeader('Authorization', authorizationHeader);

            Http http = new Http();
            HTTPResponse response = http.send(request);
            Integer statusCode = response.getStatusCode();
            if(200 == statusCode) {
                string responseBody = response.getBody();
            } else {
                System.debug('statusCode '+statusCode);
            }
    }
}
