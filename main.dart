import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MMesenger",
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: CustomTabBar(),
      );
  }
}

 class CustomTabBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Chat", style: TextStyle(fontWeight: FontWeight.bold),),
              centerTitle: true,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: null, color: Colors.black)
              ],
            ),
          bottomNavigationBar: TabBar(
            tabs: [
                Tab(icon: Icon(Icons.chat), text: "Чат",),
                Tab(icon: Icon(Icons.call), text: "Звонки"),
                Tab(icon: Icon(Icons.account_circle), text: "Профиль",),
              ],
            unselectedLabelColor: Color(0xFF808080),
            labelColor: Colors.black,
            indicatorColor: Colors.transparent,
          ),
        ),
    );
  }
}