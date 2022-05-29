import 'package:flutter/material.dart';
import 'package:siskang/screens/home/components/icon_btn_with_counter.dart';
import 'package:siskang/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../components/label_name.dart';
import '../../../constants.dart';
import '../components/informasi_ujian.dart';
import '../components/jadwal_item.dart';
import '../components/capaian_akademik.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CapaianAkademik(),
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton('Time Line', Icons.timeline),
                      IconButton('Prasyarat', Icons.settings),
                      IconButton('Template', Icons.file_download),
                      IconButton('Pedoman', Icons.book),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton('Repository', Icons.library_books),
                      IconButton('Arsip', Icons.archive_sharp),
                      IconButton('Statistik', Icons.bar_chart),
                      IconButton('Tentang', Icons.list_alt),
                    ],
                  ),
                ],
              ),
            ),
            LabelSubHeader('Jadwal Ujian'),
            SizedBox(
              height: 140,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      JadwalItem(
                        'Ilmu Komputer',
                        'Documentation Matters: Human-Centered AI System to Assist Data Science Code Documentation in Computational Notebooks',
                        'Zoom Meeting',
                        'Ahmad Asroni',
                        '13.00',
                      ),
                      JadwalItem(
                        'Ilmu Komputer',
                        'Impact on Stock Market across Covid-19 Outbreak',
                        'Zoom Meeting',
                        'G. B. Sathya Narayana',
                        '10.00',
                      ),
                      JadwalItem(
                        'Sistem Informasi',
                        'Exploring the political pulse of a country using data science tools',
                        'Zoom Meeting',
                        'Dibi Ngabe Mupu',
                        '13.00',
                      ),
                      JadwalItem(
                        'Sistem Informasi',
                        'Detection of Road Traffic Anomalies Based on Computational Data Science',
                        'Zoom Meeting',
                        'Andrianto',
                        '13.00',
                      ),
                      JadwalItem(
                        'Sistem Informasi',
                        'Detection of Road Traffic Anomalies Based on Computational Data Science',
                        'Zoom Meeting',
                        'I Gede Ary Suta Sanjaya',
                        '13.00',
                      ),
                      JadwalItem(
                        'Sistem Informasi',
                        'Detection of Road Traffic Anomalies Based on Computational Data Science',
                        'Zoom Meeting',
                        'I Made Aris Satia Widiatmika',
                        '13.00',
                      ),
                    ],
                    options: CarouselOptions(
                      height: 140.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LabelSubHeader('Berita Terbaru'),
            InformasiUjian(),
            InformasiUjian(),
            InformasiUjian(),
            InformasiUjian(),
            InformasiUjian(),
          ],
        ),
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;

  IconButton(this.nameLabel, this.iconLabel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                onTap: () {},
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
