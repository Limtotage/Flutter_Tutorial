import 'package:flutter/material.dart';

/* Tutorial_3 Resim işlemleri
 * Pexels.Com sitesi ücretsiz resim sağlamaktadır.
 * Resimleri düzenli durması için assets içine koyulabilir.
 * Resimlerde Fontlar Gibi pubspec.yaml dosyasından ilgili bölümden dosya konumu
 * tarif edilerek eklenebilir.
 * çoklu foto için yolu sadece klasöre kadar kaydetmek yeterli ".../images" gibi
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
        body: Center(
          /*child : Image(
            image: AssetImage(
              "lib/assets/images/image-1.jpg"
            ),  Dosya Konumu ile
           child : Image(
            image: NetworkImage(
              "https://images.pexels.com/photos/1459495/pexels-photo-1459495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
            ),internet adresi ile
          ),*/
          //child: Image.asset("lib/assets/images/image-1.jpg"),
          child: Image.network(
            "https://images.pexels.com/photos/1459495/pexels-photo-1459495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),

          //Alternatif yöntemler ^
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
