import { api, LightningElement, track, wire } from 'lwc';

export default class DemoTen extends LightningElement {

    @api
    greetingOne = 'Bonjour World';
    
    @api
    greetingTwo = 'Hola World';

    @api
    greetingThree = 'Konnichiwa World';


}