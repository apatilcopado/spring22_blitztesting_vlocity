@RestResource(urlMapping='/careproviders/*')
 global class MockCareProviders
  {
    @HttpGet
    global static void getProviders() {
    
     String careProvidersJSONString = '{"careProviders":[{"providerId":"0bSxx0000000001EAA","providerName":"Tom Johnson","serviceTerritoryId":"3242342","appointmentTypeCode":"ATC01","serviceTypeCode":"STC01"},{"providerId":"0bSxx1110000001EAA","providerName":"Tyra Dhilon","serviceTerritoryId":"3242343","appointmentTypeCode":"ATC01","serviceTypeCode":"STC01"},{"providerId":"0bSxx2220000001EAA","providerName":"Andy Smith","serviceTerritoryId":"3242344","appointmentTypeCode":"ATC02","serviceTypeCode":"STC01"},{"providerId":"0bSxx3333000001EAA","providerName":"Cindy Baker","serviceTerritoryId":"3242345","appointmentTypeCode":"ATC02","serviceTypeCode":"STC01"}]}';
     Map<String, Object> mapJSON =  (Map<String, Object>)JSON.deserializeUntyped(careProvidersJSONString);

     RestContext.response.addHeader('Content-Type', 'application/json');
     RestResponse res = RestContext.response;
        
    if (res == null) {
        res = new RestResponse();
        RestContext.response = res;
        
    }
    try {
        //res.responseBody = Blob.valueOf(JSON.serialize(mapJSON));
        res.responseBody = Blob.valueOf(careProvidersJSONString);

        res.statusCode = 200;
    } catch (Exception e) {
        res.responseBody = Blob.valueOf(
                String.valueOf(e) + '\n\n' + e.getStackTraceString()
                );
        res.statusCode = 500;
    }

           
   
    }
}