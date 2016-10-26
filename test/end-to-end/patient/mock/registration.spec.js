/* jshint expr: true */
/* global element, by, browser */
const chai = require('chai');
const expect = chai.expect;

const _ = require('lodash');
const moment = require('moment');
const FU = require('../../shared/FormUtils');
const components = require('../../shared/components');
const helpers = require('../../shared/helpers');
const dbPatients = require('../db/patients');
const PatientInvoicePage = require('../invoice/invoice.page.js');

helpers.configure(chai);

describe.only('Patient Registration', () => {
  'use strict';

  const registration_path = '#/patients/register';
  const invoice_path = '#/invoices/patient';
  const TOTAL_ITEMS = 10;

  let inc = 0;
  let date = new Date;

  let patients = _.take(dbPatients, TOTAL_ITEMS);

  patients.forEach((item, index) => {

    it(`Register patient ${index} of ${patients.length}`, done => {
      // goto registration page
      helpers.navigate(registration_path);

      browser.ignoreSynchronization = true;

      // patient name
      FU.input('PatientRegCtrl.medical.display_name', item.name);


      // hospital number and yob
      item.hospital_no = item.hospital_no && item.hospital_no !== '0' ? item.hospital_no : 'D00' + inc++;
      FU.input('PatientRegCtrl.medical.hospital_no', item.hospital_no);
      FU.input('PatientRegCtrl.yob', item.yob);


      // set the gender of the patient
      if (item.sex === 'M') {
        element(by.id('male')).click();
      } else {
        element(by.id('female')).click();
      }

      // set the debtor group
      let debtorGroup = patientDebtorGroup(index);
      FU.uiSelect('PatientRegCtrl.finance.debtor_group_uuid', debtorGroup);

      item.registration_date = patientRegistrationDate(index);
      components.dateEditor.set(item.registration_date);

      // submit the patient registration form
      browser.ignoreSynchronization = false;
      FU.buttons.submit();

      done();
    });

    it(`invoices for ${item.name}`, function () {
      // IMPORTANT: the fiscal year must be set

      // goto registration page
      helpers.navigate(invoice_path);

      // array of random inventory
      var data = [
        { invoice: '110001', qte: 5 }, { invoice: '100102', qte: 100 }, { invoice: '100095', qte: 10 },
        { invoice: '150061', qte: 10 }, { invoice: '170449', qte: 1 }, { invoice: '110006', qte: 1 }
      ];

      var invoice = data[Math.floor(Math.random() * data.length)];

      var page = new PatientInvoicePage();

      // prepare the page with default patient, service, etc
      // FIXME: CLQ MUST BE THE SELECTED PROJECT 
      var pid = 'CLQ' + (index + 1);
      var invoiceDate = patientRegistrationDate(index);
      page.details(pid, invoiceDate, `Invoice for ${item.name}`);

      // add two inventory items to each row (0-indexing)
      page.addInventoryItem(0, invoice.invoice);

      // change the required quantities
      page.adjustItemQuantity(0, invoice.qte);

      // submit the page
      page.submit();

      page.reset();
    });

  });

  function patientRegistrationDate(count) {
    let registrationDate = moment(date).add(count, 'day');
    return registrationDate.toDate();
  }

  function patientDebtorGroup(count) {
    if (count <= 5) { return 'Guest House'; }
    else if (count <= 20) { return 'Organisme Non Gouvernemental'; }
    else if (count <= 40) { return 'REGIDESO'; }
    else if (count <= 60) { return 'SNEL'; }
    else { return 'Patient Payant Cash'; }
  }

});
