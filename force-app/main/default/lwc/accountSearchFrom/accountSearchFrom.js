import { LightningElement } from 'lwc';

export default class AccountSearchFrom extends LightningElement {
searchKey='';

accountNameChangeHand(event){
this.searchKey=event.target.value;
    }
    searchClickHandler()

}