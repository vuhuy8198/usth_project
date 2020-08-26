import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TrangChuPage extends StatefulWidget {
  @override
  _TrangChuPageState createState() => _TrangChuPageState();
}

class _TrangChuPageState extends State<TrangChuPage> {
  Dio dio = Dio();
  Response response;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: deviceSize.height * (1 / 3),
            child: PageView(
              children: <Widget>[
                Container(
                  child: Text('tin 1'),
                ),
                Container(
                  child: Text('tin 2'),
                ),
                Container(
                  child: Text('tin 3'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            height: deviceSize.height * (1 / 3),
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            height: deviceSize.height * (1 / 3),
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            height: deviceSize.height * (1 / 3),
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
