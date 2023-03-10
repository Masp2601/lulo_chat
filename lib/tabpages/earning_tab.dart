import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String request = 'https://api.hgbrasil.com/finance?key=df69b4ac';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const EarningsTabPage(),
    theme: ThemeData(
        hintColor: Colors.orange,
        primaryColor: Colors.orange,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          hintStyle: TextStyle(color: Colors.orange),
        )),
  ));
}

Future<Map> getData() async {
  final uri = Uri.parse(request);
  var response = await http.get(uri);
  return json.decode(response.body);
}

class EarningsTabPage extends StatefulWidget {
  const EarningsTabPage({Key? key}) : super(key: key);

  @override
  State<EarningsTabPage> createState() => _EarningsTabPageState();
}

class _EarningsTabPageState extends State<EarningsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Mensajes',
            style: TextStyle(color: Colors.black, fontSize: 24)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
