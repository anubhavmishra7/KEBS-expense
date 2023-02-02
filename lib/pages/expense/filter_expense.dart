import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ExpenseFilter extends StatefulWidget {
  const ExpenseFilter({super.key});

  @override
  State<ExpenseFilter> createState() => _ExpenseFilterState();
}

class _ExpenseFilterState extends State<ExpenseFilter> {
  int selectedindex = 0;

  onTapped(index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xffD7D7D7),
          title: Text(
            "Filters",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 16,
                color: Color(0xff45546E)),
          ),
          // leading: Icon(
          //   Icons.filter_list,
          //   color: Color(0xff45546E),
          // ),
          actions: [
            Icon(
              Icons.close,
              color: Color(0xff45546E),
            )
          ]),
      drawer: Drawer(
        width: 120,
        elevation: 0,
        child: Container(
          child: Text("Hehe"),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: RotatedBox(
              quarterTurns: 5,
              child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Color(0xffD3D3D3)),
                  child: GNav(tabs: [
                    GButton(
                      icon: Icons.search,
                    ),
                    GButton(icon: (Icons.abc)),
                    GButton(icon: (Icons.search)),
                    GButton(icon: (Icons.golf_course)),
                    GButton(icon: (Icons.media_bluetooth_off)),
                  ])
                  // BottomNavigationBar(
                  //     elevation: 0,
                  //     selectedItemColor: Colors.black,
                  //     unselectedItemColor: Colors.blue,
                  //     type: BottomNavigationBarType.shifting,
                  //     currentIndex: selectedindex,
                  //     onTap: onTapped,
                  //     items: [
                  //       BottomNavigationBarItem(
                  //           icon: widget(child: Text("Claim Type")), label: ""),
                  //       BottomNavigationBarItem(
                  //           icon: Icon(Icons.golf_course), label: "Golf"),
                  //       BottomNavigationBarItem(
                  //           icon: Icon(Icons.abc), label: "Abc")
                  //     ]),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
