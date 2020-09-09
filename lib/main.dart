import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appdoaharian/detail.dart';
import 'data_doa.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doa Apps',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'DOA',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'harian',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        body: _PageList(),
      ),
    );
  }
}

class _PageList extends StatefulWidget {
  _PageStateListState createState() => _PageStateListState();
}

class _PageStateListState extends State<_PageList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
            image: AssetImage("img/bg.jpg"),
            fit: BoxFit.cover,
          )),
      child: ListView.builder(
          itemCount: judulDoa.length,
          itemBuilder: (BuildContext context, int index) {
            final jdl = judulDoa[index].toString();
            final arab = Arab[index].toString();
            final arti = Artinya[index].toString();
            return Container(
              height: 80.0,
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => detaildoa(
                                judul: jdl,
                                doa: arab,
                                arti: arti,
                              )));
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: topContent(jdl, arab, arti),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  topContent(String jdl, String arab, String darti) {
    return new Container(
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(255, 255, 255, 0.7),
      ),
      //height: 80.0,

      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Text(
          jdl,
          textAlign: TextAlign.center,
          style: bigHeaderTextStyle,
        ),
      ]),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.black, fontFamily: 'arial');

final bigHeaderTextStyle = baseTextStyle.copyWith(
  fontSize: 12.0,
  fontWeight: FontWeight.bold,
);
