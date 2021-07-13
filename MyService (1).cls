@RestResource(urlMapping='/myservice/*')
global with sharing class MyService {


    @HttpGet
    global static list<gkns_Lead__c>  getRecord(){
    list<gkns_Lead__c> rec=[SELECT id,Name from gkns_Lead__c];
    return rec;
    }
    
    
    @HttpPost
    global static void  createNewRecord(String fname,String lname,String company,String email,String phoneno) {
        system.debug(+ fname);
        gkns_Lead__c obj = new gkns_Lead__c();
        obj.Name = fname;
        obj.Last_Name__c= lname;
        obj.Company__c = company;
        obj.Email__c = email;
        obj.Phone__c = phoneno;
        insert obj;
        
    }
}