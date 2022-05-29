import 'package:flutter/material.dart';
import 'package:siskang/components/badge.dart';

import '../../../components/label_name.dart';
import '../../jadwal_ujian/components/jadwal_ujian_item.dart';
import 'notifikasi_item.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelSubHeader('Terbaru'),
          NotifikasiItem(
            Badge(
              Colors.blue[700],
              'Berita',
              Icon(
                Icons.newspaper,
                size: 13,
                color: Colors.white,
              ),
            ),
            '10 jam lalu',
            'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500ss',
            "assets/images/news_1.jpeg",
          ),
          NotifikasiItem(
            Badge(
              Colors.orange,
              'Pengumuman',
              Icon(
                Icons.newspaper,
                size: 13,
                color: Colors.white,
              ),
            ),
            '15 jam lalu',
            'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500ss',
            "",
          ),
          SizedBox(
            height: 10,
          ),
          LabelSubHeader('Sebelumnya'),
          NotifikasiItem(
            Badge(
              Colors.blue[700],
              'Berita',
              Icon(
                Icons.newspaper,
                size: 13,
                color: Colors.white,
              ),
            ),
            '1 hari lalu',
            'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500ss',
            "assets/images/news_1.jpeg",
          ),
          NotifikasiItem(
            Badge(
              Colors.lightGreen,
              'Ujian Proposal',
              Icon(
                Icons.newspaper,
                size: 13,
                color: Colors.white,
              ),
            ),
            '2 hari lalu',
            'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500ss',
            "",
          ),
          NotifikasiItem(
            Badge(
              Colors.lightGreen,
              'Ujian Proposal',
              Icon(
                Icons.newspaper,
                size: 13,
                color: Colors.white,
              ),
            ),
            '15 jam lalu',
            'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500ss',
            "",
          ),
          NotifikasiItem(
            Badge(
              Colors.lightGreen,
              'Ujian Proposal',
              Icon(
                Icons.newspaper,
                size: 13,
                color: Colors.white,
              ),
            ),
            '5 hari lalu',
            'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500ss',
            "",
          ),
        ],
      ),
    );
  }
}
