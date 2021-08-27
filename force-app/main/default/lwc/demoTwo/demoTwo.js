import { api, LightningElement } from 'lwc';

export default class DemoTwo extends LightningElement {

    @api
    bob


    connectedCallback() {
        setTimeout(() => {
            console.log(this.template.querySelector('c-demo-one').greetingOne);
        }, 0);
    }

    renderedCallback(){

    }

    disconnectedCallback(){

    }

    errorCallback(){

    }

}