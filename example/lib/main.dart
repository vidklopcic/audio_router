import 'package:audio_router_example/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:audio_router/audio_router.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Audio Router Example',
    home: Home()
  ));
}