import 'package:flutter/material.dart';
import 'package:responsividade/diferentes_tamanhos.dart';
import 'package:responsividade/lojavirtual.dart';
import 'package:responsividade/orientacao.dart';
import 'package:responsividade/regraslayout.dart';
import 'package:responsividade/responsividade_wrap.dart';
import 'package:responsividade/responsividademediaquery.dart';
import 'package:responsividade/responsividaderowcol.dart';
import 'package:responsividade/tamanhosproporcionais.dart';
import 'package:responsividade/tamanhotextos.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        //enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      home: LojaVirtual(),
    );
  }
}
