import 'package:flutter/material.dart';
import 'package:mis_lab1/home.dart';

void main() =>
    runApp(MaterialApp(
        initialRoute: '/',
        routes: {
          '/' : (context) => Home(),
        }
    ));
