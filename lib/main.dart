import 'package:flutter/material.dart';
import 'providers/providers.dart';
import 'src/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupProviders();
  runApp(const MyApp());
}
