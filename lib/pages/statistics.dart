import 'package:flutter/material.dart';
import 'package:expense/utilities/style.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: FloatingActionButton(
      //       onPressed: () {}, child: Image.asset("assets/images/bottom3.png")),
      // ),
      backgroundColor: Colors.redAccent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                )),
            title: const Text("Customer Case Study",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7142857142857142)),
            backgroundColor: Colors.redAccent,
            expandedHeight: 50,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Stack(
                  children: <Widget>[
                    Container(
                        //alignment: Alignment.center,
                        width: double.infinity,
                        //color: Colors.yellow,
                        //width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/landing2.png',
                          fit: BoxFit.fitWidth,
                        )),
                    Container(
                        //alignment: Alignment.center,
                        width: double.infinity,
                        //color: Colors.yellow,
                        //width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/landing3.png',
                          fit: BoxFit.fitWidth,
                        )),

                    // Container(
                    //     //alignment: Alignment.center,
                    //     width: double.maxFinite,
                    //     child: Image.asset(
                    //       'assets/images/landing3.png',
                    //       fit: BoxFit.fitWidth,
                    //     )),

                    // Positioned(
                    //     //width: MediaQuery.of(context).size.width,
                    //     child: Container(
                    //   width: double.maxFinite,
                    //   child: Image.asset(
                    //     'assets/images/landing3.png',
                    //     fit: BoxFit.fitWidth,
                    //   ),
                    // ))
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContents(),
          )
        ],
      ),
    );
  }
}

Center _buildContents() {
  return Center(
      child: Container(
    decoration: const BoxDecoration(
        color: const Color(0xFFF6F6F7),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    "     Statistics",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                  ),
                  //IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                ],
              )
            ],
          ),
        ),
        Container(
            width: 392,
            height: 148,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 392,
                      height: 168,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ))),
              const Positioned(
                  top: 40,
                  left: 24,
                  child: Text(
                    '324',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 20, 52, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5),
                  )),
              const Positioned(
                  top: 40,
                  left: 232,
                  child: Text(
                    '324',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 20, 52, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5),
                  )),
              const Positioned(
                  top: 100,
                  left: 24,
                  child: Text(
                    '210',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 20, 52, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5),
                  )),
              const Positioned(
                  top: 100,
                  left: 232,
                  child: Text(
                    '210',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 20, 52, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5),
                  )),
              const Positioned(
                  top: 24,
                  left: 24,
                  child: Text(
                    'Total Projects',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 131, 139, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333),
                  )),
              const Positioned(
                  top: 24,
                  left: 232,
                  child: Text(
                    'S4HANA projects',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 131, 139, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333),
                  )),
              const Positioned(
                  top: 68,
                  left: 24,
                  child: Text(
                    'Greenfield implementations',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 131, 139, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333),
                  )),
              const Positioned(
                  top: 68,
                  left: 232,
                  child: Text(
                    'Success factor projects',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 131, 139, 1),
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 12,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333),
                  )),
            ])),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 392,
              height: 408,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 392,
                        height: 408,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(35),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ))),
                const Positioned(
                    top: 152,
                    left: 181,
                    child: Text(
                      '324',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(17, 20, 52, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    )),
                const Positioned(
                    top: 24,
                    left: 24,
                    child: Text(
                      'Industry wise projects',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(17, 20, 52, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333),
                    )),
                const Positioned(
                    top: 272,
                    left: 40,
                    child: Text(
                      'Agriculture & plantations (15)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(81, 89, 101, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333),
                    )),
                const Positioned(
                    top: 320,
                    left: 40,
                    child: Text(
                      'construction (60)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(81, 89, 101, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                    )),
                const Positioned(
                    top: 368,
                    left: 40,
                    child: Text(
                      'Oil & Petroleum (174)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(81, 89, 101, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                    )),
                const Positioned(
                    top: 296,
                    left: 40,
                    child: Text(
                      'chemical industries (15)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(81, 89, 101, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                    )),
                const Positioned(
                    top: 344,
                    left: 40,
                    child: Text(
                      'hospitality & Hotels (60)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(81, 89, 101, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                    )),
                Positioned(
                    top: 24,
                    left: 294,
                    child: Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            'This Year',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(125, 131, 139, 1),
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 12,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.3333333333333333),
                          ),
                          const SizedBox(width: 8),
                          //Mask holder Template
                          Container(width: 16, height: 16, child: null),
                        ],
                      ),
                    )),
                const Positioned(
                    top: 136,
                    left: 157,
                    child: Text(
                      'Total projects',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(125, 131, 139, 1),
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3333333333333333),
                    )),
                Positioned(
                    top: 64,
                    left: 104,
                    child: Container(
                        width: 184,
                        height: 184,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 184,
                                  height: 184,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(37, 201, 103, 1),
                                    border: Border.all(
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      width: 3,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.elliptical(184, 184)),
                                  ))),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 184,
                                  height: 184,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(238, 81, 136, 1),
                                    border: Border.all(
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      width: 3,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.elliptical(184, 184)),
                                  ))),
                        ]))),
                Positioned(
                    top: 324,
                    left: 24,
                    child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(247, 157, 28, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        ))),
                Positioned(
                    top: 276,
                    left: 24,
                    child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(37, 201, 103, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        ))),
                Positioned(
                    top: 372,
                    left: 24,
                    child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(238, 81, 136, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        ))),
                Positioned(
                    top: 300,
                    left: 24,
                    child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(169, 172, 255, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        ))),
                Positioned(
                    top: 348,
                    left: 24,
                    child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(76, 164, 253, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        ))),
              ])),
        )
        // Container(
        //   height: 100,
        //   width: 400,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(100))),
        //   child: Card(
        //     elevation: 10,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Column(
        //           children: [
        //             Text(
        //               '   SAP Dubai',
        //               style: kTitleStyle,
        //               textAlign: TextAlign.center,
        //             ),
        //             Text(
        //               '324',
        //               style: kTitleStyle,
        //               textAlign: TextAlign.center,
        //             ),
        //           ],
        //         ),
        //         Column(
        //           children: [
        //             Text(
        //               'SAP Dubai',
        //               style: kTitleStyle,
        //               textAlign: TextAlign.center,
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    ),
  ));
}















// import 'package:flutter/material.dart';
// import 'package:kcsm/utilities/style.dart';
// import 'package:pie_chart/pie_chart.dart';

// class Statistics extends StatelessWidget {
//   const Statistics({super.key});

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
//                 icon: const Icon(Icons.arrow_back)),
//             title: const Text("Customer Case Study"),
//             backgroundColor: Colors.redAccent,
//             expandedHeight: 100,
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
//             child: _buildContents(),
//           )
//         ],
//       ),
//     );
//   }
// }

// Map<String, double> dataMap = {
//   "Oil & Petroleum(174)": 174,
//   "Hospitality &Hotels(60)": 60,
//   "Construction(60)": 60,
//   "Agricultures & Plantations(15)": 15,
//   "Chemical Industries(15)": 15,
// };
// Map<String, double> dataMap1 = {
//   "Americas(15)": 174,
//   "Asia Pacific(15)": 60,
//   "Middle East/Africa(40)": 60,
//   "Europe(15)": 15,
//   "Others(15)": 15,
// };

// Center _buildContents() {
//   return Center(
//       child: SingleChildScrollView(
//     child: Container(
//       decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     const Text(
//                       "     Statistics",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.share),
//                     ),
//                     //IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Container(
//             height: 150,
//             width: double.maxFinite,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(100))),
//             child: Card(
//               elevation: 10,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Total Projects',
//                             style: kTextStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             '324',
//                             style: kTitleStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'S4HANA Projects',
//                             style: kTextStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             '324',
//                             style: kTitleStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Total Projects',
//                             style: kTextStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             '324',
//                             style: kTitleStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'S4HANA Projects',
//                             style: kTextStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             '324',
//                             style: kTitleStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 18.0),
//             // height: 150,
//             width: double.maxFinite,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(100))),
//             child: Card(
//               elevation: 10,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   const SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       const Text(
//                         "Industry Wise Projects",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       const Text("This Year"),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   PieChart(
//                     dataMap: dataMap,
//                     chartType: ChartType.ring,
//                     chartRadius: 140,
//                     chartLegendSpacing: 30,
//                     initialAngleInDegree: -90,
//                     centerText: "Total Projects\n324",
//                     chartValuesOptions: const ChartValuesOptions(
//                         showChartValues: false,
//                         chartValueStyle: defaultChartValueStyle),
//                     legendOptions: const LegendOptions(
//                         legendPosition: LegendPosition.bottom,
//                         showLegends: true),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 9.0),
//             // height: 150,
//             width: double.maxFinite,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(100))),
//             child: Card(
//               elevation: 10,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   const SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(
//                         "          Project Go Live Trend",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   PieChart(
//                     dataMap: dataMap1,
//                     chartType: ChartType.ring,
//                     chartRadius: 140,
//                     chartLegendSpacing: 30,
//                     initialAngleInDegree: -90,
//                     centerText: "Total Projects\n324",
//                     chartValuesOptions: const ChartValuesOptions(
//                         showChartValues: false,
//                         chartValueStyle: defaultChartValueStyle),
//                     legendOptions: const LegendOptions(
//                         legendPosition: LegendPosition.bottom,
//                         showLegends: true),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     ),
//   ));
// }
