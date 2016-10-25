/* global by,browser, element */
'use strict';

const q = require('q');

// we want to make sure we run tests locally, but TravisCI
// should run tests on it's own driver.  To find out if it
// is Travis loading the configuration, we parse the
// process.env.TRAVIS_BUILD_NUMBER and reconfigure for travis
// as appropriate.

const config = {

  // specs: ['test/end-to-end/**/*.spec.js'],
  //
  //
  seleniumAddress : 'http://localhost:4444/wd/hub',

  suites : {
    login : ['scripts/login.spec.js'],
    patientRegistration : ['scripts/registerPatient.spec.js']
  },

  framework : 'mocha',
  baseUrl : 'http://localhost:8080/',

  mochaOpts : {
    timeout : 1000000
  },

  // default browsers to run
  multiCapabilities: [{
    //'browserName': 'firefox',
 // }, {
    'browserName': 'chrome'
  }],

  // this will log the user in to begin with
  // onPrepare : function () {
    // return q.fcall(function () {
      // browser.get('http://localhost:8080/#/login');

      // element(by.model('LoginCtrl.credentials.username')).sendKeys('admin');
      // element(by.model('LoginCtrl.credentials.password')).sendKeys('admin');
      // element(by.css('[data-method="submit"]')).click();

      // NOTE - you may need to play with the delay time to get this to work properly
      // Give this plenty of time to run
    // }).delay(3100);
  // }
};

// expose to the outside world
exports.config = config;
