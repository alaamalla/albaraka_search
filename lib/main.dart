import 'package:flutter/material.dart';
import 'package:serchapp_test/bottomnavbar.dart';
import 'package:dio/dio.dart';
import 'dart:convert' as convert;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarExample(),
    );
  }
}

getdataapi() async {
  Dio dio = Dio();
  Response response = await dio.get('https://dummyjson.com/docs/products');
  // var data = Map.from(response.data);
  // var data = convert.JsonDecoder(response.data);
  if (response.statusCode == 200) {
    print(response.data);
    return response.data;
  } else {
    return 'no data';
  }
}
