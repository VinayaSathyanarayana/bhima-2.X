/* jshint expr: true */
/* global element, by, browser */
const chai = require('chai');
const expect = chai.expect;

const FU = require('../../shared/FormUtils');
const components = require('../../shared/components');
const helpers = require('../../shared/helpers');
const dbPatients = require('../db/patients');

helpers.configure(chai);

describe.only('Patient Registration', () => {
  'use strict';

  const path = '#/patients/register';
  beforeEach(() => helpers.navigate(path));

  let inc = 0;

  dbPatients.forEach(item => {

    it(`Registers ${dbPatients.length} patients`, done => {

      // patient name
      FU.input('PatientRegCtrl.medical.display_name', item.name);


      // hospital number and yob
      item.hospital_no = item.hospital_no ? item.hospital_no : 'D00' + inc++;
      FU.input('PatientRegCtrl.medical.hospital_no', item.hospital_no);
      FU.input('PatientRegCtrl.yob', item.yob);


      // set the gender of the patient
      if (item.sex === 'M') {
        element(by.id('male')).click();
      } else {
        element(by.id('female')).click();
      }


      // set the locations via the "locations" array
      components.locationSelect.set(helpers.data.locations, 'origin-location-id');
      components.locationSelect.set(helpers.data.locations, 'current-location-id');

      // set the debtor group
      FU.uiSelect('PatientRegCtrl.finance.debtor_group_uuid', 'Patient Payant Cash');

      // submit the patient registration form
      FU.buttons.submit();
      FU.exists(by.id('receipt-confirm-created'), true);

      done();
    });

  });

});
