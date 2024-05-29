import 'package:e_shop/screens/account.dart';
import 'package:e_shop/screens/home.dart';
import 'package:e_shop/screens/products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  List<Widget> pages = [
    Home(),
    Accounts(),
    Products(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("E- Shop"),
          ),
          Container(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              dividerColor: Colors.transparent,

              tabs: [
                Tab(
                  text: "Bangladesh",
                ),
                Tab(
                  text: "India",
                ),
                Tab(
                  text: "Pakistan",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: pages,
            ),
          ),
        ],
      ),
    );
  }
}
