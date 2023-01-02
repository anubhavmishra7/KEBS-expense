// import 'package:flutter/material.dart';
// import 'package:expense/data/casestudy_list.dart';
// import 'package:expense/detailedcasestudy/detailedcase2.dart';
// import 'package:expense/detailedcasestudy/detailedcase3.dart';
// import 'package:expense/detailedcasestudy/detailedcase4.dart';
// import 'package:expense/detailedcasestudy/detailedcase5.dart';
// import 'package:expense/detailedcasestudy/detail_customercase.dart';


// class CustomerCaseStudy extends StatefulWidget {
//   const CustomerCaseStudy({super.key});

//   @override
//   State<CustomerCaseStudy> createState() => _CustomerCaseStudyState();
// }

// class _CustomerCaseStudyState extends State<CustomerCaseStudy> {
//   // List<Widget> route = [
//   //   DetailedCustomercase(caselists[0]),
//   //   const DetailedCase2(),
//   //   const DetailedCase3(),
//   //   const DetailedCase4(),
//   //   const DetailedCase5()
//   //   // DetailedCustomercase(caselists[0]),
//   //   // DetailedCustomercase(caselists[0]),
//   //   // DetailedCustomercase(caselists[0]),
//   //   // DetailedCustomercase(caselists[0]),
//   //   //Statistics()
//   // ];
//   //final List<Caselist> caselists;
//   @override
//   Widget build(BuildContext context) {
//     //var caselists = Caselist.getBookmark();
//     return Scaffold(
//       // floatingActionButton: Padding(
//       //   padding: const EdgeInsets.all(6.0),
//       //   child: Container(
//       //     width: double.maxFinite,
//       //     //width: MediaQuery.of(context).size.width,
//       //     child: FloatingActionButton(
//       //         onPressed: () {},
//       //         child: Image.asset("assets/images/bottom1.png")),
//       //   ),
//       // ),
//       backgroundColor: const Color(0xFFEE4961),
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.arrow_back),
//             ),
//             title: Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 // IconButton(
//                 //     onPressed: () {
//                 //       Navigator.of(context).pop();
//                 //     },
//                 //     icon: Icon(Icons.arrow_back)),
//                 Text('Customer Case Study',
//                     style: TextStyle(
//                         color: Color.fromRGBO(255, 255, 255, 1),
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontSize: 14,
//                         letterSpacing:
//                             0 /*percentages not used in flutter. defaulting to zero*/,
//                         fontWeight: FontWeight.normal,
//                         height: 1.7142857142857142))
//               ],
//             ),
//             // bottom: PreferredSize(
//             //   preferredSize: const Size.fromHeight(20),
//             //   child: Container(
//             //     //color: Colors.yellow,
//             //     decoration: const BoxDecoration(
//             //         color: Colors.white,
//             //         borderRadius: BorderRadius.only(
//             //             topLeft: Radius.circular(20),
//             //             topRight: Radius.circular(20))),
//             //     width: double.maxFinite,
//             //     padding: const EdgeInsets.only(top: 5, bottom: 0),
//             //     child: Row(
//             //       mainAxisAlignment: MainAxisAlignment.start,
//             //       children: [
//             //         Text(
//             //           "     128 Case Studies",
//             //           style: TextStyle(fontWeight: FontWeight.bold),
//             //         ),
//             //         SizedBox(
//             //           width: 150,
//             //         ),
//             //         IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//             //         IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             backgroundColor: const Color(0xFFEE4961),
//             pinned: true,
//             expandedHeight: 50,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Stack(
//                 children: <Widget>[
//                   Container(
//                       //alignment: Alignment.center,
//                       width: double.infinity,
//                       //color: Colors.yellow,
//                       //width: MediaQuery.of(context).size.width,
//                       child: Image.asset(
//                         'assets/images/landing2.png',
//                         fit: BoxFit.fitWidth,
//                       )),
//                   Container(
//                       //alignment: Alignment.center,
//                       width: double.infinity,
//                       //color: Colors.yellow,
//                       //width: MediaQuery.of(context).size.width,
//                       child: Image.asset(
//                         'assets/images/landing3.png',
//                         fit: BoxFit.fitWidth,
//                       )),
//                   // Container(
//                   //     //alignment: Alignment.center,
//                   //     width: double.maxFinite,
//                   //     child: Image.asset(
//                   //       'assets/images/landing3.png',
//                   //       fit: BoxFit.fitWidth,
//                   //     )),

//                   // Positioned(
//                   //     //width: MediaQuery.of(context).size.width,
//                   //     child: Container(
//                   //   width: double.maxFinite,
//                   //   child: Image.asset(
//                   //     'assets/images/landing3.png',
//                   //     fit: BoxFit.fitWidth,
//                   //   ),
//                   // ))
//                 ],
//               ),
//             ),
//             // flexibleSpace: FlexibleSpaceBar(
//             //   // title: Text(
//             //   //   'Portfolio',
//             //   //   style: TextStyle(color: Colors.black),
//             //   // ),
//             //   background: Container(
//             //     color: const Color.fromARGB(175, 255, 82, 82),
//             //     child: Stack(
//             //       children: <Widget>[
//             //         Positioned(
//             //             left: 0,
//             //             child: Container(
//             //               //width: double.maxFinite,
//             //               child: Image.asset(
//             //                 'assets/images/landing2.png',
//             //                 // width: double.maxFinite,
//             //                 // height: double.maxFinite,
//             //               ),
//             //             )),
//             //         // Positioned(
//             //         //     child: Container(
//             //         //   // width: double.maxFinite,
//             //         //   child: Image.asset(
//             //         //     'assets/images/landing2.png',
//             //         //     width: double.maxFinite,
//             //         //     height: double.maxFinite,
//             //         //   ),
//             //         // )),
//             //         Positioned(
//             //             left: 165,
//             //             child: Container(
//             //               //width: double.maxFinite,
//             //               child: Image.asset(
//             //                 'assets/images/landing3.png',
//             //                 // width: double.maxFinite,
//             //                 // height: double.maxFinite,
//             //               ),
//             //             )),
//             //       ],
//             //     ),
//             //   ),
//             // ),
//           ),
//           SliverFillRemaining(
//             child: _buildContent(),
//           ),
//         ],
//       ),
//     );
//   }

//   final myProducts = List<String>.generate(14, (i) => 'Product $i');

//   Center _buildContent() {
//     return Center(
//         child: Container(
//             decoration: const BoxDecoration(
//                 color: Color(0xFFF6F6F7),
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20))),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 5.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           const Text(
//                             "     128 Case Studies",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           )
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.search),
//                           ),
//                           IconButton(
//                               onPressed: () {
//                                 showModalBottomSheet(
//                                     shape: const RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(20),
//                                             topRight: Radius.circular(20))),
//                                     context: context,
//                                     builder: (context) {
//                                       return Container(
//                                         padding: const EdgeInsets.only(top: 10),
//                                         height: 400,
//                                         child: Center(
//                                           child: Column(
//                                             children: [
//                                               Container(
//                                                 decoration: const BoxDecoration(
//                                                     color: Colors.grey,
//                                                     borderRadius:
//                                                         BorderRadius.all(
//                                                             Radius.circular(
//                                                                 20))),
//                                                 width: 100,
//                                                 height: 8,
//                                               ),
//                                               Container(
//                                                 alignment: Alignment.topLeft,
//                                                 padding: const EdgeInsets.symmetric(
//                                                     vertical: 25,
//                                                     horizontal: 25),
//                                                 child: Column(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   children: <Widget>[
//                                                     Container(
//                                                       alignment:
//                                                           Alignment.topLeft,
//                                                       child: const Text(
//                                                         "Range",
//                                                         textAlign:
//                                                             TextAlign.start,
//                                                         style: TextStyle(
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .bold),
//                                                       ),
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.symmetric(
//                                                               vertical: 22),
//                                                       child: Container(
//                                                         decoration: const BoxDecoration(
//                                                             color: Colors.grey,
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .all(Radius
//                                                                         .circular(
//                                                                             20))),
//                                                         height: 3,
//                                                         width: 370,
//                                                       ),
//                                                     ),
//                                                     Padding(
//                                                       padding: const EdgeInsets
//                                                               .symmetric(
//                                                           vertical: 8.0),
//                                                       child: Container(
//                                                         alignment:
//                                                             Alignment.topLeft,
//                                                         child: const Text(
//                                                           "Multi Select Chips",
//                                                           textAlign:
//                                                               TextAlign.start,
//                                                           style: TextStyle(
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .bold),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     Container(
//                                                       padding:
//                                                           const EdgeInsets.symmetric(
//                                                               vertical: 6),
//                                                       child: Column(
//                                                         children: [
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceBetween,
//                                                             children: [
//                                                               ElevatedButton(
//                                                                   style: ElevatedButton.styleFrom(
//                                                                       backgroundColor:
//                                                                           const Color(
//                                                                               0xFFEE4961)),
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: const Text(
//                                                                       "Option 1")),
//                                                               ElevatedButton(
//                                                                   style: ElevatedButton.styleFrom(
//                                                                       backgroundColor:
//                                                                           const Color(
//                                                                               0xFFEE4961)),
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: const Text(
//                                                                       "Option 2")),
//                                                               ElevatedButton(
//                                                                   style: ElevatedButton.styleFrom(
//                                                                       backgroundColor:
//                                                                           Colors
//                                                                               .blueGrey),
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: const Text(
//                                                                       "Option 3"))
//                                                             ],
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceBetween,
//                                                             children: [
//                                                               ElevatedButton(
//                                                                   style: ElevatedButton.styleFrom(
//                                                                       backgroundColor:
//                                                                           const Color(
//                                                                               0xFFEE4961)),
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: const Text(
//                                                                       "Option 4.1")),
//                                                               ElevatedButton(
//                                                                   style: ElevatedButton.styleFrom(
//                                                                       backgroundColor:
//                                                                           Colors
//                                                                               .grey),
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: const Text(
//                                                                       "Option 4.56")),
//                                                               ElevatedButton(
//                                                                   style: ElevatedButton.styleFrom(
//                                                                       backgroundColor:
//                                                                           Colors
//                                                                               .grey),
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: const Text(
//                                                                       "Option 5.6"))
//                                                             ],
//                                                           )
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     Container(
//                                                         alignment:
//                                                             Alignment.topLeft,
//                                                         child: const Text(
//                                                           "Radio Buttons",
//                                                           style: TextStyle(
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .bold),
//                                                         )),
//                                                     Container(
//                                                       alignment:
//                                                           Alignment.topLeft,
//                                                       child: Row(
//                                                         children: [
//                                                           Radio(
//                                                               value: 1,
//                                                               groupValue: 2,
//                                                               onChanged:
//                                                                   (value) {}),
//                                                           const Text(
//                                                             "Label One",
//                                                             style: TextStyle(
//                                                                 fontSize: 13),
//                                                           ),
//                                                           Radio(
//                                                               fillColor:
//                                                                   MaterialStateProperty
//                                                                       .all(const Color(
//                                                                           0xFFEE4961)),
//                                                               value: 2,
//                                                               groupValue: 2,
//                                                               onChanged:
//                                                                   (value) {}),
//                                                           const Text("Label Two"),
//                                                           Radio(
//                                                               value: 1,
//                                                               groupValue: 2,
//                                                               onChanged:
//                                                                   (value) {}),
//                                                           const Text("Label Three"),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                     Container(
//                                                       alignment:
//                                                           Alignment.topLeft,
//                                                       child: Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .spaceBetween,
//                                                         children: [
//                                                           Container(
//                                                             width: 270,
//                                                             child: ElevatedButton(
//                                                                 style: ElevatedButton.styleFrom(
//                                                                     backgroundColor:
//                                                                         const Color(
//                                                                             0xFFEE4961),
//                                                                     shape: const RoundedRectangleBorder(
//                                                                         borderRadius:
//                                                                             BorderRadius.all(Radius.circular(
//                                                                                 10))),
//                                                                     elevation:
//                                                                         20),
//                                                                 onPressed:
//                                                                     () {},
//                                                                 child: const Text(
//                                                                     "Show Results")),
//                                                           ),
//                                                           const Text("Clear")
//                                                         ],
//                                                       ),
//                                                     )

//                                                     // const Text('BottomSheet'),
//                                                     // ElevatedButton(
//                                                     //   child: const Text(
//                                                     //       'Close BottomSheet'),
//                                                     //   onPressed: () =>
//                                                     //       Navigator.pop(context),
//                                                     // ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     });
//                                 // showBottomSheet<void>(

//                                 //     context: context,
//                                 //     builder: ((BuildContext context) {
//                                 //       return Container(
//                                 //         height: 300,
//                                 //         color: Colors.amber,
//                                 //         child: Center(
//                                 //           child: Column(
//                                 //             mainAxisAlignment:
//                                 //                 MainAxisAlignment.center,
//                                 //             mainAxisSize: MainAxisSize.min,
//                                 //             children: <Widget>[
//                                 //               const Text('BottomSheet'),
//                                 //               ElevatedButton(
//                                 //                 child: const Text(
//                                 //                     'Close BottomSheet'),
//                                 //                 onPressed: () =>
//                                 //                     Navigator.pop(context),
//                                 //               ),
//                                 //             ],
//                                 //           ),
//                                 //         ),
//                                 //       );
//                                 //     }));
//                               },
//                               icon: const Icon(Icons.filter_list))
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                     flex: 1,
//                     child: ListView.builder(
//                         itemCount: 5,
//                         itemBuilder: ((context, index) {
//                           return GestureDetector(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Card(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8.0),
//                                 ),
//                                 margin: EdgeInsets.zero,
//                                 elevation: 0,
//                                 child: Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.14,
//                                   margin: EdgeInsets.symmetric(
//                                       horizontal:
//                                           MediaQuery.of(context).size.width *
//                                               0.030,
//                                       vertical:
//                                           MediaQuery.of(context).size.height *
//                                               0.005),
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                           decoration: BoxDecoration(
//                                               // color: Colors.green,
//                                               borderRadius:
//                                                   BorderRadius.circular(100)
//                                               //more than 50% of width makes circle
//                                               ),
//                                           // decoration: BoxDecoration(
//                                           //   image: DecorationImage(
//                                           //     image: AssetImage("assets/images/greencircle.png"),
//                                           //     fit: BoxFit.fill,
//                                           //   ),
//                                           // ),
//                                           child: CircleAvatar(
//                                             radius: 26,
//                                             backgroundColor: const Color(0xFFF6F6F7),
//                                             child: Padding(
//                                               padding: const EdgeInsets.all(
//                                                   8), // Border radius
//                                               child: ClipOval(
//                                                   child: Container(
//                                                       width: 50,
//                                                       height: 50,
//                                                       decoration: BoxDecoration(
//                                                         image: DecorationImage(
//                                                             image: AssetImage(
//                                                                 caselists[index]
//                                                                     .imgUrl),
//                                                             fit: BoxFit
//                                                                 .fitWidth),
//                                                       ))),
//                                             ),
//                                           )

//                                           //           Container(
//                                           //               width: 50,
//                                           //               height: 50,
//                                           //
//                                           //               decoration: BoxDecoration(
//                                           //           image : DecorationImage(
//                                           //           image: AssetImage(caselists[index].imgUrl),
//                                           //       fit: BoxFit.fitWidth
//                                           //   ),
//                                           // )
//                                           //
//                                           //           )
//                                           // Image.asset(
//                                           //   caselists[index].imgUrl,
//                                           //   width: MediaQuery.of(context).size.width *
//                                           //       0.25,
//                                           //     height: 50,
//                                           //     fit:BoxFit.fill
//                                           // ),
//                                           ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                                 0.65,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceAround,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 caselists[index].title,
//                                                 textAlign: TextAlign.left,
//                                                 style: const TextStyle(
//                                                     color: Color.fromRGBO(
//                                                         17, 20, 52, 1),
//                                                     fontFamily:
//                                                         'Plus Jakarta Sans',
//                                                     fontSize: 14,
//                                                     letterSpacing:
//                                                         0 /*percentages not used in flutter. defaulting to zero*/,
//                                                     fontWeight:
//                                                         FontWeight.normal,
//                                                     height: 1.7142857142857142),
//                                               ),
//                                               // FittedBox(
//                                               //   child: Padding(
//                                               //     padding: const EdgeInsets.all(8.0),
//                                               //     child: Text(
//                                               //       caselists[index].title,
//                                               //       style: TextStyle(
//                                               //           fontSize: 15,
//                                               //           fontWeight: FontWeight.bold),
//                                               //
//                                               //       //style: Theme.of(context).textTheme,
//                                               //     ),
//                                               //   ),
//                                               // ),
//                                               const Text(
//                                                 'SAP Success Factors, S4HANA',
//                                                 textAlign: TextAlign.left,
//                                                 style: TextStyle(
//                                                     color: Color.fromRGBO(
//                                                         125, 131, 139, 1),
//                                                     fontFamily:
//                                                         'Plus Jakarta Sans',
//                                                     fontSize: 12,
//                                                     letterSpacing:
//                                                         0 /*percentages not used in flutter. defaulting to zero*/,
//                                                     fontWeight:
//                                                         FontWeight.normal,
//                                                     height: 1.3333333333333333),
//                                               ),
//                                               // FittedBox(
//                                               //   child: Padding(
//                                               //     padding: const EdgeInsets.all(8.0),
//                                               //     child: Text(
//                                               //       'SAP Success Factors, S4HANA',
//                                               //       style: TextStyle(
//                                               //           fontSize: 15,
//                                               //           fontWeight: FontWeight.bold),
//                                               //
//                                               //       //style: Theme.of(context).textTheme,
//                                               //     ),
//                                               //   ),
//                                               // ),
//                                               Text(
//                                                 caselists[index].overview,
//                                                 textAlign: TextAlign.left,
//                                                 style: const TextStyle(
//                                                     color: Color.fromRGBO(
//                                                         242, 122, 108, 1),
//                                                     fontFamily:
//                                                         'Plus Jakarta Sans',
//                                                     fontSize: 11,
//                                                     letterSpacing:
//                                                         0 /*percentages not used in flutter. defaulting to zero*/,
//                                                     fontWeight:
//                                                         FontWeight.normal,
//                                                     height: 1.4545454545454546),
//                                               )
//                                               // RichText(text: TextSpan(
//                                               //   ch
//                                               // ))
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                       CircleAvatar(
//                                         backgroundColor:
//                                             const Color(0xFFF6F6F7),
//                                         radius: 18,
//                                         child: IconButton(
//                                             padding: EdgeInsets.zero,
//                                             icon: const Icon(
//                                               Icons.arrow_forward_ios,
//                                               color: Colors.grey,
//                                               size: 10,
//                                             ),
//                                             color: const Color(0xFFD9D9D9),
//                                             onPressed: () {
//                                               Navigator.push(
//                                                   context,
//                                                   MaterialPageRoute(
//                                                       builder: (context) =>
//                                                           route[index]
//                                                       // DetailedCustomercase(
//                                                       //     caselists[index])
//                                                       ));
//                                             }),
//                                       ),

//                                       // IconButton(
//                                       //     onPressed: () {
//                                       //       Navigator.push(
//                                       //           context,
//                                       //           MaterialPageRoute(
//                                       //               builder: (context) =>
//                                       //                   route[index]
//                                       //               // DetailedCustomercase(
//                                       //               //     caselists[index])
//                                       //               ));
//                                       //     },
//                                       //     icon: Icon(Icons.arrow_forward_ios))
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         }))

//                     // ListView(children: [
//                     //   Padding(
//                     //     padding: const EdgeInsets.all(16.0),
//                     //     child: SizedBox(
//                     //       height: 120,
//                     //       child: ListTile(
//                     //           //visualDensity: VisualDensity(vertical: 4),
//                     //           leading: Icon(Icons.circle_sharp),
//                     //           subtitle:
//                     //               Text('SAP Success Factors,S4HANA \n \nKSA'),
//                     //           tileColor: Colors.white,
//                     //           shape: RoundedRectangleBorder(
//                     //               borderRadius: BorderRadius.circular(20)),
//                     //           title: Text(
//                     //             "Saudi Industrial Development \n Fund",
//                     //             style: TextStyle(
//                     //                 fontWeight: FontWeight.bold,
//                     //                 fontFamily: "Plus Jakarta Sans",
//                     //                 fontSize: 14),
//                     //           ),
//                     //           trailing: IconButton(
//                     //             onPressed: () {
//                     //               Navigator.push(
//                     //                   context,
//                     //                   MaterialPageRoute(
//                     //                       builder: (context) =>
//                     //                           DetailedCustomercase(
//                     //                               caselists[1])));
//                     //               // Navigator.push(
//                     //               //     context,
//                     //               //     MaterialPageRoute(
//                     //               //         builder: (context) =>
//                     //               //              DetailedCustomercase(
//                     //               //               Caselist()
//                     //               //              )));
//                     //             },
//                     //             icon: Icon(Icons.arrow_forward_ios_outlined),
//                     //             color: Colors.red,
//                     //           )),
//                     //     ),
//                     //   ),
//                     //   SizedBox(
//                     //     height: 30,
//                     //   ),
//                     // ]),
//                     ),
//               ],
//             )
//             //         ListView(
//             //   children: [
//             //     Padding(
//             //       padding: const EdgeInsets.all(8.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: IconButton(
//             //               onPressed: () {
//             //                 Navigator.push(
//             //                     context,
//             //                     MaterialPageRoute(
//             //                         builder: (context) => DetailedCustomercase()));
//             //               },
//             //               icon: Icon(Icons.arrow_forward_ios_outlined),
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(16.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: Icon(
//             //               Icons.arrow_forward_ios_outlined,
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(16.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: Icon(
//             //               Icons.arrow_forward_ios_outlined,
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(16.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: Icon(
//             //               Icons.arrow_forward_ios_outlined,
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(16.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: Icon(
//             //               Icons.arrow_forward_ios_outlined,
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(16.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: Icon(
//             //               Icons.arrow_forward_ios_outlined,
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(16.0),
//             //       child: SizedBox(
//             //         height: 120,
//             //         child: ListTile(
//             //             //visualDensity: VisualDensity(vertical: 4),
//             //             leading: Icon(Icons.circle_sharp),
//             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
//             //             tileColor: Colors.white,
//             //             shape: RoundedRectangleBorder(
//             //                 borderRadius: BorderRadius.circular(20)),
//             //             title: Text(
//             //               "Saudi Industrial Development \n Fund",
//             //               style: TextStyle(
//             //                   fontWeight: FontWeight.bold,
//             //                   fontFamily: "Plus Jakarta Sans",
//             //                   fontSize: 14),
//             //             ),
//             //             trailing: Icon(
//             //               Icons.arrow_forward_ios_outlined,
//             //               color: Colors.red,
//             //             )),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       height: 10,
//             //     ),
//             //   ],
//             // )
//             // ListView.builder(
//             //   itemCount: myProducts.length,
//             //   itemBuilder: ((context, index) {
//             //     return Column(
//             //       children: const [
//             //         ListTile(
//             //           leading: Icon(Icons.circle_sharp),
//             //           title: Text('hehe'),
//             //         ),
//             //         Card(
//             //           child: Text('12'),
//             //         ),
//             //         Card(
//             //           child: Text('14'),
//             //         ),
//             //       ],
//             //     );
//             //   }),
//             // ),
//             ));
//   }
// }








// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:kcsm/data/casestudy_list.dart';
// // import 'package:kcsm/detailedcasestudy/detailedcase2.dart';
// // import 'package:kcsm/detailedcasestudy/detailedcase3.dart';
// // import 'package:kcsm/models/bookmarks.dart';
// // import 'package:kcsm/pages/about_kaar.dart';
// // import 'package:kcsm/detailedcasestudy/detail_customercase.dart';
// // import 'package:kcsm/pages/statistics.dart';
// // import 'package:kcsm/utilities/style.dart';

// // import '../detailedcasestudy/detailedcase4.dart';

// // class CustomerCaseStudy extends StatefulWidget {
// //   const CustomerCaseStudy({super.key});

// //   @override
// //   State<CustomerCaseStudy> createState() => _CustomerCaseStudyState();
// // }

// // class _CustomerCaseStudyState extends State<CustomerCaseStudy> {
// //   List<Widget> route = [
// //     DetailedCustomercase(caselists[0]),
// //     const DetailedCase2(),
// //     const DetailedCase3(),
// //     const DetailedCase4()
// //     //Statistics()
// //   ];
// //   //final List<Caselist> caselists;
// //   @override
// //   Widget build(BuildContext context) {
// //     //var caselists = Caselist.getBookmark();
// //     return Scaffold(
// //       // floatingActionButton: Padding(
// //       //   padding: const EdgeInsets.all(6.0),
// //       //   child: Container(
// //       //     width: double.maxFinite,
// //       //     //width: MediaQuery.of(context).size.width,
// //       //     child: FloatingActionButton(
// //       //         onPressed: () {},
// //       //         child: Image.asset("assets/images/bottom1.png")),
// //       //   ),
// //       // ),
// //       backgroundColor: Colors.redAccent,
// //       body: CustomScrollView(
// //         slivers: <Widget>[
// //           SliverAppBar(
// //             leading: IconButton(
// //               onPressed: () {
// //                 Navigator.pop(context);
// //               },
// //               icon: const Icon(Icons.arrow_back),
// //             ),
// //             title: Row(
// //               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: const [
// //                 // IconButton(
// //                 //     onPressed: () {
// //                 //       Navigator.of(context).pop();
// //                 //     },
// //                 //     icon: Icon(Icons.arrow_back)),
// //                 Text('Customer Case Study')
// //               ],
// //             ),
// //             // bottom: PreferredSize(
// //             //   preferredSize: const Size.fromHeight(20),
// //             //   child: Container(
// //             //     //color: Colors.yellow,
// //             //     decoration: const BoxDecoration(
// //             //         color: Colors.white,
// //             //         borderRadius: BorderRadius.only(
// //             //             topLeft: Radius.circular(20),
// //             //             topRight: Radius.circular(20))),
// //             //     width: double.maxFinite,
// //             //     padding: const EdgeInsets.only(top: 5, bottom: 0),
// //             //     child: Row(
// //             //       mainAxisAlignment: MainAxisAlignment.start,
// //             //       children: [
// //             //         Text(
// //             //           "     128 Case Studies",
// //             //           style: TextStyle(fontWeight: FontWeight.bold),
// //             //         ),
// //             //         SizedBox(
// //             //           width: 150,
// //             //         ),
// //             //         IconButton(onPressed: () {}, icon: Icon(Icons.search)),
// //             //         IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
// //             //       ],
// //             //     ),
// //             //   ),
// //             // ),
// //             backgroundColor: Colors.redAccent,
// //             pinned: true,
// //             expandedHeight: 100,
// //             flexibleSpace: FlexibleSpaceBar(
// //               background: Stack(
// //                 children: <Widget>[
// //                   Container(
// //                       //alignment: Alignment.center,
// //                       width: double.infinity,
// //                       //color: Colors.yellow,
// //                       //width: MediaQuery.of(context).size.width,
// //                       child: Image.asset(
// //                         'assets/images/landing2.png',
// //                         fit: BoxFit.fitWidth,
// //                       )),
// //                   Container(
// //                       //alignment: Alignment.center,
// //                       width: double.infinity,
// //                       //color: Colors.yellow,
// //                       //width: MediaQuery.of(context).size.width,
// //                       child: Image.asset(
// //                         'assets/images/landing3.png',
// //                         fit: BoxFit.fitWidth,
// //                       )),
// //                   // Container(
// //                   //     //alignment: Alignment.center,
// //                   //     width: double.maxFinite,
// //                   //     child: Image.asset(
// //                   //       'assets/images/landing3.png',
// //                   //       fit: BoxFit.fitWidth,
// //                   //     )),

// //                   // Positioned(
// //                   //     //width: MediaQuery.of(context).size.width,
// //                   //     child: Container(
// //                   //   width: double.maxFinite,
// //                   //   child: Image.asset(
// //                   //     'assets/images/landing3.png',
// //                   //     fit: BoxFit.fitWidth,
// //                   //   ),
// //                   // ))
// //                 ],
// //               ),
// //             ),
// //             // flexibleSpace: FlexibleSpaceBar(
// //             //   // title: Text(
// //             //   //   'Portfolio',
// //             //   //   style: TextStyle(color: Colors.black),
// //             //   // ),
// //             //   background: Container(
// //             //     color: const Color.fromARGB(175, 255, 82, 82),
// //             //     child: Stack(
// //             //       children: <Widget>[
// //             //         Positioned(
// //             //             left: 0,
// //             //             child: Container(
// //             //               //width: double.maxFinite,
// //             //               child: Image.asset(
// //             //                 'assets/images/landing2.png',
// //             //                 // width: double.maxFinite,
// //             //                 // height: double.maxFinite,
// //             //               ),
// //             //             )),
// //             //         // Positioned(
// //             //         //     child: Container(
// //             //         //   // width: double.maxFinite,
// //             //         //   child: Image.asset(
// //             //         //     'assets/images/landing2.png',
// //             //         //     width: double.maxFinite,
// //             //         //     height: double.maxFinite,
// //             //         //   ),
// //             //         // )),
// //             //         Positioned(
// //             //             left: 165,
// //             //             child: Container(
// //             //               //width: double.maxFinite,
// //             //               child: Image.asset(
// //             //                 'assets/images/landing3.png',
// //             //                 // width: double.maxFinite,
// //             //                 // height: double.maxFinite,
// //             //               ),
// //             //             )),
// //             //       ],
// //             //     ),
// //             //   ),
// //             // ),
// //           ),
// //           SliverFillRemaining(
// //             child: _buildContent(),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   final myProducts = List<String>.generate(14, (i) => 'Product $i');

// //   Center _buildContent() {
// //     return Center(
// //         child: Container(
// //             decoration: const BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.only(
// //                     topLeft: Radius.circular(20),
// //                     topRight: Radius.circular(20))),
// //             child: Column(
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.only(top: 5.0),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Row(
// //                         children: const [
// //                           Text(
// //                             "     128 Case Studies",
// //                             style: TextStyle(fontWeight: FontWeight.bold),
// //                           )
// //                         ],
// //                       ),
// //                       Row(
// //                         children: [
// //                           IconButton(
// //                             onPressed: () {},
// //                             icon: const Icon(Icons.search),
// //                           ),
// //                           IconButton(
// //                               onPressed: () {
// //                                 showBottomSheet<void>(
// //                                     context: context,
// //                                     builder: ((BuildContext context) {
// //                                       return Container(
// //                                         height: 300,
// //                                         color: Colors.amber,
// //                                         child: Center(
// //                                           child: Column(
// //                                             mainAxisAlignment:
// //                                                 MainAxisAlignment.center,
// //                                             mainAxisSize: MainAxisSize.min,
// //                                             children: <Widget>[
// //                                               const Text('BottomSheet'),
// //                                               ElevatedButton(
// //                                                 child: const Text(
// //                                                     'Close BottomSheet'),
// //                                                 onPressed: () =>
// //                                                     Navigator.pop(context),
// //                                               ),
// //                                             ],
// //                                           ),
// //                                         ),
// //                                       );
// //                                     }));
// //                                 // PopupMenuButton<Text>(
// //                                 //     itemBuilder: (context) =>
// //                                 //         <PopupMenuEntry<Text>>[
// //                                 //           const PopupMenuItem<Text>(
// //                                 //             child: Text('Working a lot harder'),
// //                                 //           ),
// //                                 //         ]);
// //                               },
// //                               icon: const Icon(Icons.filter_list))
// //                         ],
// //                       )
// //                     ],
// //                   ),
// //                 ),
// //                 Flexible(
// //                     flex: 1,
// //                     child: ListView.builder(
// //                         itemCount: 5,
// //                         itemBuilder: ((context, index) {
// //                           return GestureDetector(
// //                             child: Padding(
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 7.0),
// //                               child: Card(
// //                                 elevation: 10,
// //                                 child: Container(
// //                                   height:
// //                                       MediaQuery.of(context).size.height * 0.15,
// //                                   margin: EdgeInsets.symmetric(
// //                                       horizontal:
// //                                           MediaQuery.of(context).size.width *
// //                                               0.025,
// //                                       vertical:
// //                                           MediaQuery.of(context).size.height *
// //                                               0.012),
// //                                   child: Row(
// //                                     children: [
// //                                       Image.asset(
// //                                         caselists[index].imgUrl,
// //                                         width:
// //                                             MediaQuery.of(context).size.width *
// //                                                 0.25,
// //                                       ),
// //                                       SizedBox(
// //                                         width:
// //                                             MediaQuery.of(context).size.width *
// //                                                 0.5,
// //                                         child: Column(
// //                                           mainAxisAlignment:
// //                                               MainAxisAlignment.center,
// //                                           crossAxisAlignment:
// //                                               CrossAxisAlignment.start,
// //                                           children: [
// //                                             FittedBox(
// //                                               child: Text(
// //                                                 caselists[index].title,
// //                                                 style: const TextStyle(
// //                                                     fontSize: 15,
// //                                                     fontWeight:
// //                                                         FontWeight.bold),

// //                                                 //style: Theme.of(context).textTheme,
// //                                               ),
// //                                             ),
// //                                             const Text(
// //                                                 "SAP Success Factors,S4 HANA\nUK"),

// //                                             // RichText(text: TextSpan(
// //                                             //   ch
// //                                             // ))
// //                                           ],
// //                                         ),
// //                                       ),
// //                                       IconButton(
// //                                           onPressed: () {
// //                                             Navigator.push(
// //                                                 context,
// //                                                 MaterialPageRoute(
// //                                                     builder: (context) =>
// //                                                         route[index]
// //                                                     // DetailedCustomercase(
// //                                                     //     caselists[index])
// //                                                     ));
// //                                           },
// //                                           icon: const Icon(Icons.arrow_forward_ios))
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                           );
// //                         }))

// //                     // ListView(children: [
// //                     //   Padding(
// //                     //     padding: const EdgeInsets.all(16.0),
// //                     //     child: SizedBox(
// //                     //       height: 120,
// //                     //       child: ListTile(
// //                     //           //visualDensity: VisualDensity(vertical: 4),
// //                     //           leading: Icon(Icons.circle_sharp),
// //                     //           subtitle:
// //                     //               Text('SAP Success Factors,S4HANA \n \nKSA'),
// //                     //           tileColor: Colors.white,
// //                     //           shape: RoundedRectangleBorder(
// //                     //               borderRadius: BorderRadius.circular(20)),
// //                     //           title: Text(
// //                     //             "Saudi Industrial Development \n Fund",
// //                     //             style: TextStyle(
// //                     //                 fontWeight: FontWeight.bold,
// //                     //                 fontFamily: "Plus Jakarta Sans",
// //                     //                 fontSize: 14),
// //                     //           ),
// //                     //           trailing: IconButton(
// //                     //             onPressed: () {
// //                     //               Navigator.push(
// //                     //                   context,
// //                     //                   MaterialPageRoute(
// //                     //                       builder: (context) =>
// //                     //                           DetailedCustomercase(
// //                     //                               caselists[1])));
// //                     //               // Navigator.push(
// //                     //               //     context,
// //                     //               //     MaterialPageRoute(
// //                     //               //         builder: (context) =>
// //                     //               //              DetailedCustomercase(
// //                     //               //               Caselist()
// //                     //               //              )));
// //                     //             },
// //                     //             icon: Icon(Icons.arrow_forward_ios_outlined),
// //                     //             color: Colors.red,
// //                     //           )),
// //                     //     ),
// //                     //   ),
// //                     //   SizedBox(
// //                     //     height: 30,
// //                     //   ),
// //                     // ]),
// //                     )
// //               ],
// //             )
// //             //         ListView(
// //             //   children: [
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(8.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: IconButton(
// //             //               onPressed: () {
// //             //                 Navigator.push(
// //             //                     context,
// //             //                     MaterialPageRoute(
// //             //                         builder: (context) => DetailedCustomercase()));
// //             //               },
// //             //               icon: Icon(Icons.arrow_forward_ios_outlined),
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(16.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: Icon(
// //             //               Icons.arrow_forward_ios_outlined,
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(16.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: Icon(
// //             //               Icons.arrow_forward_ios_outlined,
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(16.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: Icon(
// //             //               Icons.arrow_forward_ios_outlined,
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(16.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: Icon(
// //             //               Icons.arrow_forward_ios_outlined,
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(16.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: Icon(
// //             //               Icons.arrow_forward_ios_outlined,
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //     Padding(
// //             //       padding: const EdgeInsets.all(16.0),
// //             //       child: SizedBox(
// //             //         height: 120,
// //             //         child: ListTile(
// //             //             //visualDensity: VisualDensity(vertical: 4),
// //             //             leading: Icon(Icons.circle_sharp),
// //             //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
// //             //             tileColor: Colors.white,
// //             //             shape: RoundedRectangleBorder(
// //             //                 borderRadius: BorderRadius.circular(20)),
// //             //             title: Text(
// //             //               "Saudi Industrial Development \n Fund",
// //             //               style: TextStyle(
// //             //                   fontWeight: FontWeight.bold,
// //             //                   fontFamily: "Plus Jakarta Sans",
// //             //                   fontSize: 14),
// //             //             ),
// //             //             trailing: Icon(
// //             //               Icons.arrow_forward_ios_outlined,
// //             //               color: Colors.red,
// //             //             )),
// //             //       ),
// //             //     ),
// //             //     SizedBox(
// //             //       height: 10,
// //             //     ),
// //             //   ],
// //             // )
// //             // ListView.builder(
// //             //   itemCount: myProducts.length,
// //             //   itemBuilder: ((context, index) {
// //             //     return Column(
// //             //       children: const [
// //             //         ListTile(
// //             //           leading: Icon(Icons.circle_sharp),
// //             //           title: Text('hehe'),
// //             //         ),
// //             //         Card(
// //             //           child: Text('12'),
// //             //         ),
// //             //         Card(
// //             //           child: Text('14'),
// //             //         ),
// //             //       ],
// //             //     );
// //             //   }),
// //             // ),
// //             ));
// //   }
// // }
