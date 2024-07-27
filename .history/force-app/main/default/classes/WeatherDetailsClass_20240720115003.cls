public class WeatherDetailsClass {

    @AuraEnabled
    public static WeatherDetailsWarapper getWeatherDetails(String cityName){
        //Fram the Endpoint URL
        String apiKey = '1cfcca79f9df7bbdafacf299f9583607';
        String endpoint = 'http://api.openweathermap.org/data/2.5/weather';
        endpoint += '?q'+cityName;
        endpoint += '&units=metric';
        endpoint += '&APPID='+apiKey;
        system.debug('endPoint URL '+endpoint);

        //callout to Weather API
        Http http = new http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        system.debug('res '+res+ ' body '+JSON.deserializeUntyped(res.getBody()));

        //return the weather details in wrapper form
        WeatherDetailsWarapper weatherDet = new WeatherDetailsWarapper();
        if(res.getStatusCode() == 200){
            Map<String,object> result = (Map<String,object>)JSON.deserializeUntyped(res.getBody());
            weatherDet.city = String.valueOf(result.get('name'));
            Map<String,object> mainResult = (Map<String,object>)(result.get('main'));
            weatherDet.temprature = String.valueOf(mainResult.get('temp'));
            weatherDet.pressure = String.valueOf(mainResult.get('pressure'));
            weatherDet.humidity = String.valueOf(mainResult.get('humidity'));
            weatherDet.feelsLike = String.valueOf(mainResult.get('feelsLike'));
            weatherDet.tempMin = String.valueOf(mainResult.get('tempMin'));
            weatherDet.tempMax = String.valueOf(mainResult.get('tempMax'));
        }
        system.debug('weatherDet '+weatherDet);
        return weatherDet;
    }

    //Wrapper class to store weather details in serial manner
    public class WeatherDetailsWarapper{
        @AuraEnabled public String city {get;set;}
        @AuraEnabled public String temprature {get;set;}
        @AuraEnabled public String pressure {get;set;}
        @AuraEnabled public String humidity {get;set;}
        @AuraEnabled public String feelsLike {get;set;}
        @AuraEnabled public String tempMin {get;set;}
        @AuraEnabled public String tempMax {get;set;}
    }
}
