import 'package:base_response_api/models/oder_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Order> getOrder() async {
    final response =
        new BaseResponse<Order>().parseJson(jsonDecode(json), Order());

    Order order = response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Order>(
          future: getOrder(),
          initialData: Order(items: [], orderId: "", price: 0.0),
          builder: (context, snapshot) {
            return ListView.builder(itemBuilder: (context, index) {
              return Column(
                children: [
                
                ],
              );
            });
          }),
    );
  }
}
