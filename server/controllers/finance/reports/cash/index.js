/**
 * @overview
 * Cash Reports
 *
 * This module is responsible for rendering reports of cash payments.  It supports
 * the cash receipt.
 *
 * @todo - cash payments registry.
 *
 * @module finance/reports/cash
 */
'use strict';

const _    = require('lodash');
const q    = require('q');

const BadRequest = require('../../../../lib/errors/BadRequest');
const ReportManager = require('../../../../lib/ReportManager');

const CashPayments = require('../../cash');
const Exchange = require('../../exchange');
const Users = require('../../../admin/users');
const Patients = require('../../../medical/patients');
const Enterprises = require('../../../admin/enterprises');

const RECEIPT_TEMPLATE = './server/controllers/finance/reports/cash/receipt.handlebars';
const REPORT_TEMPLATE = './server/controllers/finance/reports/cash/report.handlebars';

/**
 * @method receipt
 *
 * @description
 * This method builds the cash payment receipt as either a JSON, PDF, or HTML
 * file to be sent to the client.
 *
 * GET /reports/cash/:uuid
 */
function receipt(req, res, next) {
  const options = req.query;

  let report;

  // set up the report with report manager
  try {
    report = new ReportManager(RECEIPT_TEMPLATE, req.session, options);
  } catch (e) {
    return next(e);
  }

  const data = {};

  CashPayments.lookup(req.params.uuid)
    .then(payment => {
      data.payment = payment;

      return q.all([
        Users.lookup(payment.user_id),
        Patients.lookupByDebtorUuid(payment.debtor_uuid),
        Enterprises.lookupByProjectId(payment.project_id),
      ]);
    })
    .spread((user, patient, enterprise) => {
      _.assign(data, { user, patient, enterprise });
      return Exchange.getExchangeRate(enterprise.id, data.payment.currency_id, data.payment.date);
    })
    .then(exchange => {
      data.rate = exchange.rate;
      data.hasRate = (data.rate && !data.payment.is_caution);

      return report.render(data);
    })
    .then(result => {
      res.set(result.headers).send(result.report);
    })
    .catch(next)
    .done();
}

/**
 * @method report
 *
 * @description
 * This method builds the cash payment report as either a JSON, PDF, or HTML
 * file to be sent to the client.
 *
 * GET /reports/finance/cash
 */
function report(req, res, next) {
  let options = {};
  let display = {};
  let hasFilter = false;

  let report;
  let lang = req.query.lang;
  let enterprise = req.session.enterprise;
  // set up the report with report manager
  try {

    if (req.query.identifiers && req.query.display) {
      options = JSON.parse(req.query.identifiers);
      display = JSON.parse(req.query.display);
      hasFilter = Object.keys(display).length;
    }

    report = new ReportManager(REPORT_TEMPLATE, req.session, { lang: lang });
  } catch (e) {
    return next(e);
  }

  let data = {};

  CashPayments.listPayment(options)
    .then(rows => {
      data.rows = rows;
      data.display = display;
      data.hasFilter = hasFilter;
      data.enterprise = enterprise;
      return report.render(data);
    })
    .then(result => {
      res.set(result.headers).send(result.report);
    })
    .catch(next)
    .done();
}

exports.receipt = receipt;
exports.report = report;
