import 'package:flutter/material.dart';

const kInputDec = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your input',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0))
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(15.0))
  ),
);