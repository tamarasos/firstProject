import { LightningElement, wire } from 'lwc';
import getIndustry from '@salesforce/apex/AccountController.getIndustry';

export default class Chalenge extends LightningElement {


    searchKey= '';
    accounts;
    error;

    columns = [
        { label: 'Account Name', fieldName: 'Name' },
        { label: 'Annual Industry', fieldName: 'Industry' },
      ]

    // @wire(getIndustry)
    // wiredAccountsFinancial;

    @wire(getIndustry)
    getDataFromApex( {data , error} ) {  // destructing the result we got from apex into data and error variable using destructing syntax 
        
        if (data) {
            this.accounts = data; 
            this.error = undefined; 
        } else if (error) {
            this.error = error; 
            this.data = undefined; 
        }
    }

    handleSearchKeyChange(event){
        this.searchKey = event.target.value.toLowerCase();
    }

    get filteredAccounts(){
        return this.accounts.filter((each)=>each.Name.toLowerCase().includes(this.searchKey));
    }

}