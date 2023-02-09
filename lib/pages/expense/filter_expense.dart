import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: const Icon(
            Icons.filter_list,
            color: Color(0xff45546E),
          ),
          elevation: 0,
          backgroundColor: const Color(0xffD7D7D7),
          title: const Text(
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
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
              color: const Color(0xff45546E),
            ),
            const SizedBox(
              width: 20,
            )
          ]),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.yellow,
            width: 120,
            child: NavigationRail(
              //elevation: 1,
              //selectedIconThemse: IconThemeData(color: Colors.white),
              backgroundColor: const Color(0xffD3D3D3),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              // selectedIconTheme: IconThemeData(color: Colors.black),
              // labelType: NavigationRailLabelType.all,
              destinations: [
                NavigationRailDestination(
                  padding: EdgeInsets.zero,
                  icon: const Center(
                    child: Text(
                      "Claim Status",
                    ),
                  ),
                  selectedIcon: Container(
                    // padding: EdgeInsets.all(10),
                    child:
                        Center(child: Container(child: const Text("Claim Status"))),
                    color: Colors.white,
                  ),
                  // selectedIcon: Icon(Icons.favorite),
                  label: const Text(""),
                ),
                NavigationRailDestination(
                  icon: const Text("Amount"),
                  selectedIcon: Container(
                    //padding: EdgeInsets.zero,
                    child: const Center(child: Text("Amount")),
                    color: Colors.white,
                  ),
                  // selectedIcon: Icon(Icons.favorite),
                  label: const Text(""),
                ),
                NavigationRailDestination(
                  icon: const Text("Claim Type"),
                  selectedIcon: Container(
                    //padding: EdgeInsets.zero,
                    child: const Center(child: Text("Claim Type")),
                    color: Colors.white,
                  ),
                  // selectedIcon: Icon(Icons.favorite),
                  label: const Text(''),
                ),
                NavigationRailDestination(
                  selectedIcon: Container(
                    //padding: EdgeInsets.zero,
                    child: const Center(child: Text("Claim Status")),
                    color: Colors.white,
                  ),
                  icon: const Text("Claim Status"),
                  // selectedIcon: Icon(Icons.favorite),
                  label: const Text(''),
                ),
                NavigationRailDestination(
                  selectedIcon: Container(
                    //padding: EdgeInsets.zero,
                    child: const Center(child: Text("Year")),
                    color: Colors.white,
                  ),
                  icon: const Text("Year"),
                  // selectedIcon: Icon(Icons.favorite),
                  label: const Text(''),
                ),
              ],
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          // This is the main content.
          Expanded(
            child: Center(
              child: Column(
                children: [
                  SvgPicture.asset("assets/images/Logo.svg"),
                  Text('selectedIndex: $_selectedIndex'),
                ],
              ),
            ),
          )
        ],
      ),
      // Column(
      //   children: [
      //     // Flexible(
      //     //   child: RotatedBox(
      //     //     quarterTurns: 5,
      //     //     child: Theme(
      //     //         data: Theme.of(context)
      //     //             .copyWith(canvasColor: Color(0xffD3D3D3)),
      //     //         child: const GNav(tabs: [
      //     //           GButton(
      //     //             icon: Icons.search,
      //     //           ),
      //     //           GButton(icon: (Icons.abc)),
      //     //           GButton(icon: (Icons.search)),
      //     //           GButton(icon: (Icons.golf_course)),
      //     //           GButton(icon: (Icons.media_bluetooth_off)),
      //     //         ])
      //     //         // BottomNavigationBar(
      //     //         //     elevation: 0,
      //     //         //     selectedItemColor: Colors.black,
      //     //         //     unselectedItemColor: Colors.blue,
      //     //         //     type: BottomNavigationBarType.shifting,
      //     //         //     currentIndex: selectedindex,
      //     //         //     onTap: onTapped,
      //     //         //     items: [
      //     //         //       BottomNavigationBarItem(
      //     //         //           icon: widget(child: Text("Claim Type")), label: ""),
      //     //         //       BottomNavigationBarItem(
      //     //         //           icon: Icon(Icons.golf_course), label: "Golf"),
      //     //         //       BottomNavigationBarItem(
      //     //         //           icon: Icon(Icons.abc), label: "Abc")
      //     //         //     ]),
      //     //         ),
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}
