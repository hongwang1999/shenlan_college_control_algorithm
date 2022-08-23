
"use strict";

let SendBytes = require('./SendBytes.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestNestedService = require('./TestNestedService.js')
let TestEmpty = require('./TestEmpty.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let AddTwoInts = require('./AddTwoInts.js')

module.exports = {
  SendBytes: SendBytes,
  TestArrayRequest: TestArrayRequest,
  TestRequestOnly: TestRequestOnly,
  TestResponseOnly: TestResponseOnly,
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestNestedService: TestNestedService,
  TestEmpty: TestEmpty,
  TestRequestAndResponse: TestRequestAndResponse,
  TestMultipleRequestFields: TestMultipleRequestFields,
  AddTwoInts: AddTwoInts,
};
