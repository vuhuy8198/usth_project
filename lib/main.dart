import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Video.dart';
import 'package:helloworld/ca_nhan.dart';
import 'package:helloworld/tin_tuc.dart';
import 'package:helloworld/trang_chu.dart';
import 'package:helloworld/truc_tuyen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TrangChu(),
    );
  }
}

class TrangChu extends StatefulWidget {
  @override
  _TrangChuState createState() => _TrangChuState();
}

  class _TrangChuState extends State<TrangChu> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  int currentIndex = 0;
  String title = "Chính trị";

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: Image.network('http:\/\/ott.bbp.mediatech.vn\/upload\/1\/group\/mediatech.1589358107.5ebbae1ba1b2d.png',
          width: 120,
          height:75,
        ),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.notifications),onPressed:(){
            print("Noti Clicked");
          },),
          IconButton(icon:Icon(Icons.search),onPressed:(){
            print("Search Clicked");
          },)
        ],
        elevation: 20,
      ),

      drawer: Drawer(
        child: ListTileTheme(
          selectedColor: Colors.blueGrey,
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Vu Huy'),
                accountEmail: Text('vuhuy0801@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),

                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                ),
              ),
              ListTile(
                title: Text("Chính trị"),
                selected: currentIndex == 0,
                onTap: (){
                  setState(() {
                    currentIndex = 0;
                    title = 'Chính trị';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Kinh tế"),
                selected: currentIndex == 1,
                onTap: (){
                  setState(() {
                    currentIndex = 1;
                    title = 'Kinh tế';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Xã hội"),
                selected: currentIndex == 2,
                onTap: (){
                  setState(() {
                    currentIndex = 2;
                    title = 'Xã hội';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Pháp luật"),
                selected: currentIndex == 3,
                onTap: (){
                  setState(() {
                    currentIndex = 3;
                    title = 'Pháp luật';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Giáo dục"),
                selected: currentIndex == 4,
                onTap: (){
                  setState(() {
                    currentIndex = 4;
                    title = 'Giáo dục';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Văn hóa"),
                selected: currentIndex == 5,
                onTap: (){
                  setState(() {
                    currentIndex = 5;
                    title = 'Văn hóa';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Thể thao"),
                selected: currentIndex == 6,
                onTap: (){
                  setState(() {
                    currentIndex = 6;
                    title = 'Thể thao';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Quốc tế"),
                selected: currentIndex == 7,
                onTap: (){
                  setState(() {
                    currentIndex = 7;
                    title = 'Quốc tế';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Công nghệ"),
                selected: currentIndex == 8,
                onTap: (){
                  setState(() {
                    currentIndex = 8;
                    title = 'Công nghệ';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Giải trí"),
                selected: currentIndex == 9,
                onTap: (){
                  setState(() {
                    currentIndex = 9;
                    title = 'Giải trí';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Tòa soạn và bạn đọc"),
                selected: currentIndex == 10,
                onTap: (){
                  setState(() {
                    currentIndex = 10;
                    title = 'Tòa soạn và bạn đọc';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Tin tài trợ"),
                selected: currentIndex == 11,
                onTap: (){
                  setState(() {
                    currentIndex = 11;
                    title = 'Tin tài trợ';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),

      body: Container(
        child: PageView(
          controller: _controller,
          children:[
            TrangChuPage(),
            TinTucPage(),
            TrucTuyenPage(),
            VideoPage(),
            CaNhanPage(),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
          color:Colors.lightBlueAccent,
          backgroundColor:Colors.white,
          buttonBackgroundColor:Colors.lightBlueAccent,
          height:55,
          items: <Widget>[
            Icon(Icons.home,size: 23,color:Colors.white),
            Icon(Icons.fiber_new,size: 23,color:Colors.white),
            Icon(Icons.live_tv,size: 23,color:Colors.white),
            Icon(Icons.music_video,size: 23,color:Colors.white),
            Icon(Icons.person,size: 23,color:Colors.white),
          ],
        animationDuration: Duration(
          milliseconds: 200
        ),

        onTap: (index){
          debugPrint("Current Index is $index");
          _controller.jumpToPage(index);
        },
      ),
    );
  }
}