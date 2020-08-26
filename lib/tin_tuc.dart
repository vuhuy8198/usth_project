import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TinTucPage extends StatefulWidget {
  @override
  _TinTucPageState createState() => _TinTucPageState();
}

class _TinTucPageState extends State<TinTucPage> {
  var dio = Dio();


  Future<List> news;
  Future<List> getNews() async {
    var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    print(response);
    return response.data;
  }

  @override
  void initState() {
    news = getNews();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery
        .of(context)
        .size;
    return Container(
      child: DefaultTabController(
        length: 10,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 70,
              width: 500,
              child: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/chinh_tri.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Chính trị',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/kinh_te.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Kinh tế',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/xa_hoi.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Xã hội',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/phap_luat.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Pháp luật',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/giao_duc.jpg'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Giáo dục',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/van_hoa.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Văn hóa',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/the_thao.jpg'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Thể thao',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/quoc_te.jpg'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Quốc tế',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/cong_nghe.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Công nghệ',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/giai_tri.png'),
                          height: 30,
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            'Giải trí',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: deviceSize.height * (5 / 8),
              child: TabBarView(
                children: <Widget>[
                  Container(
                    child: FutureBuilder<List>(
                      future: news,
                      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  child: Text('Thanh cong'),
                                );
                              });
                        }
                        return Container(
                          child: Text('That bai'),
                        );
                      },
                    ),
                    height: 0.0,
                    width: 0.0,
                  ),
                  Container(
                    child: Text('Kinh tế'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Xã hội'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Pháp luật'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Giáo dục'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Văn hóa'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Thể thao'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Quốc tế'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Công nghệ'),
                    height: 500,
                  ),
                  Container(
                    child: Text('Giải trí'),
                    height: 500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
