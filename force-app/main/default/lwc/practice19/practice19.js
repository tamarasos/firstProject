import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
import { LightningElement , wire} from "lwc";
export default class Practice19 extends LightningElement {

    searchInput = 'GenePoint'; 

    handleSearchChange(event) {
        this.searchInput = event.target.value; 
    }


    // wire the result of getAccountByName 
    // into property called theAccount
    @wire(getAccountByName, {accName:'$searchInput'} )
    theAccount; 

    // getting the prettified string version
    // of wired value of theAccount
    // fo better understanding what we got
    get theAccountInStr() {
        return JSON.stringify(this.theAccount, null, 2); 
    }
    /**
     {
        "data": {
            "Id": "001Dm00000BNUqeIAH",
            "Name": "GenePoint",
            "AnnualRevenue": 30000000
        }
     }
     */

    
    // person = {
    //     firstName : 'Ahmed',
    //     lastName : 'A',
    //     age: 18, 
    //     company: {
    //         name: 'Tesla',
    //         state: 'Texas'
    //     }
    // }; 
    
    // get prettyPerson() {
    //     return JSON.stringify(this.person, null, 2);
    // }


}