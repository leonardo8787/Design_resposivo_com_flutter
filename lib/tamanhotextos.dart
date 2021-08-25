import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  _TamanhoTextosState createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tamanhos de Textos'),
      ),
      body: Column(
        children: [
          Text(
            "aaaaaaaaaaaa"
            "bbbbbbbbbbbbbbbbb"
            "ccccccccccccccccc",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          AutoSizeText(
            "aaaaaaaaaaaa"
            "bbbbbbbbbbbbbbbbb"
            "ccccccccccccccccc"
            "ddddddddddddddddd",
            style: TextStyle(fontSize: 18),
            maxLines: 1, //máximo de linhas permitidas
            minFontSize: 14,
            //overflow: TextOverflow.ellipsis,
            overflowReplacement: Text("não coube"),
          ),
        ],
      ),
    );
  }
}
