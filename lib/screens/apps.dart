import 'package:flutter/material.dart';

class AppsScreen extends StatefulWidget {
  const AppsScreen({super.key});
  static const String label = "Apps";

  @override
  State<AppsScreen> createState() => _AppsScreenState();
}

class _AppsScreenState extends State<AppsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text("APPS");
  }
}
