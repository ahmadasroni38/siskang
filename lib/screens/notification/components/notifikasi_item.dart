import 'package:flutter/material.dart';

class NotifikasiItem extends StatelessWidget {
  final Widget typeNotif;
  final String tanggalNotif;
  final String titleNotif;
  final String deskripsiNotif;
  final String imageNotif;

  NotifikasiItem(
    this.typeNotif,
    this.tanggalNotif,
    this.titleNotif,
    this.deskripsiNotif,
    this.imageNotif,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.lightGreen,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      typeNotif,
                      Text(
                        tanggalNotif,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    titleNotif,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    deskripsiNotif,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: imageNotif.isNotEmpty
                        ? Image.asset(
                            imageNotif,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Text(""),
                  ),
                  //
                  // ),
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 90,
                  //       child: Text(
                  //         'Waktu',
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //         ),
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //         softWrap: true,
                  //       ),
                  //     ),
                  //     Text(
                  //       ': ' + tanggalNotif,
                  //       style: TextStyle(
                  //         fontSize: 14,
                  //       ),
                  //       maxLines: 1,
                  //       overflow: TextOverflow.ellipsis,
                  //       softWrap: true,
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 90,
                  //       child: Text(
                  //         'Tempat',
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //         ),
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //         softWrap: true,
                  //       ),
                  //     ),
                  //     Text(
                  //       ': ' + typeNotif,
                  //       style: TextStyle(
                  //         fontSize: 14,
                  //       ),
                  //       maxLines: 1,
                  //       overflow: TextOverflow.ellipsis,
                  //       softWrap: true,
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 90,
                  //       child: Text(
                  //         'Mahasiswa',
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //         ),
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //         softWrap: true,
                  //       ),
                  //     ),
                  //     Text(
                  //       ': ' + imageNotif,
                  //       style: TextStyle(
                  //         fontSize: 14,
                  //       ),
                  //       maxLines: 1,
                  //       overflow: TextOverflow.ellipsis,
                  //       softWrap: true,
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       titleNotif,
                  //       style: TextStyle(
                  //           fontSize: 15, fontWeight: FontWeight.bold),
                  //       maxLines: 1,
                  //       overflow: TextOverflow.ellipsis,
                  //       softWrap: false,
                  //     ),
                  //     Container(
                  //       padding:
                  //           EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(50),
                  //         color: Theme.of(context).primaryColor,
                  //       ),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Detail Ujian',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 12,
                  //             ),
                  //           ),
                  //           Icon(
                  //             Icons.chevron_right,
                  //             size: 13,
                  //             color: Colors.white,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
