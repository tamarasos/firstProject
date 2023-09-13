import { LightningElement, api, wire } from "lwc";
import CASE_NUMBER_FIELD from "@salesforce/schema/Case.CaseNumber";
import STATUS_FIELD from "@salesforce/schema/Case.Status";
// You can import parent fields as well using same syntax as formula field or soql
import ACC_NAME_FIELD from "@salesforce/schema/Case.Account.Name";
import { getFieldValue, getRecord } from "lightning/uiRecordApi";

// this component is meant to only be used in case record page 
// or anywhere the recordId can be passed from outside
export default class Practice27 extends LightningElement {
	// we will get recordId from record page directly 
    @api recordId;
    // based on recordId get the the entire case object and whatever fields you need 
    @wire(getRecord, {
        recordId: '$recordId',
        fields: [CASE_NUMBER_FIELD, STATUS_FIELD,ACC_NAME_FIELD]
    })
    caseRecord; 

    get caseNumber() {
        return getFieldValue(this.caseRecord.data, CASE_NUMBER_FIELD);
    }

    get caseStatus() {
        return getFieldValue(this.caseRecord.data, STATUS_FIELD);
    }
    
    // getter for getting parent account name field from case record
    get accName() {
        return getFieldValue(this.caseRecord.data, ACC_NAME_FIELD);
    }
}