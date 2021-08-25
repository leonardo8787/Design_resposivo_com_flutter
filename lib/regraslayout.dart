import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({Key? key}) : super(key: key);

  @override
  _RegrasLayoutState createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rgras_Layout"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint) {
            var largura = constraint;
            if (largura == 600) {
              Text("Celulares");
            } else if (largura == 960) {
              Text("Tablet");
            } else {
              Text("Computador");
            }
            return Container(
              child: Text("Jamilton"),
            );
          },
        ),
      ),
    );
  }
}
