/* jshint expr: true */
/* global element, by, browser */
const chai = require('chai');
const expect = chai.expect;

const _ = require('lodash');
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
  const TOTAL_ITEMS = 10;

  dbPatients = _.take(dbPatients, TOTAL_ITEMS);

  dbPatients.forEach(item => {

    it(`Registers ${dbPatients.length} patients`, done => {

      // patient name
      FU.input('PatientRegCtrl.medical.display_name', item.name);


      // hospital number and yob
      item.hospital_no = item.hospital_no ? item.hospital_no : 'D00' + inc++;
      FU.input('PatientRegCtrl.medical.hospital_no', item.hospital_no);
      FU.input('PatientRegCtrl.yob', item.yob);

      // registration date
      // FU.input('PatientRegCtrl.medical.registration_date', item.hospital_no);


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

      done();
    });

  });

});
