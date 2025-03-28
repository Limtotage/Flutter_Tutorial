import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading :  Text("Menu"),
        ),
        body : const Center(
          child : Text("Hello Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){},
          child: const Text("+"), 
        ),
      ),
    );
  }
}
