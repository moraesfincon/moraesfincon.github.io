"use strict";

function submitForm(){
  var form = document.getElementById('new_contact');
  var inputs = form.elements;

  for (var i = 0, len = inputs.length; i < len; ++i) {
    inputs[i].readOnly = true;
  }
}