import { LightningElement } from "lwc";
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Practice23 extends LightningElement {

    objectApiName = ACCOUNT_OBJECT; 
    // get your own org valid record Id
    recordId = '001Dn00000OsZB5IAN'; 

    handleSuccess(event) {

        const showToastEvent = new ShowToastEvent({
            title: 'Successfully Updated',
            message: 'You have Updated account successfully ' + event.detail.id,
            variant: 'success'
        }); 

        this.dispatchEvent(showToastEvent);
    }  

}