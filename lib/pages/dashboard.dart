// import 'package:expense/pages/expense/expenselanding.dart';
import 'package:expense/pages/expense/new_expense.dart';
import 'package:expense/pages/home_casestudy.dart';
// import 'package:expense/pages/kcsm/casestudy.dart';
import 'package:expense/utilities/style.dart';
//import 'package:kcsm/pages/casestudy.dart';
//import 'package:kcsm/pages/home_casestudy.dart';
//import 'package:kcsm/utilities/style.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // primary:
        slivers: <Widget>[
          SliverAppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //decoration: BoxDecoration(),
                    child: Image.asset('assets/images/landing1.png'),
                  ),
                  Wrap(
                    children: [
                      Container(
                        //decoration: BoxDecoration(),
                        child: Image.asset('assets/icons/KEBSlogoIcon.png'),
                      ),
                      Text(" KEBS", style: kkebsStyle),
                      const SizedBox(
                        width: 85,
                      ),
                    ],
                  ),
                  Container(
                    child: Image.asset('assets/images/search.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/doc.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/notifi.png'),
                  )
                ],
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(10),
                  child: 
                  Container(
                    //color: Colors.yellow,
                    decoration: BoxDecoration(
                        color: kColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Center(
                        child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(131, 158, 158, 158),
                          borderRadius: BorderRadius.circular(10)),
                      width: 70,
                      height: 5,
                    )),
                  )
                  ),
              
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: kprimary,
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                  // title: Text(
                  //   'Portfolio',
                  //   style: TextStyle(color: Colors.black),
                  // ),
                  background: Container(
                color: kprimary,
                child: Stack(children: <Widget>[
                  Container(
                      width: double.maxFinite,
                      child: Image.asset('assets/images/landing2.png',
                          fit: BoxFit.fill)),
                  Container(
                    alignment: Alignment.topRight,
                    //color: Colors.blue,
                    //width: double.maxFinite,
                    child: Image.asset(
                      'assets/images/landing3.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 75.0, horizontal: 25),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Welcome Back,John!',
                            style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '02 November 2022',
                            style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Pending Approvals',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Plus Jakarta Sans'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180.0),
                    child: SizedBox(
                      //width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          alignment: WrapAlignment.end,
                          spacing: 12,
                          //crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            const SizedBox(),
                            Container(
                              padding: const EdgeInsets.all(16),
                              width: 116,
                              height: 104,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDC3E4B),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    '02',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    'Expense\nRequests',
                                    style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Colors.white),
                                  ),
                                ],
                              ),

                              //color: Colors.yellow,

                              // Padding(
                              //   padding: const EdgeInsets.only(top: 128.0),
                              //   child: Row(
                              //     children: [
                              //       Container(
                              //         decoration: ,
                              //         color: Colors.red,
                              //       )
                              //     ],
                              //   ),
                              //   // child: GridView.builder(
                              //   //   itemCount: list.length,
                              //   //   itemBuilder: (context, index) {
                              //   //     return Card(
                              //   //       color: Colors.red,
                              //   //     );
                              //   //   },
                              //   //   gridDelegate:
                              //   //       SliverGridDelegateWithFixedCrossAxisCount(
                              //   //           crossAxisCount: 3),
                              //   // ),
                              // ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              width: 116,
                              height: 104,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDC3E4B),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    '02',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    'Leave\nRequests',
                                    style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              width: 116,
                              height: 104,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDC3E4B),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    '04',
                                    style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    'Tasks',
                                    style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              width: 116,
                              height: 104,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDC3E4B),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    '04',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    'Varience',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ),
                  // background: Container(
                  //   color: const Color.fromARGB(175, 255, 82, 82),
                  //   child: Stack(
                  //     children: <Widget>[
                  //       Container(
                  //           width: double.maxFinite,
                  //           child: Image.asset('assets/images/landing2.png',
                  //               fit: BoxFit.fill)),
                  //       Container(
                  //         alignment: Alignment.topRight,
                  //         //color: Colors.blue,
                  //         //width: double.maxFinite,
                  //         child: Image.asset(
                  //           'assets/images/landing3.png',
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(
                  //             vertical: 75.0, horizontal: 25),
                  //         child: Container(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               const Text(
                  //                 'Welcome Back,John!',
                  //                 style:
                  //                     TextStyle(color: Colors.white, fontSize: 20),
                  //               ),
                  //               SizedBox(
                  //                 height: 7,
                  //               ),
                  //               const Text(
                  //                 '02 November 2022',
                  //                 style:
                  //                     TextStyle(color: Colors.white, fontSize: 12),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 130.0),
                  //         child: Container(
                  //           child: Row(
                  //             //crossAxisAlignment: CrossAxisAlignment.center,
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             children: [
                  //               Container(
                  //                 width: 100,
                  //                 height: 100,
                  //                 decoration: BoxDecoration(
                  //                   color: const Color(0xFFDC3E4B),
                  //                   borderRadius: BorderRadius.circular(20),
                  //                 ),
                  //                 child: const Center(
                  //                     child: Text(
                  //                   'Approvals',
                  //                   style: TextStyle(color: Colors.white),
                  //                 )),

                  //                 //color: Colors.yellow,

                  //                 // Padding(
                  //                 //   padding: const EdgeInsets.only(top: 128.0),
                  //                 //   child: Row(
                  //                 //     children: [
                  //                 //       Container(
                  //                 //         decoration: ,
                  //                 //         color: Colors.red,
                  //                 //       )
                  //                 //     ],
                  //                 //   ),
                  //                 //   // child: GridView.builder(
                  //                 //   //   itemCount: list.length,
                  //                 //   //   itemBuilder: (context, index) {
                  //                 //   //     return Card(
                  //                 //   //       color: Colors.red,
                  //                 //   //     );
                  //                 //   //   },
                  //                 //   //   gridDelegate:
                  //                 //   //       SliverGridDelegateWithFixedCrossAxisCount(
                  //                 //   //           crossAxisCount: 3),
                  //                 //   // ),
                  //                 // ),
                  //               ),
                  //               Container(
                  //                 child: const Center(
                  //                     child: Text('Leave\nRequest',
                  //                         style: TextStyle(color: Colors.white))),
                  //                 width: 100,
                  //                 height: 100,
                  //                 decoration: BoxDecoration(
                  //                   color: const Color(0xFFDC3E4B),
                  //                   borderRadius: BorderRadius.circular(20),
                  //                 ),
                  //               ),
                  //               Container(
                  //                 width: 100,
                  //                 height: 100,
                  //                 child: const Center(
                  //                     child: Text('Tasks',
                  //                         style: TextStyle(color: Colors.white))),
                  //                 decoration: BoxDecoration(
                  //                   color: const Color(0xFFDC3E4B),
                  //                   borderRadius: BorderRadius.circular(20),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       // Positioned(
                  //       //     top: 100,
                  //       //     left: 20,
                  //       //     child: Container(
                  //       //       child: const Text(
                  //       //         'Welcome Back,John!',
                  //       //         style: TextStyle(color: Colors.white, fontSize: 20),
                  //       //       ),
                  //       //     )),
                  //       // Positioned(
                  //       //     top: 130,
                  //       //     left: 20,
                  //       //     child: Container(
                  //       //       child: const Text(
                  //       //         '02 November 2022',
                  //       //         style: TextStyle(color: Colors.white, fontSize: 12),
                  //       //       ),
                  //       //     )),
                  //       // Positioned(
                  //       //   // top: 150,
                  //       //   child: Padding(
                  //       //     padding: const EdgeInsets.only(top: 198.0),
                  //       //     child:

                  //       //   ),
                  //       // )
                  //     ],
                  //   ),
                  // ),
                ]),
              ))),
          SliverFillRemaining(
            child: _buildContent(),
          ),
        ],
      ),
      // floatingActionButton: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.only(top: 600.0, left: 40),
      //     child: SizedBox(
      //       // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      //       width: 130,
      //       child: FloatingActionButton(
      //         elevation: 20,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(40)),
      //         backgroundColor: Color(0xFFEE4961),
      //         onPressed: () {},
      //         child: const Text('+ Create'),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  List<String> headList = [
    "CRM",
    "Sales",
    "Finance",
    "Human Resources",
    "Project Management"
  ];

  Center _buildContent() {
    return Center(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // physics: const ScrollPhysics(),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: kColor),
            //decoration: BoxDecoration(color: kColor),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 1),
              shrinkWrap: true,
              itemCount: headList.length,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 11.0, vertical: 5),
                          // height: 20.0,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              headList[index] == "CRM"
                                  ? const Icon(Icons.radio,
                                      size: 18,
                                      color: Color.fromRGBO(17, 20, 52, 1))
                                  : headList[index] == "Sales"
                                      ? (const Icon(Icons.co2))
                                      : const Icon(Icons.bolt),
                              const Padding(
                                  padding: EdgeInsets.only(right: 5.0)),
                              Text(headList[index],
                                  style: const TextStyle(
                                      color: Color(0xff111434),
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1)),
                            ],
                          ),
                        ),
                        Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(26)),
                          //color: Colors.yellow,
                          height: MediaQuery.of(context).size.height / 3.6,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.count(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 4,
                              children: List.generate(choices.length, (index) {
                                return Center(
                                  child: SelectCard(choice: choices[index]),
                                );
                              })
                              // ListView.builder(
                              //   shrinkWrap: true,
                              //   scrollDirection: Axis.horizontal,
                              //   itemCount: 7,
                              //   itemBuilder: (context, index) {
                              //     return Row(
                              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //       crossAxisAlignment: CrossAxisAlignment.center,
                              //       children: [
                              //         Column(
                              //           children: [
                              //             Container(
                              //               margin: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
                              //                 width: 56,
                              //                 height: 56,
                              //                 decoration: const BoxDecoration(
                              //                   color : Color.fromRGBO(245, 245, 246, 1),
                              //                   borderRadius : BorderRadius.all(Radius.elliptical(56, 56)),
                              //
                              //                 ),
                              //
                              //             ),
                              //             Text(' $index')
                              //           ],
                              //         ),
                              //       ],
                              //     );
                              //   },
                              ),
                        ),
                        //const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
    //   Center(
    //     child: Padding(
    //   padding: const EdgeInsets.all(10.0),
    //   child: Container(
    //     decoration: BoxDecoration(color: const Color(0xFFF6F6F7)),
    //     child: Stack(children: <Widget>[
    //       Positioned(top: 0, child: Image.asset('assets/images/landing4.png')),
    //       Positioned(
    //           top: 156,
    //           left: 125,
    //           child: IconButton(
    //               icon: const Icon(Icons.work),
    //               onPressed: () {
    //                 Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                         builder: (context) => HomeCasestudy()));
    //               })),
    //     ]),
    //   ),
    // ));
  }
}

// import 'package:expense/pages/homepage.dart';
// import 'package:expense/utilities/appbar.dart';
// import 'package:expense/utilities/style.dart';
// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   List<String> list = ["Expense", "HR"];
//   int currentIndex = 0;
//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: const PreferredSize(
//         //   child: ExpenseAppBar(),
//         //   preferredSize: Size.fromHeight(60),
//         // ),
//         // drawer: const Drawer(
//         //   child: Center(child: Text("Profile")),
//         // ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //     onTap: onTap,
//         //     selectedFontSize: 0,
//         //     unselectedFontSize: 0,
//         //     currentIndex: currentIndex,
//         //     selectedItemColor: Colors.red,
//         //     unselectedItemColor: Colors.grey.shade400,
//         //     type: BottomNavigationBarType.shifting,
//         //     //selectedItemColor: kCupertinoModalBarrierColor,
//         //     backgroundColor: Colors.white24,
//         //     items: const <BottomNavigationBarItem>[
//         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.settings), label: 'Settings')
//         //     ]),
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           expandedHeight: 300,
//           //backgroundColor: Colors.redAccent,
//           flexibleSpace: FlexibleSpaceBar(
//             background: Image.asset(
//               'assets/images/kebs_logo.jpg',
//               width: double.maxFinite,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: Text('dfbvdkfbbvjkkvbjv'),
//         )
//       ],
//     )

//         //  SafeArea(
//         //   child: Padding(
//         //     padding: const EdgeInsets.all(8.0),
//         //     child: Container(
//         //       //color: Colors.red,
//         //       child: Row(
//         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //         children: <Widget>[
//         //           GestureDetector(
//         //             onTap: () {
//         //               Navigator.push(
//         //                   context,
//         //                   MaterialPageRoute(
//         //                       builder: (context) => const HomePage()));
//         //             },
//         //             child: SizedBox(
//         //               height: 180,
//         //               width: 180,
//         //               child: Card(
//         //                 elevation: 8,
//         //                 shadowColor: Colors.grey,
//         //                 color: Colors.white,

//         //                 child: Column(
//         //                   // mainAxisAlignment: MainAxisAlignment.center,
//         //                   children: <Widget>[
//         //                     Image.asset(
//         //                       'assets/images/time_stats.png',
//         //                       height: 140,
//         //                       width: 75,
//         //                     ),

//         //                     Text(
//         //                       "HR",
//         //                       textAlign: TextAlign.center,
//         //                       style: kTextStyle,
//         //                     ),

//         //                     //Icon(Icons.stop),
//         //                   ],
//         //                 ),

//         //                 // (
//         //                 // GridView.builder(
//         //                 //   itemCount: list.length,
//         //                 //   itemBuilder: ((context, index) {
//         //                 //     return Padding(
//         //                 //       padding: const EdgeInsets.all(5.0),
//         //                 //       child:
//         //                 //       Card(
//         //                 //         color: Colors.white24,

//         //                 //         child: Column(
//         //                 //           // mainAxisAlignment: MainAxisAlignment.center,
//         //                 //           children: <Widget>[
//         //                 //             Image.asset(
//         //                 //               'assets/images/time_stats.png',
//         //                 //               height: 140,
//         //                 //               width: 75,
//         //                 //             ),
//         //                 //             // Text(
//         //                 //             //   list[index],
//         //                 //             //   textAlign: TextAlign.center,
//         //                 //             //   style: const TextStyle(
//         //                 //             //       fontSize: 20,
//         //                 //             //       fontWeight: FontWeight.bold,
//         //                 //             //       color: Colors.black38),
//         //                 //             // ),
//         //                 //             const Text(
//         //                 //               "Expense",
//         //                 //               textAlign: TextAlign.center,
//         //                 //               style: TextStyle(
//         //                 //                   fontSize: 20,
//         //                 //                   fontWeight: FontWeight.bold,
//         //                 //                   color: Colors.black38),
//         //                 //             ),

//         //                 //             //Icon(Icons.stop),
//         //                 //           ],
//         //                 //         ),

//         //                 //         // child: Card(
//         //                 //         //     color: Colors.red,
//         //                 //         //     child: Column(
//         //                 //         //       children: [Icon(Icons.stop), Text(list[index])],
//         //                 //         //     )),
//         //                 //       ),
//         //                 //     );
//         //                 //   }),
//         //                 //   gridDelegate:
//         //                 //       const SliverGridDelegateWithFixedCrossAxisCount(
//         //                 //           crossAxisCount: 2)
//         //                 //           )
//         //               ),
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             height: 180,
//         //             width: 180,
//         //             child: Card(
//         //               elevation: 8,
//         //               shadowColor: Colors.grey,
//         //               color: Colors.white,
//         //               child: Column(
//         //                 // mainAxisAlignment: MainAxisAlignment.center,
//         //                 children: <Widget>[
//         //                   Image.asset(
//         //                     'assets/images/time_stats.png',
//         //                     height: 140,
//         //                     width: 75,
//         //                   ),

//         //                   Text("Expense",
//         //                       textAlign: TextAlign.center, style: kTextStyle),

//         //                   //Icon(Icons.stop),
//         //                 ],
//         //               ),
//         //             ),
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //   ),
//         // ),
//         );
//   }
// }

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

List<Choice> choices = <Choice>[
  const Choice(title: 'Dashboard', icon: Icons.grid_goldenratio_outlined),
  const Choice(title: 'MIS', icon: Icons.contacts),
  const Choice(title: 'Cash Flow', icon: Icons.map),
  const Choice(title: 'Expense', icon: Icons.explore),
  const Choice(title: 'Case Study', icon: Icons.currency_exchange_rounded),
  // const Choice(title: 'Case Study', icon: Icons.currency_exchange_rounded),
  // const Choice(title: 'Case Study', icon: Icons.currency_exchange_rounded),
  // const Choice(title: 'Case Study', icon: Icons.currency_exchange_rounded),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                //color: Colors.yellow,
                color: Color.fromRGBO(245, 245, 246, 1),
                borderRadius: BorderRadius.all(Radius.elliptical(56, 56)),
              ),
              child: IconButton(
                splashRadius: 1,
                icon:
                    Icon(choice.icon, size: 24, color: const Color(0xFF45546E)),
                iconSize: 50,
                color: Colors.green,
                // splashColor: Colors.purple,
                onPressed: () {
                  if (choice.title == "Case Study") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeCasestudy()));
                  } else if (choice.title == "Expense") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewExpense()));
                  } else if (choice.title == "Dashboard") {
                    //Navigator.popUntil(context, ModalRoute.withName('/login'));
                    Navigator.pop(context);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const NewExpense()));
                  } else {}
                },
              ),
            ),
            Text(choice.title,
                style: const TextStyle(
                    color: Color.fromRGBO(17, 20, 52, 1),
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 13,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                    height: 1.1))
          ],
        )
        // Column(children: [
        //     Container(
        //       margin: const EdgeInsets.symmetric(vertical: 10.0),
        //       width: 40,
        //       height: 40,
        //       decoration: const BoxDecoration(
        //         color: Colors.yellow,
        //         // color: Color.fromRGBO(245, 245, 246, 1),
        //         borderRadius: BorderRadius.all(Radius.elliptical(56, 56)),
        //       ),
        //       child: IconButton(
        //         splashRadius: 1,
        //         icon: Icon(choice.icon,
        //             size: 24, color: const Color(0xFF45546E)),
        //         iconSize: 50,
        //         color: Colors.green,
        //         // splashColor: Colors.purple,
        //         onPressed: () {
        //           if (choice.title == "Case Study") {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => const HomeCasestudy()));
        //           } else if (choice.title == "Expense") {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => const NewExpense()));
        //           } else {}
        //         },
        //       ),
        //     ),
        //     Text(choice.title,
        //         style: const TextStyle(
        //             color: Color.fromRGBO(17, 20, 52, 1),
        //             fontFamily: 'Plus Jakarta Sans',
        //             fontSize: 13,
        //             letterSpacing: 0,
        //             fontWeight: FontWeight.w500,
        //             height: 1.1))
        //   ])
      ],
    );
  }
}
