// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:serchapp_test/main.dart';
import 'package:serchapp_test/bottomnavbar.dart';
import 'package:serchapp_test/model/servermodel.dart';

List<Widget> pages = [
  Scaffold(
    body: FutureBuilder(
      future: getdataapi(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          dynamic temp = snapshot.data;

          List<modelserver> result = List.generate(
              temp.length, (index) => modelserver.fromMap(temp[index]));

          return ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    title: Text(result[index].limit.toString()),
                    subtitle: Text(result[index].total.toString()),
                  ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: result.length);
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: Text('Error'),
          );
        }
      },
    ),
  ),
  // Column(
  //   children: [
  //     Text('${listgetdata.length}'),
  //     Row(
  //       children: [
  //         SizedBox(
  //           width: 250,
  //           child: TextField(
  //             decoration: InputDecoration(
  //                 label: Text('Serch'),
  //                 hintText: 'Serch',
  //                 prefixIcon: Icon(Icons.search)),
  //             onChanged: (value) {},
  //           ),
  //         ),
  //         Container(
  //           width: 20,
  //           height: 20,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(20),
  //           ),
  //           child: Center(child: Icon(Icons.voice_chat)),
  //         ),
  //       ],
  //     ),
  //     // Container(width: double.maxFinite, height: 200, child: Text('alaa'))
  //     // GridView.builder(gridDelegate: , itemBuilder: 2)
  //   ],
  // ),

  Scaffold(),
  Scaffold(),
];
