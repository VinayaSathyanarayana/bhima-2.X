// TODO Automatically fetch address for selenium session
var _ = require('lodash');
var exec = require('child_process').exec;
var spawn = require('child_process').spawnSync;
var moment = require('moment');
var request = require('request');

var seleniumSessionId = '3b0d24ab-9126-441a-a2d6-dd6f03aad167';
var protractorPath = './../node_modules/.bin/protractor';
var configPath = 'demo.conf.js'

let fiscalYearStart = '2015-01-01 09:00';
let currentDate = new moment(fiscalYearStart);

let datestring = currentDate.format('"MMM DD Y HH:mm:ss"');
exec('date -s '.concat(datestring));

function execProtractor(suite, params) {
  var deferred = Promise.defer();
  var command = `${protractorPath} ${configPath} --seleniumSessionId=${seleniumSessionId} --suite ${suite} `;

  if (params) {
    _.forEach(params, function (value, key) {
      command = command.concat('--params.', key, '=\'', JSON.stringify(value), '\'');
    })
  }
  // console.log('Executing command', command);

  exec(command, function(error, stdout, stderr) {
    if (error) {
      console.log('error', error);
      console.log('stdout', stdout);
      console.log('stderr', stderr);
      deferred.reject(error);
      return;
    }
    console.log(stdout);
    deferred.resolve();
  });
  return deferred.promise;
}


// Patient Registrations
// TODO Move to file
var patientsList = require('./data/patients');

console.log(patientsList);

execProtractor('login')
.then(() => registerPatients());

function registerPatients() {
  patientsList.reduce(function (current, next) {
    return current.then(function () {

      let datestring = currentDate.format('"MMM DD Y HH:mm:ss"');
      exec('date -s '.concat(datestring));

      currentDate.add(1, 'day');
      console.log('[Register Patient]', next.name);
      return execProtractor('patientRegistration', {patient : next});
    });
  }, Promise.resolve())
}
