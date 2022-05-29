import 'package:flutter/material.dart';

import '../../../constants.dart';

class CapaianAkademik extends StatelessWidget {
  const CapaianAkademik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Capaian Kemajuan Akademik',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              StatusCapaian('Status Proposal'),
              StatusCapaian('Status Pra Tesis'),
              StatusCapaian('Status Tesis'),
            ],
          ),
        ],
      ),
    );
  }
}

class StatusCapaian extends StatelessWidget {
  final String judulKeterangan;

  StatusCapaian(this.judulKeterangan);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 160,
            child: Text(
              judulKeterangan,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            ' : ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 1,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.check_circle,
                  size: 15,
                  color: Colors.white,
                ),
                Text(
                  ' Lulus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
