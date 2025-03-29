import 'package:flutter/material.dart';

/* Tutorail_4 Containers & Padding
*/
void main() {
  runApp(const WidgetDetail()); 
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});
  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: Text("Menu"),
        ),
        body: Container(
          margin: const EdgeInsets.all(25.0),
          //padding: EdgeInsets.all(40.0),
          //padding: EdgeInsets.fromLTRB(40,5,20,10),
          //padding: EdgeInsets.only(left:20.0,top:20.0),
          //padding: EdgeInsets.symmetric(vertical : 20.0,horizontal: 50.0),
          color: Colors.green,
          child: Text("Örnek"),
          /*
          child: const Padding(
            padding:EdgeInsets.all(40.0),
            child: Text("Örnek"),
          ),*/
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value += 1;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}
