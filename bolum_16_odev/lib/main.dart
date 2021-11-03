import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ODEV"),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //dartRowunuOlustur(),
              yeniRowOlustur(),

              Expanded(child: yeniColumnOlustur()),
            ],
          ),
        ),
      ),
    );

    Row dartRowunuOlustur() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 75,
            height: 75,
            color: Colors.red.shade100,
            child: Text(
              "D",
              style: TextStyle(fontSize: 48),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 75,
            height: 75,
            color: Colors.red.shade300,
            child: Text(
              "A",
              style: TextStyle(fontSize: 48),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 75,
            height: 75,
            color: Colors.red.shade500,
            child: Text(
              "R",
              style: TextStyle(fontSize: 48),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 75,
            height: 75,
            color: Colors.red.shade800,
            child: Text(
              "T",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ],
      );
    }

    Column dersleriColumnunuOlustur() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade200,
              child: Text(
                "E",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade300,
              child: Text(
                "R",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade400,
              child: Text(
                "S",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade500,
              child: Text(
                "L",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade600,
              child: Text(
                "E",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade700,
              child: Text(
                "R",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: 75,
              height: 75,
              margin: EdgeInsets.only(top: 10),
              color: Colors.red.shade800,
              child: Text(
                "İ",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
        ],
      );
    }
  }

  Row yeniRowOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.red.shade100),
        containerOlustur("A", Colors.red.shade400),
        containerOlustur("R", Colors.red.shade600),
        containerOlustur("T", Colors.red.shade800),
      ],
    );
  }

  Column yeniColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: containerOlustur("E", Colors.red.shade200, margin: 15),
        ),
        Expanded(
          child: containerOlustur("R", Colors.red.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("S", Colors.red.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur("L", Colors.red.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur("E", Colors.red.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur("R", Colors.red.shade700, margin: 15),
        ),
        Expanded(
          child: containerOlustur("İ", Colors.red.shade800, margin: 15),
        ),
      ],
    );
  }

  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      alignment: Alignment.center,
      width: 75,
      height: 75,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }
}
