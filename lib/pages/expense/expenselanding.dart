import 'package:expense/pages/expense/detailedexpense.dart';
import 'package:expense/pages/expense/filter_expense.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ExpenseLanding extends StatefulWidget {
  const ExpenseLanding({super.key});

  @override
  State<ExpenseLanding> createState() => _ExpenseLandingState();
}

// class Search {
//   String searched = "";
//   // Searched({required this.searched});
// }

class _ExpenseLandingState extends State<ExpenseLanding> {
  // String searched = "";
  Map<String, double> dataMap = {
    "Submitted (40)            ": 40,
    "Rejected (20)": 20,
    "Approved (20)             ": 30,
    "Draft (10)": 10,
    "Closed (10)": 10
  };
  List<String> claimsList = [
    "Trip expenses-Dinner 18 Feb\nINR 4,500",
    "Team Outing With Design Team\nINR 20,000",
    "Figma Subscription\nINR 10,000",
    "Team Outing with Design Team\nINR 20,000"
  ];

  List<String> dateList = [
    "18.02.2022",
    "12.02.2022",
    "26.01.2022",
    "12.01.2022",
  ];
  final costCenterList = [
    "KEBS India",
    "KEBS India(WH)",
    "KEBS Qatar",
    "KEBS Oman",
    "KEBS Bahrain",
    "KEBS Managed Services",
    "KEBS Managed Services"
  ];

  List<String> foundList = [];

  @override
  void initState() {
    foundList = claimsList;

    super.initState();
  }

  final searchcontroller = TextEditingController();
  String searched = "";

  void foundelement(String enteredText) {
    List<String> results = [];
    if (enteredText.isEmpty) {
      results = claimsList;
    } else {
      results = claimsList
          .where((element) =>
              element.toLowerCase().contains(enteredText.toLowerCase()))
          .toList();
    }

    setState(() {
      foundList = results;
    });
  }

  @override
  void dispose() {
    searchcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F6F7),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Expenses",
            style: TextStyle(fontSize: 15),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Visibility(
          visible: foundList.length == claimsList.length,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: SizedBox(
              // height: 64,
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.35,
              child: FloatingActionButton(
                backgroundColor: const Color(0xffee4961),
                shape: const StadiumBorder(),
                child: const Text("+ Create"),
                onPressed: () {},
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
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
                            color: Color(0xFFF6F6F7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ListTile(
                                title: Text("${foundList.length} expenses",
                                    // title: Text("$searched expenses",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                trailing: Wrap(spacing: 15, children: [
                                  Container(
                                    padding: EdgeInsets.zero,
                                    color: Colors.white,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 45,
                                    child: TextField(
                                      controller: searchcontroller,
                                      onChanged: (String value) {
                                        setState(() {
                                          searched = value;
                                        });

                                        foundelement(value);
                                      },
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          suffixIcon: foundList.isEmpty
                                              ? Visibility(
                                                  child: IconButton(
                                                      onPressed: () {
                                                        searchcontroller
                                                            .clear();
                                                      },
                                                      icon: (const Icon(
                                                        Icons.cancel,
                                                        color:
                                                            Color(0xffB9C0CA),
                                                      ))))
                                              : const Icon(
                                                  Icons.search,
                                                  color: Color(0xffB9C0CA),
                                                ),
                                          // kjs
                                          border: const OutlineInputBorder(),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black))),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ExpenseFilter()));
                                    },
                                    icon: Icon(Icons.filter_list),
                                    color: Colors.black,
                                  ),
                                ]),
                              ),
                              Container(
                                  child: foundList.isNotEmpty
                                      ? Column(
                                          children: [
                                            Visibility(
                                              visible: foundList.length ==
                                                  claimsList.length,
                                              child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 12.0,
                                                      horizontal: 16),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                            color:
                                                                Colors.white),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 24,
                                                        vertical: 24),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "Summary Of Claims",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      kfontFamily)),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        24),
                                                            child: PieChart(
                                                              colorList: const [
                                                                Color(
                                                                    0xffEE5188),
                                                                Color(
                                                                    0xff25C967),
                                                                Color(
                                                                    0xff70879E),
                                                                Color(
                                                                    0xffF69D1C),
                                                                Color(
                                                                    0xff4CA4FD),
                                                              ],
                                                              // centerText:
                                                              //     "Total Claims\n23",
                                                              chartType:
                                                                  ChartType
                                                                      .ring,
                                                              dataMap: dataMap,
                                                              chartRadius: 160,
                                                              chartValuesOptions:
                                                                  const ChartValuesOptions(
                                                                      showChartValues:
                                                                          false),
                                                              legendOptions: LegendOptions(
                                                                  legendTextStyle: TextStyle(
                                                                      fontFamily:
                                                                          kfontFamily,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                  showLegendsInRow:
                                                                      true,
                                                                  legendPosition:
                                                                      LegendPosition
                                                                          .bottom),
                                                            ),
                                                          ),
                                                        ]),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              child: ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                // scrollDirection: Axis.vertical,
                                                itemCount: foundList.length,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.17,
                                                      child: Card(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        // margin: EdgeInsets.zero,
                                                        elevation: 0,
                                                        child: Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.24,
                                                          margin: EdgeInsets.symmetric(
                                                              horizontal:
                                                                  MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.030,
                                                              vertical: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.010),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              // Container(
                                                              //     // decoration: BoxDecoration(
                                                              //     //     // color: Colors.green,
                                                              //     //     borderRadius: BorderRadius.circular(100)
                                                              //     //     //more than 50% of width makes circle
                                                              //     //     ),
                                                              //     ),
                                                              SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.65,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.65,
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          10.0),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        foundList[
                                                                            index],
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style: const TextStyle(
                                                                            color: Color.fromRGBO(
                                                                                17,
                                                                                20,
                                                                                52,
                                                                                1),
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            fontSize:
                                                                                14,
                                                                            letterSpacing:
                                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 2),
                                                                      ),
                                                                      Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              right:
                                                                                  22.0),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                12,
                                                                            children: <Widget>[
                                                                              const Icon(
                                                                                Icons.today,
                                                                                size: 16,
                                                                                color: Color(0xff8B95A5),
                                                                              ),
                                                                              Text(
                                                                                dateList[index],
                                                                                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xff8B95A5)),
                                                                              ),
                                                                              const Icon(
                                                                                Icons.corporate_fare,
                                                                                size: 16,
                                                                                color: Color(0xff8B95A5),
                                                                              ),
                                                                              Text(
                                                                                costCenterList[0],
                                                                                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xff8B95A5)),
                                                                              )
                                                                            ],
                                                                          )

                                                                          //child:
                                                                          //  Row(
                                                                          //   crossAxisAlignment:
                                                                          //       CrossAxisAlignment
                                                                          //           .start,
                                                                          //   mainAxisAlignment:
                                                                          //       MainAxisAlignment
                                                                          //           .spaceBetween,
                                                                          //   children: [

                                                                          //   ],
                                                                          // ),
                                                                          )
                                                                      // FittedBox(
                                                                      //   child: Padding(
                                                                      //     padding: const EdgeInsets.all(8.0),
                                                                      //     child: Text(
                                                                      //       caselists[index].title,
                                                                      //       style: TextStyle(
                                                                      //           fontSize: 15,
                                                                      //           fontWeight: FontWeight.bold),
                                                                      //
                                                                      //       //style: Theme.of(context).textTheme,
                                                                      //     ),
                                                                      //   ),
                                                                      // ),
                                                                      // const Text(
                                                                      //   'SAP Success Factors, S4HANA',
                                                                      //   textAlign: TextAlign.left,
                                                                      //   style: TextStyle(
                                                                      //       color: Color.fromRGBO(
                                                                      //           125, 131, 139, 1),
                                                                      //       fontFamily: 'Plus Jakarta Sans',
                                                                      //       fontSize: 12,
                                                                      //       letterSpacing:
                                                                      //           0 /*percentages not used in flutter. defaulting to zero*/,
                                                                      //       fontWeight: FontWeight.normal,
                                                                      //       height: 1.3),
                                                                      // ),

                                                                      // Text(
                                                                      //   claimsList[index],
                                                                      //   textAlign: TextAlign.left,
                                                                      //   style: const TextStyle(
                                                                      //       color: Color.fromRGBO(
                                                                      //           242, 122, 108, 1),
                                                                      //       fontFamily: 'Plus Jakarta Sans',
                                                                      //       fontSize: 11,
                                                                      //       letterSpacing:
                                                                      //           0 /*percentages not used in flutter. defaulting to zero*/,
                                                                      //       fontWeight: FontWeight.normal,
                                                                      //       height: 1.4),
                                                                      // )
                                                                      // RichText(text: TextSpan(
                                                                      //   ch
                                                                      // ))
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                //crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  CircleAvatar(
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0xFFF6F6F7),
                                                                    radius: 18,
                                                                    child: IconButton(
                                                                        padding: EdgeInsets.zero,
                                                                        icon: const Icon(
                                                                          Icons
                                                                              .arrow_forward_ios,
                                                                          color:
                                                                              Colors.grey,
                                                                          size:
                                                                              10,
                                                                        ),
                                                                        color: const Color(0xFFD9D9D9),
                                                                        onPressed: () {
                                                                          Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => const DetailedExpense()));
                                                                        }),
                                                                  ),
                                                                  // IconButton(
                                                                  //     padding: EdgeInsets.zero,
                                                                  //     icon: const Icon(
                                                                  //       Icons.arrow_forward_ios,
                                                                  //       color: Colors.grey,
                                                                  //       size: 10,
                                                                  //     ),
                                                                  //     color: Color(0xFFF6F6F7;),
                                                                  //     onPressed: () {
                                                                  //       Navigator.push(
                                                                  //           context,
                                                                  //           MaterialPageRoute(
                                                                  //               builder: (context) =>
                                                                  //                   DetailedExpense()));
                                                                  //       // Navigator.push(
                                                                  //       //     context,
                                                                  //       //     MaterialPageRoute(
                                                                  //       //         builder: (context) =>
                                                                  //       //         route[index]
                                                                  //       //       // DetailedCustomercase(
                                                                  //       //       //     caselists[index])
                                                                  //       //     ));
                                                                  //     }),
                                                                ],
                                                              ),

                                                              // IconButton(
                                                              //     onPressed: () {
                                                              //       Navigator.push(
                                                              //           context,
                                                              //           MaterialPageRoute(
                                                              //               builder: (context) =>
                                                              //                   route[index]
                                                              //               // DetailedCustomercase(
                                                              //               //     caselists[index])
                                                              //               ));
                                                              //     },
                                                              //     icon: Icon(Icons.arrow_forward_ios))
                                                            ],
                                                          ),
                                                        ),
                                                      ));
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      : buildNoResult(context)),
                              const SizedBox(
                                height: 70,
                              )
                            ],
                          ),
                        ))),
              ])),
              // Container(
              //   margin: EdgeInsets.zero,
              //   alignment: Alignment.bottomCenter,
              //   width: double.maxFinite,
              //   color: Colors.red,
              //   height: 10,
              // )
            ],
          ),
        ));
  }
}

buildNoResult(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 108.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/expenselanding.png",
            scale: 2.5,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Oops!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Plus Jakarta Sans"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "No results for '${_ExpenseLandingState().searched}' in Expenses.\nMaybe you forgot to add this claim.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff868686),
                fontSize: 12,
                fontFamily: "Plus Jakarta Sans"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: SizedBox(
              width: 211,
              height: 64,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      elevation: 20,
                      backgroundColor: const Color(0xffee4961)),
                  onPressed: () {
                    // Navigator.of(context)
                    //   ..pop()
                    //   ..pop();
                    // int count = 0;

                    // Navigator.popUntil(context, (route) {
                    //   return count++ == 2;
                    // });

                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const CreateNewClaim()));
                  },
                  child: const Text(
                    " +  Create New Claim",
                    style: TextStyle(fontSize: 14),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ExpenseLanding()));
                },
                child: const Text(
                  "Or, Go back to Expenses",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                )),
          )
        ],
      ),
    ),
  );
}

// import 'package:expense/pages/detailedexpense.dart';
// import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';

// class ExpenseLanding extends StatefulWidget {
//   const ExpenseLanding({super.key});

//   @override
//   State<ExpenseLanding> createState() => _ExpenseLandingState();
// }

// class _ExpenseLandingState extends State<ExpenseLanding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // floatingActionButton: Container(
//       //   width: MediaQuery.of(context).size.width,
//       //   child: FloatingActionButton(
//       //       onPressed: () {}, child: Image.asset("assets/images/bottom3.png")),
//       // ),
//       backgroundColor: Colors.redAccent,
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             leading: IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(
//                   Icons.arrow_back,
//                 )),
//             title: const Text("Expenses",
//                 style: TextStyle(
//                     color: Color.fromRGBO(255, 255, 255, 1),
//                     fontFamily: 'Plus Jakarta Sans',
//                     fontSize: 14,
//                     letterSpacing:
//                         0 /*percentages not used in flutter. defaulting to zero*/,
//                     fontWeight: FontWeight.normal,
//                     height: 1.7142857142857142)),
//             backgroundColor: Colors.redAccent,
//             expandedHeight: 50,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               background: SafeArea(
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                         //alignment: Alignment.center,
//                         width: double.infinity,
//                         //color: Colors.yellow,
//                         //width: MediaQuery.of(context).size.width,
//                         child: Image.asset(
//                           'assets/images/landing2.png',
//                           fit: BoxFit.fitWidth,
//                         )),
//                     Container(
//                         //alignment: Alignment.center,
//                         width: double.infinity,
//                         //color: Colors.yellow,
//                         //width: MediaQuery.of(context).size.width,
//                         child: Image.asset(
//                           'assets/images/landing3.png',
//                           fit: BoxFit.fitWidth,
//                         )),

//                     // Container(
//                     //     //alignment: Alignment.center,
//                     //     width: double.maxFinite,
//                     //     child: Image.asset(
//                     //       'assets/images/landing3.png',
//                     //       fit: BoxFit.fitWidth,
//                     //     )),

//                     // Positioned(
//                     //     //width: MediaQuery.of(context).size.width,
//                     //     child: Container(
//                     //   width: double.maxFinite,
//                     //   child: Image.asset(
//                     //     'assets/images/landing3.png',
//                     //     fit: BoxFit.fitWidth,
//                     //   ),
//                     // ))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: _buildContents2(context),
//           )
//         ],
//       ),
//     );
//   }
// }

// Map<String, double> dataMap = {
//   "Submitted": 20,
//   "Rejected": 20,
//   "Approved": 30,
//   "Draft": 10,
//   "Closed": 10
// };

// _buildContents2(BuildContext context) {
//   List<String> claimsList = [
//     "Trip expenses-Dinner 18 Feb\nINR 4,500",
//     "Team Outing With Design Team\nINR 20,000",
//     "Figma Subscription\nINR 10,000",
//     "Team Outing with Design Team\nINR 20,000"
//   ];
//   return Scaffold(
//     backgroundColor: const Color(0xffee4961),
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
//                     padding: const EdgeInsets.only(right: 18.0),
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
//               padding:
//                   const EdgeInsets.symmetric(vertical: 42.0, horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Summary Of Claims",
//                   ),
//                   Container(
//                     child: PieChart(
//                       dataMap: dataMap,
//                       chartRadius: 160,
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
//                         height: MediaQuery.of(context).size.height * 0.15,
//                         child: Card(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           margin: EdgeInsets.zero,
//                           elevation: 0,
//                           child: Container(
//                             height: MediaQuery.of(context).size.height * 0.24,
//                             margin: EdgeInsets.symmetric(
//                                 horizontal:
//                                     MediaQuery.of(context).size.width * 0.030,
//                                 vertical:
//                                     MediaQuery.of(context).size.height * 0.010),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Container(
//                                     // decoration: BoxDecoration(
//                                     //     // color: Colors.green,
//                                     //     borderRadius: BorderRadius.circular(100)
//                                     //     //more than 50% of width makes circle
//                                     //     ),
//                                     ),
//                                 SizedBox(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.65,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.65,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           claimsList[index],
//                                           textAlign: TextAlign.left,
//                                           style: const TextStyle(
//                                               color:
//                                                   Color.fromRGBO(17, 20, 52, 1),
//                                               fontFamily: 'Plus Jakarta Sans',
//                                               fontSize: 14,
//                                               letterSpacing:
//                                                   0 /*percentages not used in flutter. defaulting to zero*/,
//                                               fontWeight: FontWeight.normal,
//                                               height: 2),
//                                         ),
//                                         // FittedBox(
//                                         //   child: Padding(
//                                         //     padding: const EdgeInsets.all(8.0),
//                                         //     child: Text(
//                                         //       caselists[index].title,
//                                         //       style: TextStyle(
//                                         //           fontSize: 15,
//                                         //           fontWeight: FontWeight.bold),
//                                         //
//                                         //       //style: Theme.of(context).textTheme,
//                                         //     ),
//                                         //   ),
//                                         // ),
//                                         // const Text(
//                                         //   'SAP Success Factors, S4HANA',
//                                         //   textAlign: TextAlign.left,
//                                         //   style: TextStyle(
//                                         //       color: Color.fromRGBO(
//                                         //           125, 131, 139, 1),
//                                         //       fontFamily: 'Plus Jakarta Sans',
//                                         //       fontSize: 12,
//                                         //       letterSpacing:
//                                         //           0 /*percentages not used in flutter. defaulting to zero*/,
//                                         //       fontWeight: FontWeight.normal,
//                                         //       height: 1.3),
//                                         // ),

//                                         // Text(
//                                         //   claimsList[index],
//                                         //   textAlign: TextAlign.left,
//                                         //   style: const TextStyle(
//                                         //       color: Color.fromRGBO(
//                                         //           242, 122, 108, 1),
//                                         //       fontFamily: 'Plus Jakarta Sans',
//                                         //       fontSize: 11,
//                                         //       letterSpacing:
//                                         //           0 /*percentages not used in flutter. defaulting to zero*/,
//                                         //       fontWeight: FontWeight.normal,
//                                         //       height: 1.4),
//                                         // )
//                                         // RichText(text: TextSpan(
//                                         //   ch
//                                         // ))
//                                       ],
//                                     ),
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
//                                           Navigator.push(
//                                               context,
//                                               MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       DetailedExpense()));
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
