import 'package:flutter/material.dart';
import 'package:quickpay_web/app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const Quickpay());
}
