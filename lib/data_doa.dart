import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detaildoa extends StatelessWidget {
  final String judul;
  final String doa;
  final String arti;

  detaildoa({Key key, this.judul, this.doa, this.arti}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(judul),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("img/bg.jpg"),
          fit: BoxFit.cover,
        )),
        child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView(
                children: <Widget>[
                  Container(
                      height: 300,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: <Widget>[
                          Text(
                            doa,
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            arti,
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
