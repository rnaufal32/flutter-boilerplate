import 'package:flutter/material.dart';
import 'package:flutter_bolierplate/app/app_widget.dart';

import 'di/injection.dart';

void main() {
  injectModule();
  runApp(AppWidget());
}
