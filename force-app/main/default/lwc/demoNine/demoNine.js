import { LightningElement, wire } from 'lwc';
import { subscribe, MessageContext } from 'lightning/messageService';
import NEW_MESSAGE_CHANNEL from '@salesforce/messageChannel/NewMessageChannel__c'

export default class DemoNine extends LightningElement {
    subscription = null;
    @wire(MessageContext) 
    msgContext;

    msg;

    LikeAndSubscribe() {
        this.subscription = subscribe(this.msgContext, NEW_MESSAGE_CHANNEL, (message) => this.HandleMessage(message));
    }

    HandleMessage(message){
        this.msg = message.msg;
    }

    connectedCallback(){
        this.LikeAndSubscribe();
    }
}