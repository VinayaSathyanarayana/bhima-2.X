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

helpers.configure(chai);

describe.only('Patient Registration', () => {
  'use strict';

  const path = '#/patients/register';
  beforeEach(() => helpers.navigate(path));

  const TOTAL_ITEMS = 2000;

  let inc = 0;
  let date = new Date;

  let patients = _.take(dbPatients, TOTAL_ITEMS);

  patients.forEach((item, index) => {

    it(`Register patient ${index} of ${patients.length}`, done => {

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


      // set the locations via the "locations" array
      components.locationSelect.set(helpers.data.locations, 'origin-location-id');
      components.locationSelect.set(helpers.data.locations, 'current-location-id');

      // set the debtor group
      let debtorGroup = patientDebtorGroup(index);
      FU.uiSelect('PatientRegCtrl.finance.debtor_group_uuid', debtorGroup);

      item.registration_date = patientRegistrationDate(index);
      components.dateEditor.set(item.registration_date);

      // submit the patient registration form
      FU.buttons.submit();

      done();
    });

  });

  function patientRegistrationDate(count) {
    let registrationDate = moment(date).add(count, 'day');
    // date.setDate(date.getDate() + count);
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
