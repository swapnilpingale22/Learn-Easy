import 'package:flutter/material.dart';

class HubScreen extends StatefulWidget {
  const HubScreen({super.key});

  @override
  HubScreenState createState() => HubScreenState();
}

class HubScreenState extends State<HubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hub'),
      ),
      body: Container(),
    );
  }
}
