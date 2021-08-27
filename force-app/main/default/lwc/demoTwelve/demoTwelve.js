import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/demoFive.getAccounts';

export default class DemoTwelve extends LightningElement {

    contact;

    @wire(getAccounts)
    accList;

    @wire(getAccounts)
    DoAccounts({error, data}){
        if(data){

        }else if(error){

        }
    }
}