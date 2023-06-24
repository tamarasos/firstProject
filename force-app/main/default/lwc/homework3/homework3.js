
import { LightningElement, wire } from 'lwc';
import getAccountWithAnnualRevenue from '@salesforce/apex/AccountController.getAccountWithAnnualRevenue';

export default class Homework3 extends LightningElement {
    columns = [
        { label: 'Account Name', fieldName: 'Name' },
        { label: 'Annual Revenue', fieldName: 'AnnualRevenue' },
      ]

@wire(getAccountWithAnnualRevenue)
wiredAccount;



}