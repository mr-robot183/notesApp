import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(

      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          color: Colors.indigo,
          padding: EdgeInsets.all(5),
          child: FloatingActionButton(
            child: IconButton(
              icon: Icon(Icons.add, size: 35,),
            ),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.indigo,
        items: const <BottomNavigationBarItem> [

        BottomNavigationBarItem(
          icon: Icon(Icons.note,size: 30,),
          label: "Notes"
        ),
//        BottomNavigationBarItem(
//          icon: null,
//          label: null,
//        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.restore_from_trash, size: 30),
          label: "Trash"
        )
      ],
    ),
      body: SafeArea(
        child: SingleChildScrollView(),
      ),
    );
  }
}
