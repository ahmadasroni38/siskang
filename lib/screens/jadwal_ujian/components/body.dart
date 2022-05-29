import 'package:flutter/material.dart';

import '../../../components/label_name.dart';
import '../../../constants.dart';
import 'list_header.dart';
import 'link_kalender.dart';
import 'jadwal_ujian_item.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                LinkHeader('Semua', true),
                LinkHeader('Proposal', false),
                LinkHeader('Pratesis', false),
                LinkHeader('Tesis', false),
              ],
            ),
          ),
          LabelSubHeader('Bulan'),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                LinkKalender('Januari', '2022', true),
                LinkKalender('Februari', '2022', false),
                LinkKalender('Maret', '2022', false),
                LinkKalender('April', '2022', false),
                LinkKalender('Mei', '2022', false),
                LinkKalender('Juni', '2022', false),
                LinkKalender('Juli', '2022', false),
                LinkKalender('Agustus', '2022', false),
                LinkKalender('September', '2022', false),
                LinkKalender('Oktober', '2022', false),
                LinkKalender('November', '2022', false),
                LinkKalender('Desember', '2022', false),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          LabelSubHeader('Jadwal Ujian'),
          Container(
            height: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                JadwalUjianItem(
                  'Ilmu Komputer',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Senin, 13 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Sistem Informasi',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Selasa, 14 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Ilmu Komputer',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Senin, 13 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Sistem Informasi',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Selasa, 14 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Ilmu Komputer',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Senin, 13 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Sistem Informasi',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Selasa, 14 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Ilmu Komputer',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Senin, 13 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
                JadwalUjianItem(
                  'Sistem Informasi',
                  'The Internet of Things (IoT): Applications, investments, and challenges for enterprises',
                  'Selasa, 14 Jan 2022',
                  'Zoom Meeting',
                  'John Doe',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class JadwalItem extends StatelessWidget {
  final String kodeMataKuliah;
  final String judulTesis;
  final String ruangKuliah;
  final String pengajarMataKuliah;
  final String waktuKuliah;

  JadwalItem(this.kodeMataKuliah, this.judulTesis, this.ruangKuliah,
      this.pengajarMataKuliah, this.waktuKuliah);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xff0073AC),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Text(
                waktuKuliah,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kodeMataKuliah,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    judulTesis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        ruangKuliah,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    pengajarMataKuliah,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
