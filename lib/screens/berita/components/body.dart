import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:siskang/constants.dart';

import '../../../components/badge.dart';
import '../../../components/label_name.dart';
import 'news_item.dart';
import 'berita_terkini.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 14, right: 14, bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 0,
            color: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              children: [
                Container(
                  height: 55,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                            // decoration: InputDecoration.collapsed(
                            //   hintText:
                            //       'Cari Berita, Pengumuman, atau Kegiatan',
                            //   border: BorderSide.none,
                            // ),
                            decoration: InputDecoration(
                              hintText:
                                  'Cari Berita, Pengumuman, atau Kegiatan',
                              hintStyle: TextStyle(fontSize: 14),
                              contentPadding: EdgeInsets.only(
                                left: 0,
                                right: 0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              KategoriBerita('Berita', 'selected'),
              KategoriBerita('Pengumuman', 'unselected'),
              KategoriBerita('Kegiatan', 'unselected'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          LabelSubHeader('Berita Terbaru'),
          SizedBox(
            height: 170,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    BeritaTerkini(
                      Badge(
                        Colors.blue[700],
                        'Berita',
                        Icon(
                          Icons.check_circle,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    BeritaTerkini(
                      Badge(
                        Colors.orange,
                        'Pengumuman',
                        Icon(
                          Icons.check_circle,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    BeritaTerkini(
                      Badge(
                        Colors.orange,
                        'Pengumuman',
                        Icon(
                          Icons.check_circle,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    BeritaTerkini(
                      Badge(
                        Colors.blue[700],
                        'Berita',
                        Icon(
                          Icons.check_circle,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    BeritaTerkini(
                      Badge(
                        Colors.blue[700],
                        'Berita',
                        Icon(
                          Icons.check_circle,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 170.0,
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
          LabelSubHeader('Berita Lainya'),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
        ],
      ),
    );
  }
}

class KategoriBerita extends StatelessWidget {
  final String titleKategori;
  final String selectedKategori;

  const KategoriBerita(
    this.titleKategori,
    this.selectedKategori, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: (selectedKategori == 'selected')
                  ? kPrimaryColor
                  : Colors.white,
              border: Border.all(color: kPrimaryColor),
            ),
            child: Text(
              titleKategori,
              style: TextStyle(
                color: (selectedKategori == 'selected')
                    ? Colors.white
                    : kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
