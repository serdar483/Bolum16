import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8e44ae43-665d-4f70-882e-24e402c998a5/dergqg8-d2a353fb-80bb-4987-ac26-d3bbfb0f5cca.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzhlNDRhZTQzLTY2NWQtNGY3MC04ODJlLTI0ZTQwMmM5OThhNVwvZGVyZ3FnOC1kMmEzNTNmYi04MGJiLTQ5ODctYWMyNi1kM2JiZmIwZjVjY2EuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.XpPxe6-_aBAYdh2LLuozvCAmOTIx856CNa7b_ADvHHk';

  String _img2 =
      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/74245d70-973b-4110-a4a9-636256722131/dei4ihs-4326d0fa-ce00-4bba-a7cc-853838eb8106.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzc0MjQ1ZDcwLTk3M2ItNDExMC1hNGE5LTYzNjI1NjcyMjEzMVwvZGVpNGlocy00MzI2ZDBmYS1jZTAwLTRiYmEtYTdjYy04NTM4MzhlYjgxMDYuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.CefHW254yy1kzMrDNZb0zZI-9QVCUK_PAsJwzf3a9Ow";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Başlık"),
        ),
        //body: containerDersleri(),
        //body: rowAndcolumnDersleri(),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: expandedContainer,
            //children: flexibleContainer,
            children: sorunluContainer,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.blue,
          ),
          backgroundColor: Colors.red,
        ),
      ),
      theme: ThemeData(primaryColor: Colors.amber),
    );
  }

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.red,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Container rowAndcolumnDersleri() {
    return Container(
      color: Colors.red.shade300,
      //height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("S"),
              Text("E"),
              Text("R"),
              Text("D"),
              Text("A"),
              Text("R"),
            ],
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.black,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Serdar",
          style: TextStyle(fontSize: 96),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.brown),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
            ),
            image: DecorationImage(
              image: NetworkImage(_img2),
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 30),
                blurRadius: 30,
              ),
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(0, -20),
                blurRadius: 10,
              ),
            ]),
      ),
    );
  }
}
