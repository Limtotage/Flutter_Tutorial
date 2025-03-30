import 'package:flutter/material.dart';

/* Tutorial_6 Layout
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
      //Container Widgetine boyu ataması yapılamıyacaktır çünkü boyutu
      //Parent widgetına göre belirlenir. bu olay containera mahsus değildir.
      // eğer bu işleyişi değiştirirsek ve başka bir widget altına yazarsak boyut
      // atamasını gerçekleştirebiliriz.
      //home: Container(color : Colors.red),
      //home: Center(child:Container(color : Colors.red,width:double.infinity,height:100)),
      //home:Align(child:Container(alignment:Alignment.bottomCenter,color : Colors.red,width:100,height:100)),
      // pozisyon parent widget tarafından belirlenmeli childın yaptığı etkisizdir.
      //home:Align(alignment:Alignment.bottomCenter,child:Container(color : Colors.red,width:100,height:100)),
      // Tanınan özgürlükler izinler parenttan childa geçer yani
      //Center(redContainer(greenContainer())) dediğimiz zaman tüm ekran yeşil olacaktır.
      
      // Row ve Column paremetreleri UnconstrainedBox gibi çalışır child eğer boyut almazsa siyah ekran gelecektir.
      home:Row(
        children:[
          Expanded(//Flexible olarak değiştirirsek kullanılmayan boş alanlarda serbest bırakılır.
            //flex: 2 gibi bir değer verirsek kaplıyacakları alanı büyültüp küçültebiliriz.
            child:Container(
              color:Colors.blueAccent,
              child:Text("Selam")
            ),
          ),
          Expanded(
            child:Container(
              color:Colors.yellow,
              child:Text("Taşma Kontrolünü Expanded sınıfı sağlar ve ekran taşmasını engellemeyi hedefler.")
            ),
          ),
        ],
      ),
      
    );
  }
}
