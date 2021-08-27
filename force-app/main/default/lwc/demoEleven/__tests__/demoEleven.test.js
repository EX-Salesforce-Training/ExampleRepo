import { createElement } from 'lwc';
import demoEleven from 'c/demoEleven';
import { getRecord } from 'lightning/uiRecordApi';
import { registerLdsTestWireAdapter } from '@salesforce/sfdx-lwc-jest';
  
// Mock data
const mockGetRecord = require('./data/getRecord.json');
  
// Register as an LDS wire adapter
const getRecordAdapter = registerLdsTestWireAdapter(getRecord);
  
describe('c-demo-eleven', () => {
  afterEach(() => {
    while (document.body.firstChild) {
      document.body.removeChild(document.body.firstChild);
    }
  });
    
  describe('getRecord @wire data', () => {
    it('renders account details', () => {
      const element = createElement('c-demo-eleven', {
        is: demoEleven
      });
      document.body.appendChild(element);
        
      // Emit data from @wire
      getRecordAdapter.emit(mockGetRecord);
        
      return Promise.resolve().then(() => {
        // Select elements for validation
        const nameElement = element.shadowRoot.querySelector('div');
        expect(nameElement.textContent).toBe(
          'Account Name: ' + mockGetRecord.fields.Name.value
        );
      });
    });
  });
});