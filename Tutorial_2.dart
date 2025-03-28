import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
// import 'package:widget_detail/constants/colors.dart ;

void main() {
  runApp(const WidgetDetail());
}
class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});
  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}
class _WidgetDetailState extends State<WidgetDetail> {
  int value =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(//tüm temayı değiştirir.
        fontFamily:"Tutorial2",
      ),
      /* GoogleFonts Eklenmiş hali
       * theme: ThemeData(textTheme:GoogleFonts.acmeTextTheme()),*/
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading :  Text("Menu"),
        ),
        body : Center(
          //Tutorial 2 'nin konusu Text özellikleri: Büyüklükler, renkler ve HexColors; Fontlar ve Google Fonts'
          // fontlar lib içerisine assets klasörü oluşturarak kullanılabilir.
          //fonts klasörü oluşturup içerisinden çekmeliyiz.
          //pubspec.ymal dosyasından fonts kısmı yorumdan çıkarılır family ismi uygun bir isimle değiştirilir.
          //sonra dosya yolu düzeltilir.
          //örn : - asset: lib/assets/fonts/Agdasima-Regular.ttf
          //bold karakterleri altına weight değeri yazılarak eklenir.
          //örn: - asset: lib/assets/fonts/Agdasima-Bold.ttf
          //       weight:700
          // tüm Google Fontsu eklemek için Pub.Dev adresinden Google Fonts pubspec.ymala içerisine install edilir. Dependencies kısmına
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(value.toString()),
              Text(
                "Test",
                //style:GoogleFonts.acme(), googleFonts eklenmiş hali
                style:TextStyle(
                  fontFamily: "Tutorial2",
                  fontSize : 40,
                  fontWeight:FontWeight.w300,
                  letterSpacing : 10,
                  //color: Colors.HexColor("52FE1"),
                  //color: Colors.HexColor(secondaryColor),
                  color: Colors.deepOrange[200],
                ),
              )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            setState((){
              value+=1;
            });
          },
          child: const Text("+"), 
        ),
      ),
    );
  }
}

