import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/demoFive.getAccounts';
import getContacts from '@salesforce/apex/demoFive.getContacts';

export default class DemoFive extends LightningElement {

    contact;

    @wire(getAccounts)
    accList;

    @wire(getAccounts)
    DoAccounts({error, data}){
        if(data){

        }else if(error){

        }
    }

    @wire(getContacts, {conid: '0035e00000D2YGuAAN'})
    DoContacts({error, data}){
        if(data){
            this.contact = data.LastName + ', ' + data.FirstName;
        }else{
            console.log(error);
        }
    }

}