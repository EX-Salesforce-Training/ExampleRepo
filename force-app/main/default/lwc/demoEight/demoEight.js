import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import NEW_MESSAGE_CHANNEL from '@salesforce/messageChannel/NewMessageChannel__c';

export default class DemoEight extends LightningElement {
    @wire(MessageContext)
    msgContext;

    ButtonPressed(){
        const messageSent = {
            msg: 'Hello there!'
        };
        publish(this.msgContext, NEW_MESSAGE_CHANNEL, messageSent);
    }
}