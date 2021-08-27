import { createElement } from 'lwc';
import demoTenClass from 'c/demoTen';

// describe is going to start our test suite.
describe('c-demo-ten', () => {
    //After each test we remove the new child so it is a fresh set of data for subsequent tests. In ATF this is automatically done for us.
    afterEach(() => {
        while(document.body.firstChild){
            document.body.removeChild(document.body.firstChild);
        }
    });
    
    // It blocks represent our individual tests.
    it("Should say Bonjour", () => {
        const element = createElement('c-demo-ten', {
            is: demoTenClass
        });
        // expect is our asserts, and has a wide range of functions you can use beyond the toBe we utilize here.
        //
        // Here we test what the value of greeting one is to begin with.
        expect(element.greetingOne).toBe('Bonjour World');
        document.body.appendChild(element);
        const div = element.shadowRoot.querySelector('div');
        // Here we test what the value of the div containing our greeting is. 
        expect(div.textContent).toBe('Bonjour World!');
    });

    it("Should say Hola", () => {
        const element = createElement('c-demo-one', {
            is: demoTenClass
        });
        expect(element.greetingTwo).toBe('Hola World');
        document.body.appendChild(element);
        // Similar to before we test the value, but because we cannot use id, we use the data-id attribute instead.
        const g2 = element.shadowRoot.querySelector('[data-id="g2"]');
        expect(g2.textContent).toBe("Hola World!")
    })
});