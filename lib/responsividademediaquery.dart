import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  _ResponsividadeMediaQueryState createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura =
        MediaQuery.of(context).size.width; //toda largura do dispositivo
    var altura =
        MediaQuery.of(context).size.height; //todo comprimento do dispositivo
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    var larguraItem = largura * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsividade"),
      ),
      body: Column(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
