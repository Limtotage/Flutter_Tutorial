import 'package:flutter/material.dart';

/* Tutorial_5 Column & Row
 * body:Row(
          // default olarak start gelir.
          //.spaceEvenly arasına Rowu dolduracak şekilde boşluk koyarak 
          //widgetları yerleştirir.
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //default olarak .center gelir
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[//default olarak <Widget gelir zaten silinebilir.>
            const Text("Örnek"),
            ElevatedButton(onPressed:(){}, child: const Text("Tıkla")),
            Container(
              color: Colors.lime,
              padding: EdgeInsets.all(30.0),
              child: const Text("Container"),
            ),
          ],
        ),
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
        body: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
              const Text("Örnek"),
              ElevatedButton(onPressed: () {} , child: const Text("Tıkla")),
              Container(
                color:Colors.amber,
                padding:EdgeInsets.all(25.0),
                child: Text("Container"),
              ),
          ],
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
