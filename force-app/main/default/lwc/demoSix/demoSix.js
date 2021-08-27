import { api, LightningElement } from 'lwc';

export default class DemoSix extends LightningElement {

    @api
    passingDown;

    HandleButton(){
        this.dispatchEvent(new CustomEvent('button'));
    }
}