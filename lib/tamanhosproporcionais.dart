import 'package:flutter/material.dart';

class TamanhosProporcionais extends StatefulWidget {
  const TamanhosProporcionais({Key? key}) : super(key: key);

  @override
  _TamanhosProporcionaisState createState() => _TamanhosProporcionaisState();
}

class _TamanhosProporcionaisState extends State<TamanhosProporcionais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tamanhos Proporcionais"),
      ),
      body: Container(
        color: Colors.orange,
        child: FractionallySizedBox(
          widthFactor: 0.50,
          heightFactor: 0.50,
          alignment: Alignment.topLeft,
          child: Text("Tamnho Proporcional"),
        ),
      ),
    );
  }
}
