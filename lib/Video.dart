import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 20,
        child: Column(children: <Widget>[
          Container(
            color: Colors.white,
            height: 30,
            child: TabBar(
              unselectedLabelColor: Colors.black26,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: 'THỜI SỰ',
                ),
                Tab(
                  text: 'PHÓNG SỰ - TIN',
                ),
                Tab(
                  text: 'VÌ SỰ TIẾN BỘ PHỤ NỮ',
                ),
                Tab(
                  text: 'THANH NIÊN BÌNH PHƯỚC',
                ),
                Tab(
                  text: 'DIỄN ĐÀN CỬ TRI',
                ),
                Tab(
                  text: 'CÔNG DÂN VỚI PHÁP LUẬT',
                ),
                Tab(
                  text: 'BÌNH LUẬN VÀ PHẢN BIỆN',
                ),
                Tab(
                  text: 'ĐẠI ĐOÀN KẾT TOÀN DÂN TỘC',
                ),
                Tab(
                  text: 'TẠP CHÍ THIẾU NHI',
                ),
                Tab(
                  text: 'QUỐC PHÒNG TOÀN DÂN',
                ),
                Tab(
                  text: 'LAO ĐỘNG CÔNG DÂN',
                ),
                Tab(
                  text: 'KINH TẾ QUỐC PHÒNG',
                ),
                Tab(
                  text: 'NÔNG NGHIỆP NÔNG THÔN',
                ),
                Tab(
                  text: 'NÔNG THÔN MỚI',
                ),
                Tab(
                  text: 'HỌC TẬP VÀ LÀM THEO LỜI BÁC',
                ),
                Tab(
                  text: 'VÌ TRẺ EM',
                ),
                Tab(
                  text: 'DẤU ẤN TÀI HOA',
                ),
                Tab(
                  text: 'DÂN SỐ VÀ SỨC KHỎE',
                ),
                Tab(
                  text: 'THUẾ VÀ CUỘC SỐNG',
                ),
                Tab(
                  text: 'GIẢM NGHÈO BỀN VỮNG',
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            child: TabBarView(children: <Widget>[
              ListView(children: <Widget>[
                Container(
                  child: Text('Thời sự'),
                  height: 300,
                ),
                Container(
                  color: Colors.deepOrange,
                  height: 200,
                ),
                Container(
                  color: Colors.black,
                  height: 200,
                )
              ]),
              Container(
                child: Text('Phóng sự - tin'),
                height: 300,
              ),
              Container(
                child: Text('Vì sự tiến bộ phụ nữ'),
                height: 300,
              ),
              Container(
                child: Text('Thanh niên Bình Phước'),
                height: 300,
              ),
              Container(
                child: Text('Diễn đàn cử tri'),
                height: 300,
              ),
              Container(
                child: Text('Công dân với pháp luật'),
                height: 300,
              ),
              Container(
                child: Text('Bình luận và phản biện'),
                height: 300,
              ),
              Container(
                child: Text('Đại đoàn kết dân tộc'),
                height: 300,
              ),
              Container(
                child: Text('Tạp chí thiếu nhi'),
                height: 300,
              ),
              Container(
                child: Text('Quốc phòng toàn dân'),
                height: 300,
              ),
              Container(
                child: Text('Lao động công đoàn'),
                height: 300,
              ),
              Container(
                child: Text('Kinh tế quốc phòng'),
                height: 300,
              ),
              Container(
                child: Text('Nông nghiệp nông thôn'),
                height: 300,
              ),
              Container(
                child: Text('Nông thôn mới'),
                height: 300,
              ),
              Container(
                child: Text('Học tập và làm theo lời Bác'),
                height: 300,
              ),
              Container(
                child: Text('Vì trẻ em'),
                height: 300,
              ),
              Container(
                child: Text('Dấu ấn tài hoa'),
                height: 300,
              ),
              Container(
                child: Text('a'),
                height: 300,
              ),
              Container(
                child: Text('Thời sự'),
                height: 300,
              ),
              Container(
                child: Text('Thời sự'),
                height: 300,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
