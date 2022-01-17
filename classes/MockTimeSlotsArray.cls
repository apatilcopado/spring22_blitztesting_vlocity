@RestResource(urlMapping='/timeslotsarray/*')
 global class MockTimeSlotsArray
  {
    @HttpGet
    global static void getTimeslots() {
    
     String jSONString = ' {"slots": [ { "careProviderId":"0bSxx0000000001EAA", "timeSlots":[ { "externalSlotId": "20f879e3456", "slotEnd": "2022-06-04T00:00:00Z", "slotStart": "2022-06-03T23:00:00Z" }, { "externalSlotId": "28ccc202345", "slotEnd": "2022-06-04T00:15:00Z", "slotStart": "2022-06-03T23:15:00Z" }]}, { "careProviderId":"0bSxx1110000001EAA", "timeSlots":[ { "externalSlotId": "20f879e3456", "slotEnd": "2023-06-04T00:00:00Z", "slotStart": "2023-06-03T23:00:00Z" }, { "externalSlotId": "28ccc202345", "slotEnd": "2023-06-04T00:15:00Z", "slotStart": "2023-06-03T23:15:00Z" } ]}, { "careProviderId":"0bSxx2220000001EAA", "timeSlots" :[ { "externalSlotId": "20f879e3456", "slotEnd": "2024-06-04T00:00:00Z", "slotStart": "2024-06-03T23:00:00Z" }, { "externalSlotId": "28ccc202345", "slotEnd": "2024-06-04T00:15:00Z", "slotStart": "2024-06-03T23:15:00Z" } ]}, { "careProviderId":"0bSxx3333000001EAA", "timeSlots":[ { "externalSlotId": "20f879e3456", "slotEnd": "2025-06-04T00:00:00Z", "slotStart": "2025-06-03T23:00:00Z" }, { "externalSlotId": "28ccc202345", "slotEnd": "2025-06-04T00:15:00Z", "slotStart": "2025-06-03T23:15:00Z" } ]} ] }';
     Map<String, Object> mapJSON =  (Map<String, Object>)JSON.deserializeUntyped(jSONString);
     RestContext.response.addHeader('Content-Type', 'application/json');
     RestResponse res = RestContext.response;
        
    if (res == null) {
        res = new RestResponse();
        RestContext.response = res;
        
    }
    try {
        res.responseBody = Blob.valueOf(JSON.serialize(mapJSON));
        //res.responseBody = Blob.valueOf(jSONString);

        res.statusCode = 200;
    } catch (Exception e) {
        res.responseBody = Blob.valueOf(
                String.valueOf(e) + '\n\n' + e.getStackTraceString()
                );
        res.statusCode = 500;
    }

           
   
    }
}