import { createElement } from 'lwc';
import DemoTwelve from 'c/demoTwelve';
import { registerApexTestWireAdapter } from '@salesforce/sfdx-lwc-jest';
import getAccounts from '@salesforce/apex/demoFive.getAccounts'

// Our mock data.
const mockGetAccounts = require('./data/getAccounts.json');

const getAccountsAdapter = registerApexTestWireAdapter(getAccounts);

describe('c-demo-twelve', () => {
    afterEach(() => {
      while (document.body.firstChild) {
        document.body.removeChild(document.body.firstChild);
      }
      // We also want to clear any mock data between tests. 
      // Even though here we are only performing one it is a good practice.
      jest.clearAllMocks();
    });
      
    describe('getAccounts data', () => {
      it('renders six records', () => {
        const element = createElement('c-demo-twelve', {
          is: DemoTwelve
        });
        document.body.appendChild(element);
          
        // Emit data from @wire
        getAccountsAdapter.emit(mockGetAccounts);
          
        return Promise.resolve().then(() => {
          // Select elements for validation
          const accountElements = element.shadowRoot.querySelectorAll('[data-id="account"]');
          expect(accountElements.length).toBe(mockGetAccounts.length);
          expect(accountElements[0].textContent).toBe(mockGetAccounts[0].Name);
        });
      });
    });
  });