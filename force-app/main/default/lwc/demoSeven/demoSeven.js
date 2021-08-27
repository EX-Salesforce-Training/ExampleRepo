import { LightningElement, wire } from 'lwc';


export default class DemoSeven extends LightningElement {


    passingUp;
    EventHandler(){
        if(this.passingUp == undefined){
            this.passingUp = 1;
            if(this.template.querySelector('c-demo-six').passingDown == undefined){
                this.template.querySelector('c-demo-six').passingDown = 1;
            } else {
                this.template.querySelector('c-demo-six').passingDown++;
            }
        } else {
            this.passingUp += 1;
            if(this.template.querySelector('c-demo-six').passingDown == undefined){
                this.template.querySelector('c-demo-six').passingDown = 1;
            } else {
                this.template.querySelector('c-demo-six').passingDown++;
            }
        }
    }

}