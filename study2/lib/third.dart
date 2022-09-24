import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart'
    show QRView, QRViewController, QrScannerOverlayShape;
import 'package:study2/qr_check_screen.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);
  @override
  _Third createState() => _Third();
}

class _Third extends State<Third> {
  String qrResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '여기에 링크가 뜨게 됩니다.',
            ),
            Text(
              qrResult,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressedFAB,
        tooltip: 'Increment',
        child: Icon(Icons.qr_code_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onPressedFAB() async {
    dynamic result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return QRCheckScreen(eventKeyword: 'userId');
    }));

    if (result != null) {
      setState(() {
        //qr스캐너에서 받은 결과값을 화면의 qrResult 에 적용하도록 한다.
        qrResult = result.toString();
      });
    }
  }
}
