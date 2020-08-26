import 'package:flutter/material.dart';

class TrucTuyenPage extends StatefulWidget {
  @override
  _TrucTuyenPageState createState() => _TrucTuyenPageState();
}

class _TrucTuyenPageState extends State<TrucTuyenPage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            child: TabBar(
              tabs: <Widget>[
               Tab(
                 child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/chinh_tri.png'),
                      height: 23,
                    ),
                    Container(
                      child: Text('Kênh 1',style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),),
                    ),
                  ],
                 ),
               ),
                Tab(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/cong_nghe.png'),
                        height: 23,
                      ),
                      Container(
                        child: Text('Kênh 2',style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/giai_tri.png'),
                        height: 23,
                      ),
                      Container(
                        child: Text('Kênh 3',style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            child: TabBarView(
              children: <Widget>[
                Container(
                  height: 180,
                  color: Colors.grey,
                ),
                Container(
                  height: 180,
                  color: Colors.blue,
                ),
                Container(
                  height: 180,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
