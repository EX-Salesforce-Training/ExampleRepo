import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ACCTOBJ from '@salesforce/schema/Account';
import NAMEFIELD from '@salesforce/schema/Account.Name';

export default class DemoFour extends LightningElement {

    ObjectApiName = ACCTOBJ;
    accName = NAMEFIELD;
    showToast(event){
        let toastEvent = new ShowToastEvent({
            title: "Account Created",
            message: "Account " + accName + " Successfully Made",
            cariant: "success"
        });
        this.dispatchEvent(toastEvent);
    }

}