import 'package:flutter/material.dart';
import 'package:responsividade/widgets/mobalappbar.dart';
import 'package:responsividade/widgets/produto.dart';
import 'package:responsividade/widgets/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 3;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra))
              : PreferredSize(
                  child: WebBar(), preferredSize: Size(largura, alturaBarra)),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(2),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto("som de carro", "1200.00", "p1.jpg"),
                ItemProduto("pnel", "900.00", "p2.jpg"),
                ItemProduto("moto G9", "1100.00", "p3.jpg"),
                ItemProduto("Sansung Galaxy prime", "400.00", "p4.jpg"),
                ItemProduto("Sansung I3", "500.00", "p5.jpg"),
                ItemProduto("Apple", "150.00", "p6.jpg"),
                ItemProduto("som de carro", "1200.00", "p1.jpg"),
                ItemProduto("pnel", "900.00", "p2.jpg"),
                ItemProduto("moto G9", "1100.00", "p3.jpg"),
                ItemProduto("Sansung Galaxy prime", "400.00", "p4.jpg"),
                ItemProduto("Sansung I3", "500.00", "p5.jpg"),
                ItemProduto("Apple", "150.00", "p6.jpg"),
                /*Container(color: Colors.orange),
                    Container(color: Colors.yellow),
                    Container(color: Colors.orange),
                    Container(color: Colors.yellow),
                    Container(color: Colors.orange),
                    Container(color: Colors.yellow),
                    Container(color: Colors.orange),
                    Container(color: Colors.yellow),*/
              ],
            ),
          ),
        );
      },
    );
  }
}
