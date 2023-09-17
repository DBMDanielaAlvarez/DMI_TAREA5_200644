import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterImg = "";
  int index = 0;
  List<String> urlImg = [
    'assets/luffy.png',
    'assets/zoro.png',
    'assets/nami.jpeg',
    'assets/ussop.png',
    'assets/sanji.png'
  ];

  void onPressButton() {
    setState(() {
      flutterImg = urlImg[index];
      index = index < 4 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Imagenes"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                urlImg[index],
                width: 200.0,
                height: 200.0,
                // Puedes personalizar el ancho y alto de la imagen según tus necesidades.
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                child: Text(
                  "Cambiar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressButton,
              )
            ],
          )),
        ));
  }
}
