import 'package:app_aprendaingles/TelaBichos.dart';
import 'package:app_aprendaingles/TelaNumeros.dart';
import 'package:flutter/material.dart';

import 'TelaVogais.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      primaryColor: Colors.purple,
      //accentColor: Colors.green
      scaffoldBackgroundColor: Color(0xfff5e9b9)
    ),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
  TabController? _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff795548),
        title: Text('Aprenda Inglês'),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: 'Bichos',
            ),
            Tab(
              text: 'Números',
            ),
            Tab(
              text: 'Vogais',
            )
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          TelaBichos(),
          TelaNumeros(),
          TelaVogais()
        ],
      ),
    );
  }
}

