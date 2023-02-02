import 'package:expense/models/expense/claimtypemodel.dart';
import 'package:expense/pages/expense/createnewclaim.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../utilities/style.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  int expense = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Expenses",
            style: TextStyle(
              fontSize: 15,
              fontFamily: kfontFamily,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Stack(children: [
            Container(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/landing2.png"),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/landing3.png"),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF6F6F7),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ListTile(
                                title: Text("No expenses!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13)),
                                // trailing: Wrap(spacing: 10, children: [
                                //   Icon(
                                //     Icons.search,
                                //     color: Colors.black,
                                //   ),
                                //   Icon(
                                //     Icons.filter_list,
                                //     color: Colors.black,
                                //   )
                                // ]
                                // ),
                              ),
                              SingleChildScrollView(
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 75.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/expense.png",
                                          scale: 2.2,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        RichText(
                                            textAlign: TextAlign.center,
                                            strutStyle:
                                                const StrutStyle(height: 1),
                                            text: TextSpan(
                                                style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12),
                                                children: <InlineSpan>[
                                                  TextSpan(
                                                      text: "It's Empty Here!",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontFamily:
                                                              kfontFamily,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.black)),
                                                  const TextSpan(
                                                      text:
                                                          "\n\nSubmit bills if you have spent\nbehalf of the company and get it reimbursed.\n\n")
                                                ])),
                                        SizedBox(
                                          width: 211,
                                          height: 64,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32)),
                                                  // shape: const StadiumBorder(
                                                  //   side: BorderSide()
                                                  // ),
                                                  elevation: 17,
                                                  backgroundColor: kprimary),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CreateNewClaim()));
                                              },
                                              child: const Text(
                                                " +  Create New Claim",
                                                style: TextStyle(fontSize: 14),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                      ],
                    )))
          ]),
        ));

    // return Scaffold(
    //   // floatingActionButton: Container(
    //   //   width: MediaQuery.of(context).size.width,
    //   //   child: FloatingActionButton(
    //   //       onPressed: () {}, child: Image.asset("assets/images/bottom4.png")),
    //   // ),
    //   backgroundColor: const Color(0xFFEE4961),
    //   body: CustomScrollView(
    //     slivers: <Widget>[
    //       SliverAppBar(
    //         leading: IconButton(
    //           onPressed: () {
    //             Navigator.pop(context);
    //           },
    //           icon: const Icon(Icons.arrow_back),
    //         ),
    //         title: const Text(
    //           "Expenses",
    //           style: TextStyle(fontSize: 15),
    //         ),
    //         backgroundColor: Colors.redAccent,
    //         expandedHeight: 50,
    //         pinned: true,
    //         flexibleSpace: FlexibleSpaceBar(
    //           background: SafeArea(
    //             child: Stack(
    //               children: <Widget>[
    //                 Container(
    //                     width: double.infinity,
    //                     child: Image.asset(
    //                       'assets/images/landing2.png',
    //                       fit: BoxFit.fitWidth,
    //                     )),
    //                 Container(
    //                     //alignment: Alignment.center,
    //                     width: double.infinity,
    //                     child: Image.asset(
    //                       'assets/images/landing3.png',
    //                       fit: BoxFit.fitWidth,
    //                     )),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //       SliverFillRemaining(
    //         child: _buildContents1(context),
    //       )
    //     ],
    //   ),
    // );
  }
}

//final checked = true;
// _buildContents1(BuildContext context) {
//   if (checked) {
//     return Container(
//       decoration: const BoxDecoration(
//           color: Color(0xFFF6F6F7),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 25.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: const [
//                     Text(
//                       "     No Expenses!",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 75.0),
//             child: Column(
//               children: [
//                 Image.asset(
//                   "assets/images/expense.png",
//                   scale: 2.2,
//                 ),
//                 RichText(
//                     textAlign: TextAlign.center,
//                     strutStyle: const StrutStyle(height: 1),
//                     text: const TextSpan(
//                         style: TextStyle(color: Colors.grey, fontSize: 12),
//                         children: <InlineSpan>[
//                           TextSpan(
//                               text: "It's Empty Here!",
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.black)),
//                           TextSpan(
//                               text:
//                                   "\n\nSubmit bills if you have spent\nbehalf of the company and get it reimbursed.\n\n")
//                         ])),
//                 SizedBox(
//                   width: 211,
//                   height: 64,
//                   child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           shape: const StadiumBorder(),
//                           elevation: 17,
//                           backgroundColor: Colors.redAccent),
//                       onPressed: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => const CreateNewClaim()));
//                       },
//                       child: const Text(
//                         " +  Create New Claim",
//                         style: TextStyle(fontSize: 14),
//                       )),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   } else {
//     return _buildContents2(context);
//   }
//   // return
//   // Container(
//   //   decoration: const BoxDecoration(
//   //       color: Color(0xFFF6F6F7),
//   //       borderRadius: BorderRadius.only(
//   //           topLeft: Radius.circular(20), topRight: Radius.circular(20))),

//   //   child: Column(
//   //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //     children: [

//   //       Padding(
//   //         padding: const EdgeInsets.only(top: 25.0),
//   //         child: Row(
//   //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //           children: [
//   //             Row(
//   //               children: const[
//   //                  Text(
//   //                   "     No Expenses!",
//   //                   style: TextStyle(fontWeight: FontWeight.bold),
//   //                 )
//   //               ],
//   //             ),
//   //           ],
//   //         ),
//   //       ),
//   //       Padding(
//   //         padding: const EdgeInsets.symmetric(vertical: 102.0),
//   //         child: Column(
//   //           children: [
//   //             Container(
//   //               child: Image.asset(
//   //                 "assets/images/expense.png",
//   //                 scale: 2,
//   //               ),
//   //             ),
//   //             RichText(
//   //                 textAlign: TextAlign.center,
//   //                 strutStyle: const StrutStyle(height: 1),
//   //                 text: const TextSpan(
//   //                     style: TextStyle(color: Colors.grey, fontSize: 12),
//   //                     children: <InlineSpan>[
//   //                       TextSpan(
//   //                           text: "It's Empty Here!",
//   //                           style:
//   //                               TextStyle(fontSize: 18, color: Colors.black)),
//   //                       TextSpan(
//   //                           text:
//   //                               "\n\nSubmit bills if you have spent\nbehalf of the company and get it reimbursed.\n\n")
//   //                     ])),
//   //             SizedBox(
//   //               width: 211,
//   //               height: 64,
//   //               child: ElevatedButton(
//   //                   style: ElevatedButton.styleFrom(
//   //                       shape: const StadiumBorder(),
//   //                       elevation: 17,
//   //                       backgroundColor: Colors.redAccent),
//   //                   onPressed: () {
//   //                     Navigator.of(context).push(MaterialPageRoute(
//   //                         builder: (context) => const CreateNewClaim()));
//   //                   },
//   //                   child: const Text(
//   //                     " +  Create New Claim",
//   //                     style: TextStyle(fontSize: 14),
//   //                   )),
//   //             )
//   //           ],
//   //         ),
//   //       ),
//   //     ],
//   //   ),
//   // );
// }

Map<String, double> dataMap = {
  "Submitted": 20,
  "Rejected": 20,
  "Approved": 30,
  "Draft": 10,
  "Closed": 10
};

// _buildContents2(BuildContext context) {
//   List<String> claimsList = [
//     "Trip expenses-Dinner 18 Feb\nINR 4,500",
//     "Team Outing With Design Team\nINR 20,000",
//     "Figma Subscription\nINR 10,000",
//     "Team Outing with Design Team\nINR 20,000"
//   ];
//   return Scaffold(
//     floatingActionButton: Padding(
//       padding: const EdgeInsets.only(bottom: 40.0),
//       child: Align(
//         alignment: Alignment.bottomCenter,
//         child: Container(
//           height: MediaQuery.of(context).size.height * 0.09,
//           width: MediaQuery.of(context).size.width * 0.35,
//           child: FloatingActionButton(
//             backgroundColor: Color(0xffee4961),
//             shape: StadiumBorder(),
//             child: Text("+ Create"),
//             onPressed: () {},
//           ),
//         ),
//       ),
//     ),
//     body: SingleChildScrollView(
//       child: Container(
//         decoration: const BoxDecoration(
//             color: Color(0xFFF6F6F7),
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 25.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "     8 Expenses",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 28.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: const [
//                         Icon(Icons.search),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Icon(Icons.filter_list)
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 42.0),
//               child: Column(
//                 children: [
//                   Text("Summary Of Claims"),
//                   Container(
//                     child: PieChart(
//                       dataMap: dataMap,
//                       chartRadius: 140,
//                       chartValuesOptions:
//                           ChartValuesOptions(showChartValues: false),
//                       legendOptions: LegendOptions(
//                           showLegendsInRow: true,
//                           legendPosition: LegendPosition.bottom),
//                     ),
//                   ),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.vertical,
//                     itemCount: claimsList.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         height: MediaQuery.of(context).size.height * 0.1,
//                         child: Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           margin: EdgeInsets.zero,
//                           elevation: 0,
//                           child: Container(
//                             height: MediaQuery.of(context).size.height * 0.14,
//                             margin: EdgeInsets.symmetric(
//                                 horizontal:
//                                     MediaQuery.of(context).size.width * 0.030,
//                                 vertical:
//                                     MediaQuery.of(context).size.height * 0.005),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       // color: Colors.green,
//                                       borderRadius: BorderRadius.circular(100)
//                                       //more than 50% of width makes circle
//                                       ),
//                                 ),
//                                 SizedBox(
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.45,
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         claimsList[index],
//                                         textAlign: TextAlign.left,
//                                         style: const TextStyle(
//                                             color:
//                                                 Color.fromRGBO(17, 20, 52, 1),
//                                             fontFamily: 'Plus Jakarta Sans',
//                                             fontSize: 14,
//                                             letterSpacing:
//                                                 0 /*percentages not used in flutter. defaulting to zero*/,
//                                             fontWeight: FontWeight.normal,
//                                             height: 1.7142857142857142),
//                                       ),
//                                       // FittedBox(
//                                       //   child: Padding(
//                                       //     padding: const EdgeInsets.all(8.0),
//                                       //     child: Text(
//                                       //       caselists[index].title,
//                                       //       style: TextStyle(
//                                       //           fontSize: 15,
//                                       //           fontWeight: FontWeight.bold),
//                                       //
//                                       //       //style: Theme.of(context).textTheme,
//                                       //     ),
//                                       //   ),
//                                       // ),
//                                       // const Text(
//                                       //   'SAP Success Factors, S4HANA',
//                                       //   textAlign: TextAlign.left,
//                                       //   style: TextStyle(
//                                       //       color: Color.fromRGBO(
//                                       //           125, 131, 139, 1),
//                                       //       fontFamily: 'Plus Jakarta Sans',
//                                       //       fontSize: 12,
//                                       //       letterSpacing:
//                                       //           0 /*percentages not used in flutter. defaulting to zero*/,
//                                       //       fontWeight: FontWeight.normal,
//                                       //       height: 1.3),
//                                       // ),

//                                       // Text(
//                                       //   claimsList[index],
//                                       //   textAlign: TextAlign.left,
//                                       //   style: const TextStyle(
//                                       //       color: Color.fromRGBO(
//                                       //           242, 122, 108, 1),
//                                       //       fontFamily: 'Plus Jakarta Sans',
//                                       //       fontSize: 11,
//                                       //       letterSpacing:
//                                       //           0 /*percentages not used in flutter. defaulting to zero*/,
//                                       //       fontWeight: FontWeight.normal,
//                                       //       height: 1.4),
//                                       // )
//                                       // RichText(text: TextSpan(
//                                       //   ch
//                                       // ))
//                                     ],
//                                   ),
//                                 ),
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   //crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     IconButton(
//                                         padding: EdgeInsets.zero,
//                                         icon: const Icon(
//                                           Icons.arrow_forward_ios,
//                                           color: Colors.grey,
//                                           size: 10,
//                                         ),
//                                         color: Color(0xFFD9D9D9),
//                                         onPressed: () {
//                                           // Navigator.push(
//                                           //     context,
//                                           //     MaterialPageRoute(
//                                           //         builder: (context) =>
//                                           //         route[index]
//                                           //       // DetailedCustomercase(
//                                           //       //     caselists[index])
//                                           //     ));
//                                         }),
//                                   ],
//                                 ),

//                                 // IconButton(
//                                 //     onPressed: () {
//                                 //       Navigator.push(
//                                 //           context,
//                                 //           MaterialPageRoute(
//                                 //               builder: (context) =>
//                                 //                   route[index]
//                                 //               // DetailedCustomercase(
//                                 //               //     caselists[index])
//                                 //               ));
//                                 //     },
//                                 //     icon: Icon(Icons.arrow_forward_ios))
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
