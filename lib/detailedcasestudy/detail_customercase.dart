// import 'package:flutter/material.dart';
// import 'package:expense/data/casestudy_list.dart';
// import 'package:expense/models/bookmarks.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class DetailedCustomercase extends StatefulWidget {
//   final Caselist caselist;
//   const DetailedCustomercase(this.caselist, {super.key});

//   @override
//   State<DetailedCustomercase> createState() => _DetailedCustomercaseState();
// }

// class _DetailedCustomercaseState extends State<DetailedCustomercase> {
//   List<String> bookmarksList = [];
//   //int _bookmark = 0;

//   bool _bookmarked = true;
//   void _bookmarksList() {
//     setState(() {
//       if (_bookmarked) {
//         _bookmarked = false;
//       } else {
//         _bookmarked = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // bookmarksList.isEmpty
//     //     ? const Center(
//     //         child: Text("No bookmarks"),
//     //       )
//     //     : ListView.builder(
//     //         itemBuilder: ((context, index) {
//     //           return Card(
//     //             child: Row(children: [
//     //               Expanded(
//     //                   child: Padding(
//     //                 padding: const EdgeInsets.all(20),
//     //                 child: Text(_bookmarksList),
//     //               )),
//     //               IconButton(
//     //                   onPressed: () {
//     //                     _bookmarksList;
//     //                     // setState(() {
//     //                     //   bookmarksList.remove(bookmarksList[index]);
//     //                     // });
//     //                   },
//     //                   icon: Icon(Icons.bookmark_add))
//     //             ]),
//     //           );
//     //         }),
//     //       );
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: const Text(
//           '',
//           style: TextStyle(color: Colors.black),
//         ),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             )),
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.share,
//               color: Colors.black,
//             ),
//           ),
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   if (!Caselist.checkBookmark(widget.caselist)) {
//                     Caselist.addBookmark(widget.caselist);
//                   }
//                 });
//                 _bookmarksList();
//               },
//               icon: (_bookmarked
//                   ? const Icon(
//                       Icons.bookmark_border,
//                       color: Colors.black,
//                     )
//                   : const Icon(
//                       Icons.bookmark,
//                       color: Colors.black,
//                     )))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//             child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   children: [
//                     ListTile(
//                       leading: Image.asset(caselists[0].imgUrl),
//                       title: Text(
//                         caselists[0].title,
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       subtitle: const Text("SAP Success Factors,S4 HANA\nKSA"),
//                     ),
//                     RichText(
//                         text: const TextSpan(
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontFamily: 'Plus Jakarta Sans'),
//                             children: <TextSpan>[
//                           TextSpan(
//                             text: "\n\nLargest Loan Provider in KSA",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                             text:
//                                 "\n\nBecoming an Intelligent Enterprise to Aid Compliance\nand Enhance Business Insights",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nSIDF was established in 1394 AH as a government\nfinancial institution to realize the objectives, policies,\nand programs of industrial development in Saudi\nArabia. Such objectives are aimed at supporting the\nprivate sector in various industrial fields, financing and\ndeveloping the industrial sector in conjunction with\ngovernment entities. SIDF paves the way for the\nprivate sector to engage in constituting and sustaining\na national industrial base effectively and adequately..\n\nThe Industrial Fund was set up to operate a vital role in promoting industrial investment opportunities, strengthening the local industry, and enhancing its performance. All these measures are realized by contributing to the formation of industrial sectors, boosting competitiveness, and sustaining strategic initiatives."),
//                           TextSpan(
//                             text: "\n\nBusiness Pain Points",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nAn on-premise accounting system that reached its capacity, where rapidly increasing transaction volume caused delays in processing.\nSlow and manually intense batch processing of donations, resulting in delayed disbursements to charities.\nExtended downtime during complex system upgrades, leading to protracted periods without releasing new features or functionality.\nPayroll batches that took multiple days to process.\nChallenges accessing the system, with multiple firewalls and four different password gateways."),
//                           TextSpan(
//                             text: "\n\nSolution",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nAn on-premise accounting system that reached its capacity, where rapidly increasing transaction volume caused delays in processing.\nSlow and manually intense batch processing of donations, resulting in delayed disbursements to charities.\nExtended downtime during complex system upgrades, leading to protracted periods without releasing new features or functionality.\nPayroll batches that took multiple days to process.\nChallenges accessing the system, with multiple firewalls and four different password gateways."),
//                           TextSpan(
//                             text: "\n\nHighlights",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nThe most critical part of this project is we provided\ncomplete custom solution. There were lot of\ncustomizations made in WRICEF. It Includes the\nfollowing:")
//                         ])),
//                     const SizedBox(height: 140)
//                   ],
//                 ))),
//       ),
//       floatingActionButton: Align(
//         alignment: Alignment.bottomRight,
//         child: FloatingActionButton(
//           backgroundColor: Colors.redAccent,
//           onPressed: () {
//             PopupMenuButton<Text>(
//                 itemBuilder: (context) => <PopupMenuEntry<Text>>[
//                       const PopupMenuItem<Text>(
//                         child: Text('W'),
//                       ),
//                     ]);

//             // PopupMenuButton(
//             //   onSelected: (value) {},
//             //   itemBuilder: (context) {
//             //     return const [
//             //       PopupMenuItem(
//             //         child: Text("Hello"),
//             //         value: 1,
//             //       ),
//             //       PopupMenuItem(child: Text("Hello1")),
//             //       PopupMenuItem(child: Text("Hello"))
//             //     ];
//             //   },
//             // );

//             // bool bookmarkedFlag = await getBookmarkedFlag();
//             // setBookmarkedFlag();

//             // if (bookmarkedFlag == true) {
//             //   Navigator.push(
//             //       context, MaterialPageRoute(builder: (context) => Bookmarks()));
//             // } else {
//             //   Navigator.of(context)
//             //       .push(MaterialPageRoute(builder: ((context) => AboutKaar())));
//             // }
//           },
//           child: const Icon(Icons.format_list_bulleted),
//         ),
//       ),
//     );
//   }
// }

// setBookmarkedFlag() async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   preferences.setBool("bookmarked", true);
// }

// getBookmarkedFlag() async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   bool bookmarked = preferences.getBool("bookmarked") ?? false;
//   return bookmarked;
// }
