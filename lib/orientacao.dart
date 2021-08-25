import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  _OrientacaoState createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientação"),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          return GridView.count(
            crossAxisCount: 2,
            children: [
              Container(color: Colors.black),
              Container(color: Colors.green),
              Container(color: Colors.red),
              Container(color: Colors.white),
              Container(color: Colors.grey),
              Container(color: Colors.yellow),
            ],
          );
        },
      ),
    );
  }
}
