import { api, LightningElement, track, wire } from 'lwc';

export default class DemoOne extends LightningElement {


    greetingOne = 'Bonjour World';
    
    @api
    greetingTwo = 'Hola World';

    @track
    greetingThree = 'Konnichiwa World';


}