import 'package:flutter/material.dart';

// BORDAS ###############################################
var bordaFocada = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: Colors.black, width: 1.0),
);

var bordaErro = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: Colors.red, width: 1.0),
);

var bordaNormal = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: Color.fromARGB(255, 200, 200, 200), width: 1.0),
);