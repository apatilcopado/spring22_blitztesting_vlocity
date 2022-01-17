@RestResource(urlMapping='/account/update/*')
 global class MockUpdateAccountInformation
  {
    @HttpPost
    global static String doPost(String FirstName,
        String LastName, String Email) {
        
               return 'SUCCESS MOCK001 '+email;
            }

           
   }