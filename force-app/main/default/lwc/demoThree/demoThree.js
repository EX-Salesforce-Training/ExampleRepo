import { LightningElement, track } from 'lwc';

export default class DemoThree extends LightningElement {

    myBool = true;

    @track
    myArrayOne = ['Bob'];

    myArrayTwo = ['Fred'];

    

    connectedCallback(){
        setTimeout(() => {
            this.myArrayTwo.push('Bob');
            this.myArrayOne.push('Fred');

        }, 1000)
        setTimeout(() => {
            this.myArrayTwo.push('George');
            this.myArrayOne.push('George');
        }, 2000)
        setTimeout(() => {
            this.myArrayTwo.push('Ramirez');
            this.myArrayOne.push('Ramirez');
        }, 3000)
        setTimeout(() => {
            this.myBool = false;
        }, 6000);
    }

}